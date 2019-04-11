using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccountingSoftware.BLL;


namespace AccountingSoftware.Master
{
    public partial class StudentMaster : System.Web.UI.Page
    {
        static DBSite site = null;
        Util_BLL util = new Util_BLL();
        static bool edit_mode = false;
        static bool isErr = false;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                site = new DBSite();  
               util.FillClass(site, ddlPresentClass);

               SectionMasterBll secBll = new SectionMasterBll();
               List<SectionMasterBll.SectionMasterEntity> secList = secBll.GetSectionList(site, Util_BLL.User.UserId);
               

               foreach (SectionMasterBll.SectionMasterEntity sec in secList)
               {
                   ddlSection.Items.Add(new ListItem(sec.SectionName, sec.SectionMasterId.ToString()));
               }



            }

        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!IsValidForm())
            {
                ClearSuccessMessage();
                return;
            }
            SaveStudent();
            if (edit_mode)
                GetStudents();
            if(!isErr)           
                Clear();
        }


        public bool IsDuplicateCardNo(DBSite site, string cardNo, int studentId)
        {
            StudentBll sBll = new StudentBll();
            if (sBll.IsDuplicateCard(site, cardNo, studentId ))
            {
                lblError.Visible = true;
                lblError.Text = "Id Card No '" + cardNo + "' already exists in our System.";
                txtIdCardNo.Focus();

                return true;
            }
            return false;
        }


        protected bool IsValidForm()
        {

            string errMsg = " Please Enter ";
            int length = errMsg.Length;

            bool isErr = false;



            if (!util.IsValidName(txtStudentName.Text))
            {
                if (errMsg.Length > length)
                    errMsg += ", " + Environment.NewLine;
                errMsg += "Valid Student Name";
                isErr = true;
            }




           
           

            lblError.Text = errMsg;
            lblError.Visible = isErr;

            return !isErr;

        }




        protected void SaveStudent()
        {
            StudentBll st_bll = null;

            st_bll = new StudentBll();
            StudentBll.StudenEntity student = new StudentBll.StudenEntity();

            try
            {

                site = new DBSite();
                site.BeginTrans();
        
                student.StudentName  = txtStudentName.Text ;
                student.AdmNo = txtAdmNo.Text;
                student.PresentClass = util.CheckNullInt(ddlPresentClass.SelectedValue);

                student.SectionId = util.CheckNullInt(ddlSection.SelectedValue);

                student.IdCardNo = txtIdCardNo.Text;
                student.FatherName = txtFatherName.Text;
                student.MotherName = txtMotherName.Text;

                student.MobileNoF = txtMobileNoF.Text;
                student.MobileNoM = txtMobileNoM.Text;
                student.DOB = txtDOB.Text;

                if (txtMobileNoF.Text.Length != 10)
                {
                    lblError.Text = "Mobile Number should be of 10 digits";
                    lblError.Visible = true;
                    txtMobileNoF.Focus();
                    ClearSuccessMessage();
                    return;
                }
                


                student.Email = txtDOB.Text;

                
                string message = "";


                
                
                if (this.lblStudentMasterId.Text == "New")
                {
                   

                    //if (IsDuplicateCardNo(site, student.IdCardNo, -1))
                    //{
                    //    txtIdCardNo.Focus();
                    //    isErr = true;
                       
                    //    return;
                    //}

                    st_bll.SaveStudent(site, student);
                    message = " Successfully Added !";
                    
                }
                else
                {
                    student.StudentMasterId = util.CheckNullInt(lblStudentMasterId.Text);

                    //if (IsDuplicateCardNo(site, student.IdCardNo, student.StudentMasterId))
                    //{
                    //    txtIdCardNo.Focus();
                    //    isErr = true;
                    //    return;
                    //}
                    
                    st_bll.UpdateStudent(site, student);
                    message = " Successfully Updated !";
                }

                site.Commit();
                lblMessage.Text = message;
                lblMessage.Visible = true;
                isErr = false;
                ClearErrorMessage();
            }
            catch (Exception ex)
            {
                site.RollBack();
                util.HandleExpception(ex, Response);
                
            }
            finally
            {
                site.Close();
            }
        
        
        }


        protected void btnGet_Click(object sender, EventArgs e)
        {
            
            GetStudents();
            ClearAll();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            site = new DBSite();
            StudentBll stBll = new StudentBll();

            List<string> student_id_list = new List<string>();
            try
            {
                foreach (GridViewRow gr in gridView1.Rows)
                {
                    CheckBox cb = (CheckBox)gr.Cells[0].FindControl("myCheckBox");
                    if (cb.Checked)
                    {
                        //if (stBll.IsStudentPresentInAttendance(site, util.CheckNullInt(gr.Cells[2].Text)))
                        //{
                        //    lblError.Text = "Can't Delete Record:'" + gr.Cells[4].Text + "' This Student is being entered in Attendance Entry.";
                        //    lblError.Visible = true;
                        //    ClearSuccessMessage();
                        //    return;
                        //}

                        student_id_list.Add(gr.Cells[3].Text);
                    }
                }


                if (student_id_list.Count < 1)
                {
                    lblError.Text = "Can't Delete Records. Select at least one Record  ";
                    lblError.Visible = true;
                    ClearSuccessMessage();
                    return;
                }

                string st_ids = util.ConvertListToCommaSeparatedString(student_id_list);


                site.BeginTrans();
                stBll.DeleteStudent(site, st_ids);
                site.Commit();

                lblMessage.Text = " [ " + student_id_list.Count + "] Record Deleted ";
                lblMessage.Visible = true;
                ClearErrorMessage();
            }
            catch (Exception del_exception)
            {
                site.RollBack();
                util.HandleExpception(del_exception, Response);
            }
            finally
            {
                site.Close();
            }
            GetStudents();
        }


        protected void btnChangeClass_Click(object sender, EventArgs e)
        {
            site = new DBSite();
            StudentBll stBll = new StudentBll();
            List<string> student_id_list = new List<string>();

            


            foreach (GridViewRow gr in gridView1.Rows)
            {
                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("myCheckBox");
                if (cb.Checked)
                {
                    //if (stBll.IsStudentPresentInAttendance(site, util.CheckNullInt(gr.Cells[2].Text)))
                    //{
                    //    lblError.Text = "Can't Delete Record:'" + gr.Cells[4].Text + "' This Student is being entered in Attendance Entry.";
                    //    lblError.Visible = true;
                    //    ClearSuccessMessage();
                    //    return;
                    //}

                    student_id_list.Add(gr.Cells[3].Text);
                }
            }


            if (student_id_list.Count < 1)
            {
                lblError.Text = "Can't Delete Records. Select at least one Record  ";
                lblError.Visible = true;
                ClearSuccessMessage();
                return;
            }

            string st_ids = util.ConvertListToCommaSeparatedString(student_id_list);

            if (util.CheckNullInt(ddlPresentClass.SelectedValue )!=0)
                stBll.changeClass(site, util.CheckNullInt(ddlPresentClass.SelectedValue), st_ids);
            
        }
        


        protected void btnSearch_Click(object sender, EventArgs e)
        {

            site = new DBSite();
            StudentBll stBll = new StudentBll();
           
            // 777
            List<StudentBll.StudenEntity> students = stBll.SearchStudents(site, txtSearch.Text );
           // total_records = students.Count;
            gridView1.DataSource = students;
            gridView1.DataBind();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearAll();
           
        }

        protected void ClearAll()
        {
            Clear();
            lblMessage.Text = string.Empty;
            lblMessage.Visible = false;

            lblError.Visible = false;
            lblError.Text = string.Empty;
        }

        protected void btnSendSMS_Click(object sender, EventArgs e)
        {
           
        }

        protected void gridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            ClearAll();
            edit_mode = true;
            GridViewRow row = gridView1.SelectedRow;
            lblStudentMasterId.Text = row.Cells[3].Text;
            
            StudentBll sBll = new StudentBll();

            site = new DBSite();

            try
            {
                //StudentBll.StudenEntity st = sBll.GetStudents(site, util.CheckNullInt(lblStudentMasterId.Text))[0];
                StudentBll.StudenEntity st = sBll.GetStudents(site, lblStudentMasterId.Text)[0];

                txtStudentName.Text = st.StudentName;
                txtAdmNo.Text = st.AdmNo;
                ddlPresentClass.SelectedValue = util.CheckNull(st.PresentClass);
                txtIdCardNo.Text = st.IdCardNo;
                txtMotherName.Text = st.MotherName;
                txtFatherName.Text = st.FatherName;
                txtMobileNoF.Text = st.MobileNoF;
                txtMobileNoM.Text = st.MobileNoM;
                txtDOB.Text = st.DOB;
                
             }
            catch (Exception exception)
            {
                util.HandleExpception(exception, Response);
               // throw;
            }
            finally
            {
                site.Close();
            }


        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridView1.PageIndex = e.NewPageIndex;
            gridView1.DataBind();

            GetStudents();
      
        }


        protected void ClearSuccessMessage()
        {
            lblMessage.Text = string.Empty;
            lblMessage.Visible = false;
        }

        protected void ClearErrorMessage()
        {
            lblError.Visible = false;
            lblError.Text = string.Empty;
        }


        protected void Clear()
        {


            lblStudentMasterId.Text = "New";
            this.txtStudentName.Text  = String.Empty;
            this.txtIdCardNo.Text  = String.Empty;
            this.txtMotherName.Text = String.Empty;
            this.txtFatherName.Text = String.Empty;
            this.txtMobileNoF.Text = String.Empty;
            this.txtMobileNoM.Text = String.Empty;
            this.txtDOB.Text = String.Empty;
            

        }


        private void GetStudents()
        {
            site = new DBSite();
            StudentBll stBll = new StudentBll();

            string classIDs = ddlPresentClass.SelectedValue;

            

            //try
            {
               // List<StudentBll.StudenEntity>  students = stBll.GetStudents(site);
                List<StudentBll.StudenEntity> students = stBll.GetStudentsByClass(site, "", classIDs);
                //total_records = students.Count;
                gridView1.DataSource = students;
                gridView1.DataBind();
            }
            //catch (Exception exception)
            //{
            //    util.HandleExpception(exception, Response);
            //}
            //finally
            //{
            //    site.Close();
            //}

        }

    }
}
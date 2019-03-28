using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using AccountingSoftware.BLL;

namespace AccountingSoftware.Master
{
    public partial class ExamMarks : System.Web.UI.Page
    {

        DBSite site = null;
        Util_BLL util = new Util_BLL();
        static bool edit_mode = false;
        static int total_records = 0;
        int isNewExamMarksEntry = 1;
        bool isUpdate = false; 

        protected void Page_Load(object sender, EventArgs e)
        {

            int trnID = util.CheckNullInt(Request.QueryString["new"]);
            isNewExamMarksEntry = trnID;
            isUpdate = isNewExamMarksEntry != 1;

            // change back gound color
            if (isUpdate)
                form1.Attributes.Add("style", "background-color:lightBlue;");
            else
            {
                form1.Attributes.Add("style", "background-color:lightGrey;");
                
            }

            btnDelete.Visible = isUpdate;

            if (!IsPostBack)
            {
                Clear();

                site = new DBSite();

                ClassMasterBLL cBll = new ClassMasterBLL();
                List<ClassMasterBLL.ClassMasterEntity> clasList = cBll.GetClassListBySubUser(site, Util_BLL.User.UserId, "", true );
                //ddlClass.Items.Add(new ListItem("All", "0"));

                foreach (ClassMasterBLL.ClassMasterEntity cls in clasList)
                {
                    ddlClass.Items.Add(new ListItem(cls.ClassName, cls.ClassMasterId.ToString()));



                }

                SectionMasterBll secBll = new SectionMasterBll();
                List<SectionMasterBll.SectionMasterEntity> secList = secBll.GetSectionList(site, Util_BLL.User.UserId);
                ddlSection.Items.Add(new ListItem("All", "0"));

                foreach (SectionMasterBll.SectionMasterEntity sec in secList)
                {
                    ddlSection.Items.Add(new ListItem(sec.SectionName, sec.SectionMasterId.ToString()));
                }

                
                ExamMasterBll exBll = new ExamMasterBll();
                List<ExamMasterBll.ExamMasterEntity> examList = exBll.GetExamList(site, Util_BLL.User.UserId);
                ddlExam.Items.Add(new ListItem("All", "0"));

                foreach (ExamMasterBll.ExamMasterEntity exam in examList)
                {
                    ddlExam.Items.Add(new ListItem(exam.ExamCode  + " (MM." + exam.MaxMarks + ")" , exam.ExamMasterId.ToString()));
                }

                //gridView3.DataSource = examList;
                //gridView3.DataBind();
                


                SubjectMasterBLL subBll = new SubjectMasterBLL();
                List<SubjectMasterBLL.SubjectMasterEntity> subList = subBll.GetSubjectsBySubUser(site, Util_BLL.User.UserId, "", true  );
                ddlSubject.Items.Add(new ListItem("All", "0"));
                foreach (SubjectMasterBLL.SubjectMasterEntity subject in subList)
                {
                    ddlSubject.Items.Add(new ListItem(subject.SubjectName + " (" + subject.SubjectGroupType  + ")", subject.SubjectMasterId.ToString()));
                }
                
                // 7777
                //gridView2.DataSource = subList;
                //gridView2.DataBind();
                

                if (!isUpdate)
                    legendExamMarks.InnerText = "Enter New Exam Marks";
                else
                    legendExamMarks.InnerText = "Edit Exam Marks";
                   

            }
            
            
             
            
        }


        protected void Clear()
        {
        }


        protected bool IsValidForm()
        {

            string errMsg = " Please Enter ";
            int length = errMsg.Length;

            bool isErr = false;

           if (!isUpdate && ddlExam.SelectedIndex == 0)
            {
                if (errMsg.Length > length)
                    errMsg += ", " + Environment.NewLine;
                errMsg += " Valid Exam ";
                isErr = true;
            }

           if (!isUpdate && ddlSubject.SelectedIndex == 0)
           {
               if (errMsg.Length > length)
                   errMsg += ", " + Environment.NewLine;
               errMsg += " Valid Subject ";
               isErr = true;
           }

                        
            
            lblError.Text = errMsg;
            lblError.Visible = isErr;

            return !isErr;

        }



        protected void ClearErrorMessage()
        {
            lblError.Visible = false;
            lblError.Text = string.Empty;
        }
        protected void ClearSuccessMessage()
        {
            lblMessage.Text = string.Empty;
            lblMessage.Visible = false;
        }


        

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // validate
            // check if new save then exam Name is not 0

            if (!IsValidForm())
            {
                ClearSuccessMessage();
                return;
            }


            SaveExamMarks();
        }

        protected void SaveExamMarks()
        {

            ExamMarksBll emBll = new ExamMarksBll();
            site = new DBSite();
                      
            List<ExamMarksBll.ExamMarksEntity> marksList = new List<ExamMarksBll.ExamMarksEntity>();

            ExamMarksBll.ExamMarksEntity mark;
            
            decimal MaxMarksByExam = 0;
            ExamMasterBll exbLL = new ExamMasterBll();

            SubjectMasterBLL sBll = new SubjectMasterBLL();


            string subjectGrpType = "MARKS";


            if (!isUpdate)
            {

                MaxMarksByExam = exbLL.GetExamMaxMarks(site, ddlExam.SelectedValue);
                subjectGrpType = sBll.GetSubjectGroupType(site, ddlSubject.SelectedValue);
            }
          
            
            foreach (GridViewRow gr in gridView1.Rows)
            {
                mark = new ExamMarksBll.ExamMarksEntity();

                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("ckbPresent");
                if (cb.Checked)
                {
                    
                    mark.IsPresent = 1;
                }
                else
                {
                    mark.IsPresent = 0;
                }

                
                mark.StudentMasterId = util.CheckNullInt(gr.Cells[2].Text);
                TextBox txt = (TextBox)gr.Cells[9].FindControl("txtMarksObtained");

                mark.StudentName = util.CheckNull(gr.Cells[3].Text);

                // if new then check for subject type -grade or marks
                if (!isUpdate)
                {
                    if (subjectGrpType.ToUpper() == "MARKS")
                    {
                        if (!util.isDecimal(txt.Text))
                        {
                            lblError.Text = " Marks Obtained By '" + mark.StudentName + "' is not valid decimal.";
                            lblError.Visible = true;
                            return;
                        }
                    }
                    else // grade 
                    {
                        //if (util.isDecimal(txt.Text))
                        //{
                        //    lblError.Text = " Marks Obtained By '" + mark.StudentName + "' is not valid Grade.";
                        //    lblError.Visible = true;
                        //    return;
                        //}
                    }
                }
                else // update
                {
                    subjectGrpType = util.CheckNull(gr.Cells[11].Text);
                    if (subjectGrpType.ToUpper() == "MARKS")
                    {
                        if (!util.isDecimal(txt.Text))
                        {
                            lblError.Text = " Marks Obtained By '" + mark.StudentName + "' is not valid decimal.";
                            lblError.Visible = true;
                            return;
                        }
                    }
                    else
                    {
                        //if (util.isDecimal(txt.Text))
                        //{
                        //    lblError.Text = " Marks Obtained By '" + mark.StudentName + "' is not valid Grade.";
                        //    lblError.Visible = true;
                        //    return;
                        //}
                    }
                }


                if (util.isDecimal(txt.Text))
                {
                    if (isUpdate)
                        MaxMarksByExam = util.CheckNullDecimal(gr.Cells[10].Text);

                    decimal marksObtained = util.CheckNullDecimal(txt.Text);
                    if (marksObtained <= MaxMarksByExam)
                    {
                        mark.MarksObtained = util.CheckNull(marksObtained);
                    }
                    else
                    {
                        lblError.Text = " Marks Obtained By '" + mark.StudentName + "' Can Not Be More Than Max Marks ( " + MaxMarksByExam + " ) ";
                        lblError.Visible = true;
                        return;
                    }
                }
                else
                {
                    mark.MarksObtained = util.CheckNull(txt.Text);
                }
                
                
                mark.classId = util.CheckNullInt(gridView1.DataKeys[gr.RowIndex].Values["classId"]);
                mark.SectionId = util.CheckNullInt(gridView1.DataKeys[gr.RowIndex].Values["SectionId"]);

                
                if (isUpdate)
                {
                    mark.SubjectId = util.CheckNullInt(gridView1.DataKeys[gr.RowIndex].Values["SubjectId"]);
                    mark.ExamId = util.CheckNullInt(gridView1.DataKeys[gr.RowIndex].Values["ExamId"]);
                }
                else
                {
                    mark.SubjectId = util.CheckNullInt(ddlSubject.SelectedValue);
                    mark.ExamId = util.CheckNullInt(ddlExam.SelectedValue);
                }

                mark.ExamMarksId = util.CheckNullInt(gridView1.DataKeys[gr.RowIndex].Values["ExamMarksId"]);

                mark.SubUserID = Util_BLL.SubUser.SubuserId;
                mark.UserID = Util_BLL.User.UserId;
                mark.FYear = Util_BLL.User.fYear;

                marksList.Add(mark);
            }
           
           
            emBll.SaveMarks(site, marksList, isUpdate, false);


            string msg = "  Successfully Added ! ";
            if (isUpdate)
                msg = "  Successfully Updated ! ";

            lblMessage.Text = msg;
            lblMessage.Visible = true;
            ClearErrorMessage();
        
        }
        



        protected void btnGet_Click(object sender, EventArgs e)
        {

            GetMarks();
            ClearAll();
        }


        protected void ClearAll()
        {
            Clear();
            lblError.Visible = false;
            lblError.Text = string.Empty;
            lblMessage.Text = string.Empty;
            lblMessage.Visible = false;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            ExamMarksBll exmBll = new ExamMarksBll();

            site = new DBSite();

            List<string> Ids = new List<string>();

            foreach (GridViewRow gr in gridView1.Rows)
            {

                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("ckbPresent");
                if (cb.Checked)
                {

                    Ids.Add(gr.Cells[12].Text);
                }
            }

            if (Ids.Count < 1)
            {
                lblError.Text = "Can't Delete Records [ Select at least one Record ] ";
                lblError.Visible = true;
                //ClearSuccessMessage();
                return;
            }

            string cls_ids = util.ConvertListToCommaSeparatedString(Ids);

            // check if the exam exits in examMarks table


            site.BeginTrans();

            exmBll.DeleteExam(site, cls_ids);
            site.Commit();

            lblMessage.Text = " [ " + Ids.Count + "] Record Deleted ";
            lblMessage.Visible = true;
            ClearErrorMessage();

            GetMarks();
            ClearAll();

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {


        }

        protected void gridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void gridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
        }

        protected void gridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            //header select all function
            if (e.Row.RowType == DataControlRowType.Header)
            {
                ((CheckBox)e.Row.FindControl("allchk")).Attributes.Add("onclick",
                    "javascript:SelectAllGrid2('" +
                    ((CheckBox)e.Row.FindControl("allchk")).ClientID + "')");
            }

        }


        protected void gridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void gridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
        }

        protected void gridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            //header select all function
            if (e.Row.RowType == DataControlRowType.Header)
            {
                ((CheckBox)e.Row.FindControl("allchk")).Attributes.Add("onclick",
                    "javascript:SelectAllGrid3('" +
                    ((CheckBox)e.Row.FindControl("allchk")).ClientID + "')");
            }

        }

        //protected void btnPdf_Click(object sender, EventArgs e)
        //{
        //    site = new DBSite();
        //    ExamMarksBll eBll = new ExamMarksBll();
        //     CreateReportCard(site, eBll);
            
            
        //}


        public void CreateReportCard(DBSite site, ExamMarksBll eBll)
        {
            foreach (GridViewRow gr in gridView1.Rows)
            {
                
                int StudentMasterId = util.CheckNullInt(gr.Cells[2].Text);
                int clasId = util.CheckNullInt(gridView1.DataKeys[gr.RowIndex].Values["classId"]);
                int sectionId = util.CheckNullInt(gridView1.DataKeys[gr.RowIndex].Values["SectionId"]);
                string studentName = util.CheckNull(gr.Cells[3].Text);
                string ClassName = util.CheckNull(gr.Cells[4].Text);
                string SectionName = util.CheckNull(gr.Cells[5].Text);

                DataTable dt = eBll.GetResultDT(site, StudentMasterId, clasId, sectionId );
                string fileName = studentName + "_" + ClassName + "_"+ SectionName   +".pdf";
                string pth = Server.MapPath("~/ReportCard/" + fileName);
                string yr = Util_BLL.User.fYear + "-" + (util.CheckNullInt(Util_BLL.User.fYear) + 1);


                util.ExportToPdf(dt, pth, studentName, ClassName, SectionName, yr);

            }

            

        }




        protected void gridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridView1.PageIndex = e.NewPageIndex;
            gridView1.DataBind();

            
        }

        
        


        private void GetMarks()
        {
            site = new DBSite();
            
            ExamMarksBll eBll = new ExamMarksBll();
            
            try
            {
                int studentId = -1;
                if (txtSearch.Text.Length > 0)
                    studentId = int.Parse (txtSearch.Text);


                List<ExamMarksBll.ExamMarksEntity> marksList = eBll.GetExamMarks(site, int.Parse(ddlClass.SelectedValue), int.Parse(ddlSection.SelectedValue), int.Parse(ddlExam.SelectedValue), ddlSubject.SelectedValue.ToString(), studentId, isNewExamMarksEntry);
                total_records = marksList.Count;
                gridView1.DataSource = marksList;
                gridView1.DataBind();
            }
            catch (Exception exception)
            {
                util.HandleExpception(exception, Response);
            }
            finally
            {
                site.Close();
            }

        }




    }
}
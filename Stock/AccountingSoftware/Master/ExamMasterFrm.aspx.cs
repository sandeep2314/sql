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
    public partial class ExamMasterFrm : System.Web.UI.Page
    {
        DBSite site = null;
        static bool edit_mode = false;
        Util_BLL util = new Util_BLL();

        ExamMasterBll exmBll = null;
        static int total_records = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Clear();

                //txtExamName.ReadOnly = true;

                site = new DBSite();

                ClassMasterBLL cBll = new ClassMasterBLL();
                List<ClassMasterBLL.ClassMasterEntity> clasList = cBll.GetClassListBySubUser(site, Util_BLL.User.UserId, "", true);

                ddlClass.Items.Add(new ListItem("All", "0"));

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

                TermMasterBLL termBll = new TermMasterBLL();
                List<TermMasterBLL.TermMasterEntity> termList = termBll.GetTermList(site, Util_BLL.User.UserId);
                ddlTerm.Items.Add(new ListItem("", "0"));

                foreach (TermMasterBLL.TermMasterEntity trm in termList)
                {
                    ddlTerm.Items.Add(new ListItem(trm.TermName, trm.TermMasterId.ToString()));
                }

                ddlFormula.Items.Add(new ListItem("Yes", "1"));
                ddlFormula.Items.Add(new ListItem("No", "0"));
            }
                
            
        }

     protected void Clear()
        {
            lblExamMasterId.Text = "New";

            txtExamName.Text = string.Empty;
            txtExamCode.Text = string.Empty;
            //txtExamDate.Text = string.Empty;
            txtMaxMarks.Text = string.Empty;
            txtPassMarks.Text = string.Empty;
            ddlTerm.SelectedIndex = 0;
            ddlClass.SelectedIndex = 0;
            ddlSection.SelectedIndex = 0;
            
            //legend.InnerText = "Exam Master";
        }




        protected void ClearAll()
        {

            Clear();
            lblError.Visible = false;
            lblError.Text = string.Empty;
            lblMessage.Text = string.Empty;
            lblMessage.Visible = false;
        }


        void SaveExam()
        {
            exmBll = new ExamMasterBll();
            ExamMasterBll.ExamMasterEntity exam = new ExamMasterBll.ExamMasterEntity();

            try
            {
                string message = "";

                exam.ExamName = this.txtExamName.Text;
                exam.ExamCode = this.txtExamCode.Text;
                exam.ExamDate = util.CheckNullDate(DateTime.Today);
                exam.ClassMasterID = util.CheckNullInt(ddlClass.SelectedValue);
                exam.SectionMasterID = util.CheckNullInt(ddlSection.SelectedValue);
                exam.TermId = util.CheckNullInt(ddlTerm.SelectedValue);
                exam.MaxMarks = util.CheckNullInt(txtMaxMarks.Text);
                exam.PassMarks = util.CheckNullInt(txtPassMarks.Text);
                exam.ExamOrder = util.CheckNullInt(txtExamOrder.Text);

                site = new DBSite();



                // save or updare


                site.BeginTrans();

                if (lblExamMasterId.Text == "New")
                {
                    exmBll.SaveExam(site, exam);
                    message = "\t '" + exam.ExamName + "' Successfully Added !";

                }
                else
                {

                    exam.ExamMasterId = util.CheckNullInt(lblExamMasterId.Text);
                    exmBll.UpdateExam(site, exam);
                    message = "\t '" + exam.ExamName + "' Successfully Updated !";
                }

                site.Commit();

                lblMessage.Text = message;
                lblMessage.Visible = true;
                ClearErrorMessage();
            }
            catch (Exception ex)
            {
                site.RollBack();
                if (ex.Message.Contains("UNQ_ExamName"))
                {
                    lblMessage.Text = "\t '" + exam.ExamName + "' is already present !";
                    lblMessage.Visible = true;

                }
                else
                 util.HandleExpception(ex, Response);
            }
            finally
            {
                site.Close();
            }
        }
         
       
        protected void btnGet_Click(object sender, EventArgs e)
        {
            GetExams();
        }

        private void GetExams()
        {
            exmBll = new ExamMasterBll();
            site = new DBSite();

            try
            {
                List<ExamMasterBll.ExamMasterEntity> examList = exmBll.GetExamList(site, Util_BLL.User.UserId);
                total_records = examList.Count;
                gridView1.DataSource = examList;
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

        protected void ClearErrorMessage()
        {
            Clear();
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveExam();



            if (edit_mode)
            {
                GetExams();
                Clear();
            }
        }

       

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            ExamMasterBll exBll = new ExamMasterBll();

            site = new DBSite();

            List<string> Ids = new List<string>();

            foreach (GridViewRow gr in gridView1.Rows)
            {

                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("myCheckBox");
                if (cb.Checked)
                {

                    Ids.Add(gr.Cells[3].Text);
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

            String exam_Name = exBll.IsExamPresentInExamMarksTable(site, cls_ids);


            if (exam_Name.Length > 1)
            {
                lblMessage.Text = " [ '" + exam_Name + "'] Can not be Deleted. As it is present in Exam Marks.";
            
            }
            else
            {

                site.BeginTrans();

                exBll.DeleteExam(site, cls_ids);

                site.Commit();
                lblMessage.Text = " [ " + Ids.Count + "] Record Deleted ";
            
            }
            lblMessage.Visible = true;
            ClearErrorMessage();
            GetExams();


        }


       


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            lblMessage.Text = String.Empty;
            Clear();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
        }

        protected void gridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClearAll();
            edit_mode = true;
            site = new DBSite();
            GridViewRow row = gridView1.SelectedRow;
            lblExamMasterId.Text = row.Cells[3].Text;

            SubjectMasterBLL sBll = new SubjectMasterBLL();

            ExamMasterBll exBll = new ExamMasterBll();
            ExamMasterBll.ExamMasterEntity exam = exBll.GetExamList(site, Util_BLL.User.UserId, lblExamMasterId.Text)[0];

            lblExamMasterId.Text = util.CheckNull(exam.ExamMasterId);
            txtExamName.Text = exam.ExamName;
            txtExamCode.Text = exam.ExamCode;
            ///txtExamDate.Text = exam.ExamDate;
            txtMaxMarks.Text = util.CheckNull(exam.MaxMarks);
            txtPassMarks.Text = util.CheckNull(exam.PassMarks);
            
            ddlClass.SelectedValue = util.CheckNull(exam.ClassMasterID);
            ddlSection.SelectedValue = util.CheckNull(exam.SectionMasterID);
            ddlTerm.SelectedValue = util.CheckNull(exam.TermId);
            
        }

        protected void gridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridView1.PageIndex = e.NewPageIndex;
            gridView1.DataBind();
        }
    }
}
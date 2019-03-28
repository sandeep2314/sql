using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccountingSoftware.BLL;

namespace AccountingSoftware.Master
{
    public partial class ReportCardOakWood : System.Web.UI.Page
    {
        DBSite site = null;
        Util_BLL util = new Util_BLL();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                site = new DBSite();
                ClassMasterBLL cBll = new ClassMasterBLL();
                List<ClassMasterBLL.ClassMasterEntity> clasList = cBll.GetClassListBySubUser(site, Util_BLL.User.UserId, "", true);
                //ddlClass.Items.Add(new ListItem("All", "0"));

                foreach (ClassMasterBLL.ClassMasterEntity cls in clasList)
                {
                    ddlClass.Items.Add(new ListItem(cls.ClassName, cls.ClassMasterId.ToString()));
                }
            }

            string  clsID = Request.QueryString["whichClass"];

            // Junior Section Nursery, LKG, UKG
            if (clsID == "G_1")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\GuruNanakRDLJ.rdlc";

            }
            else if (clsID == "G_9")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\ReportCardOakWoodReport.rdlc";
                
            }
            else if (clsID == "G_11")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\GuruNanakRDL.rdlc";
                

            }
            
            // LitteleAngels Nur-UKG
            if (clsID == "LA_0") 
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\LittleAngelsN.rdlc";
            }
            else if (clsID == "LA_1")  
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\LittleAngels15.rdlc";
            }
            else if (clsID == "LA_9")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\LittleAngels9.rdlc";
            }
            else if (clsID == "LA_11")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\LittleAngles11.rdlc";
            }


            if (clsID == "BPS_0")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\ReportCard_BPS_Term1_Report.rdlc";
            }

            if (clsID == "OK_0")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\OakWoodReport.rdlc";
            }
            else if (clsID == "OK_N")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\OakWoodReportN.rdlc";
            }
            else if (clsID == "DPS_N")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\DPSReportN.rdlc";
            }
            
            else if (clsID == "DPS_15")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\DPSReport15.rdlc";
            }
            else if (clsID == "DPS_57")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\DPSReport57.rdlc";
            }
            
            
            
        }

        protected void GetStudentId()
        {
            string sId;

            sId = ddlStudent.SelectedValue;
            txtStudentId.Text = sId;
        }


        protected void Student_Changed(object sender, EventArgs e)
        {
            GetStudentId();
            GetReportCard();
        }


        protected void GetStudentsByClass()
        {
            ddlStudent.Items.Clear();

            site = new DBSite();
            StudentBll stBLL = new StudentBll();
            List<StudentBll.StudenEntity> studentList = stBLL.GetStudentsByClass(site, "", ddlClass.SelectedValue);
            foreach (StudentBll.StudenEntity st in studentList)
            {
                ddlStudent.Items.Add(new ListItem(st.StudentName, st.StudentMasterId.ToString()));
            }

        }

        protected void Class_Changed(object sender, EventArgs e)
        {
            GetStudentsByClass();
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {

            GetReportCard();
        }


        

        protected void GetReportCard()
        {
            Util_BLL util = new Util_BLL();

            lblError.Text = string.Empty;
            lblError.Visible = false;
            
        //    rvReportCardCBSE.LocalReport.ReportEmbeddedResource = MapPath(rdl);

            rvReportCardCBSE.LocalReport.Refresh();

            
        }


    }
}
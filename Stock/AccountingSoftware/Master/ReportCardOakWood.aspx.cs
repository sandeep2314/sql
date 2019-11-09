using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

using Microsoft.Reporting.WebForms;


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
            
            
            //  Scholar Home Haldwani
            // Junior Section Nursery, LKG, UKG
            if (clsID == "SH_1")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\GuruNanakRDLJ.rdlc";

            }
            else if (clsID == "SH_9")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\ReportCardOakWoodReport.rdlc";

            }
            else if (clsID == "SH_11")
            {
                rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\ScholarRDL_HY_11.rdlc";


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

            //GetReportCard();


            for (int i = 0; i < 4; i++)
                showReport("Report" + i + ".pdf", i);
        

        }


        

        protected void GetReportCard()
        {
            Util_BLL util = new Util_BLL();

            lblError.Text = string.Empty;
            lblError.Visible = false;
            
        //    rvReportCardCBSE.LocalReport.ReportEmbeddedResource = MapPath(rdl);

            rvReportCardCBSE.LocalReport.Refresh();

            
        }



        protected void showReport(string fileName, int count)
        {
            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;
            DataTable dt1 = new DataTable();

            rvReportCardCBSE.LocalReport.Refresh();
            rvReportCardCBSE.Reset();
            rvReportCardCBSE.LocalReport.EnableExternalImages = true;
            this.rvReportCardCBSE.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
           
            BPSBll Bps = new BPSBll();
            List<BPSBll.ReportCardCBSEEntity> rc = Bps.GetReportCardCBSE_BPS(49143);
            ReportDataSource rds2 = new ReportDataSource("ScholasticDataSet", rc);
            rvReportCardCBSE.LocalReport.DataSources.Add(rds2);

            List<BPSBll.ReportCardCBSEEntity> rc_coScholastic = Bps.GetReportCardCBSE_CoScholastic_BPS(49143);
            ReportDataSource rds3 = new ReportDataSource("CoScholasticDataSet", rc_coScholastic);
            rvReportCardCBSE.LocalReport.DataSources.Add(rds3);

            List<BPSBll.ReportCardCBSEEntity> rc_Discipline = Bps.GetReportCardCBSE_Discipline_BPS(49143);
            ReportDataSource rds_d = new ReportDataSource("DisciplineDataSet", rc_Discipline);
            rvReportCardCBSE.LocalReport.DataSources.Add(rds_d);

            List<BPSBll.ReportCardCBSEEntity> rc_physical = Bps.GetReportCardCBSE_Physical_BPS(49143);
            ReportDataSource rds_p = new ReportDataSource("PhysicalDataSet", rc_physical);
            rvReportCardCBSE.LocalReport.DataSources.Add(rds_p);

            List<BPSBll.ReportCardCBSEEntity> rc_remarks = Bps.GetReportCardCBSE_Remarks_BPS(49143);
            ReportDataSource rds_remarks = new ReportDataSource("RemarksDataSet", rc_remarks);
            rvReportCardCBSE.LocalReport.DataSources.Add(rds_remarks);

            UserBLL usr = new UserBLL();
            List<UserBLL.User> ur = usr.GetUsers();
            ReportDataSource rds_u = new ReportDataSource("UserDataSet", ur);
            rvReportCardCBSE.LocalReport.DataSources.Add(rds_u);
            
            rvReportCardCBSE.LocalReport.ReportPath = "RDLC\\ScholarRDL_HY_11.rdlc";
            
            byte[] bytes = rvReportCardCBSE.LocalReport.Render("PDF", null, out mimeType, out encoding, out extension, out streamIds, out warnings);


            string pth = Server.MapPath("~/ReportCard/" + fileName);

            using (Stream file = File.OpenWrite(@pth))
            {
                file.Write(bytes, 0, bytes.Length);
            }

            
            rvReportCardCBSE.LocalReport.Refresh();
        }





    }
}
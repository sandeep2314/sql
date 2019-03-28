using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccountingSoftware.BLL;

namespace AccountingSoftware.Master
{
    public partial class UploadFrm : System.Web.UI.Page
    {

        DBSite site = null;
        Util_BLL util = new Util_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            txtSchoolCode.Text = Util_BLL.User.UserId.ToString() ;
        }


        void SaveFileDetails(string SchoolNo, string admNo, string fileName)
        {

            site = new DBSite();

            // save adminNo and full file name to database
            string qry = "INSERT INTO tblTC(SchoolNo, AdmNo, UploadedFileName, UserId , SubUserID, FYear)"
                  + " VALUES ("
                  + "'" + SchoolNo + "'"
                  + ", '" + admNo + "'"
                  + ", '" + fileName + "'";

            qry += ", " + util.GetUserInsertQry(Util_BLL.User);
             
            qry += " )";
            site.Execute(qry);

        }

        protected void uploadFile_Click(object sender, EventArgs e)
        {
            if (UploadImages.HasFile)
            {


             string schoolNo = txtSchoolCode.Text;
            string admNo = txtAdmNo.Text;
            UploadImages.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Images/"), UploadImages.FileName));

            string fileName = System.IO.Path.Combine(Server.MapPath("~/Images/")) + "\\" + UploadImages.FileName;

            SaveFileDetails(schoolNo, admNo, fileName);
            listofuploadedfiles.Text += String.Format("{0}", "Uploaded Sucessfully (For: " + admNo + ") " + UploadImages.FileName);
               
            }
        }  
    }
}
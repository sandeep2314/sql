using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccountingSoftware.BLL;

namespace AccountingSoftware.Master
{
    public partial class AttendanceReport : System.Web.UI.Page
    {
        DBSite site;
        Util_BLL util = new Util_BLL();
        protected void Page_Load(object sender, EventArgs e)
        {

            SubuserBLL subUserBll = new SubuserBLL();
            site = new DBSite();

            //if (!subUserBll.IsSubUserHasPermissionForThePage(site, Util_BLL.SubUser.SubuserId, util.GetCurrentPageName(Request)))
            //{
            //    util.HandleExpception(Util_BLL.NO_PERMISSION, Response);
            //    return;
            //}



        }
              
        

        protected void btnGet_Click(object sender, EventArgs e)
        {
            Get();
        }

        protected void Get()
        {
            Util_BLL util = new Util_BLL();
            if (!util.IsDate(txtFromDate.Text))
            {
                lblError.Text = "Please Enter Valid Date !";
                lblError.Visible = true;
                return;
            }
            lblError.Text = string.Empty;
            lblError.Visible = false;

            if (txtFromDate.Text == "")
            {
                txtFromDate.Text = Util_BLL.MIN_DATE;
                
            }
            
            rvAttendance.LocalReport.Refresh();
        }

    }
}
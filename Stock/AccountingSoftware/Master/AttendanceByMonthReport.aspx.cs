using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccountingSoftware.BLL;

namespace AccountingSoftware.Master
{
    public partial class AttendanceByMonthReport : System.Web.UI.Page
    {
        DBSite site;
        Util_BLL util = new Util_BLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnGet_Click(object sender, EventArgs e)
        {
            GetAttendanceByMonth();
        }
                
        protected void GetAttendanceByMonth()
        {
            Util_BLL util = new Util_BLL();
           
            lblError.Text = string.Empty;
            lblError.Visible = false;

         

            rvAttendance.LocalReport.Refresh();
        }
    }
}
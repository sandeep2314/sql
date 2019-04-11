using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccountingSoftware.BLL;

namespace AccountingSoftware.Master
{
    public partial class Attendance : System.Web.UI.Page
    {
        Util_BLL util = new Util_BLL();
        DBSite site;
        int total_records = 0;
        


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                site = new DBSite();

                ddlClass.Items.Add(new ListItem("All", "-1"));
                util.FillClass(site, ddlClass);


                util.FillYear(ddlYear);

                util.FillMonth(ddlMonth);

                util.FillDay(ddlDay);

                ddlYear.ClearSelection();
                ddlYear.SelectedValue = (util.indianTime.Year).ToString();
                
                //Select Current Month and Year to dropdowns
                ddlMonth.ClearSelection();
                ddlMonth.SelectedValue = (util.indianTime.Month).ToString();

                ddlDay.ClearSelection();
               // ddlDay.SelectedValue = (DateTime.Now.Day).ToString();
                ddlDay.SelectedValue = (util.indianTime.Day ).ToString();
                //ddlDay.SelectedIndex = 8;


                txtSearch.Text = util.indianTime.ToString();


            }

            
        }




        protected void btnPost_Click(object sender, EventArgs e)
        {

            AttendanceBll aBll = new AttendanceBll();

            site = new DBSite();

            List<AttendanceBll.AttendanceEntity> attdList = new List<AttendanceBll.AttendanceEntity>();

            AttendanceBll.AttendanceEntity atd;

            foreach (GridViewRow gr in gridView1.Rows)
            {
                atd = new AttendanceBll.AttendanceEntity();

                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("ckbPresent");
                if (cb.Checked)
                {
                    atd.Status = 1;
                }
                else
                {
                    atd.Status = 0;
                }

                atd.AttendanceId = util.CheckNullInt(gr.Cells[2].Text);

                attdList.Add(atd);
            }

            aBll.PostAttendance(site, attdList);

        }


        protected void btnAbsentees_Click(object sender, EventArgs e)
        {

            GetAttendance(true);
        }

        protected void btnSendSMSToAbsentees_Click(object sender, EventArgs e)
        {
            Util_BLL util = new Util_BLL();
            AttendanceBll abll = new AttendanceBll();

            site = new DBSite();
            List<AttendanceBll.AttendanceEntity> attdList = new List<AttendanceBll.AttendanceEntity>();
            AttendanceBll.AttendanceEntity atd;

            foreach (GridViewRow gr in gridView1.Rows)
            {
                atd = new AttendanceBll.AttendanceEntity();

                

                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("ckbPresent");
                if (!cb.Checked)
                {
                    atd.AttendanceId = util.CheckNullInt(gr.Cells[2].Text);

                    string msg = "Dear Parent, Your Child Name <40> is absent today.";
                    msg = msg.Replace("<40>", util.CheckNull(gr.Cells[3].Text));

                    // 5cs School, Lalpur
                    if (Util_BLL.User.SenderId=="FifthC")
                    {
                        msg = "Dear Parents, Your ward '<40>' is absent today from School.";
                        msg = msg.Replace("<40>", util.CheckNull(gr.Cells[3].Text));
                    }
                    
                    
                    // if not class is Staff then do not send sms 
                    // and not sms has been sent already

                    string  mobileNo =  abll.GetMobileNo(site, atd.AttendanceId);

                    string ss = util.SendSms(site, mobileNo, msg, Util_BLL.User, this.Response, false );

                    int sms_count = 0;

                    try
                    {
                        site.BeginTrans();
                        
                        sms_count = util.SaveSentSMSToDB(site, mobileNo, msg, false,Util_BLL.User);
                        site.Commit();
                    }
                    catch (Exception ex)
                    {
                        site.RollBack();
                    }



                    if(abll.GetClassName(site, atd.AttendanceId).ToUpper() != "STAFF" && !abll.IsSMSSent(site, atd.AttendanceId ))
                    {

                        //string ss = util.SendSms(abll.GetMobileNo(site, atd.AttendanceId), msg, Util_BLL.User, this.Response);
                    }
                    
                    
                    attdList.Add(atd);
                }
               
              
            }
                       
            abll.PostSMS(site, attdList);
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
           
            GetAttendance(false );

        }

        


        private void GetAttendance(bool onlyAbsentees)
        {
            site = new DBSite();
            AttendanceBll aBll = new AttendanceBll();
            
            aBll.ProcessMachineAttendance(site, int.Parse(ddlYear.SelectedValue), int.Parse(ddlMonth.SelectedValue), int.Parse(ddlDay.SelectedValue), 0);


            try
            {
                List<AttendanceBll.AttendanceEntity> attdlist = aBll.GetAttendance(site, int.Parse(ddlYear.SelectedValue), int.Parse(ddlMonth.SelectedValue), int.Parse(ddlDay.SelectedValue), int.Parse (ddlClass.SelectedValue), onlyAbsentees);
                total_records = attdlist.Count;
                gridView1.DataSource = attdlist;
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




        protected void btnSearch_Click(object sender, EventArgs e)
        {
           
        }


        protected void gridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridView1.PageIndex = e.NewPageIndex;
            gridView1.DataBind();

            GetAttendance(false );
        }


        



    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccountingSoftware.BLL;

namespace AccountingSoftware.Master
{
    public partial class SmsFrm1 : System.Web.UI.Page
    {
        DBSite site = null;
        Util_BLL util = new Util_BLL();

        string tranlatedMsg_global = "";


        protected void Page_Load(object sender, EventArgs e)
        {

             site = new DBSite();
            // show message that SMS balance is low and recharge

            

             

             int sms_bal = util.GetSMSBalance(site, Util_BLL.User.UserId);
             
             if (sms_bal != -99 && sms_bal < 1000)
             {
                 lblBalance.Text = "Isufficient SMS Balance, should be greater than 1000 : " + sms_bal.ToString();
                 btnSendSMS.BackColor = System.Drawing.Color.LightGray;
                 btnSendSMS.Enabled = false ;
             }



             if (sms_bal == -99)
             {
                 lblBalance.Text = "Remaining SMS : ";

             }
             else
             {
                 lblBalance.Text = "Remaining SMS : " + sms_bal.ToString();
             }

             
             if (!IsPostBack)
             {
                 
                 ClassMasterBLL cBll = new ClassMasterBLL();
                 List<ClassMasterBLL.ClassMasterEntity> clasList = cBll.GetClassList(site, Util_BLL.User.UserId);

                 gridView2.DataSource = clasList;
                 gridView2.DataBind();

                 ckbUnicode.Visible = Util_BLL.User.IsUnicode;
                 btnTranslate.Visible = Util_BLL.User.IsUnicode;

                 clear();
             }


             if (Util_BLL.User.SMSDelivery > 20 && Util_BLL.User.SMSDelivery < 50)
             {
                 lblError.Text = "Your SMS Balance is low. Please recharge for continued service!";
                 lblError.Visible = true;
                 
             }

             if (Util_BLL.User.SMSDelivery < 20)
             {
                 lblError.Text = "Your SMS Balance very low. Please recharge now to send SMS!";
                 lblError.Visible = true;
                 
                 btnSendSMS.BackColor = System.Drawing.Color.LightGray;
                 btnSendSMS.Enabled = Util_BLL.User.SMSDelivery > 40;
             }
             
        }


        protected void btnSendSMS_Click(object sender, EventArgs e)
        {
            List<string> selectedMobieNosList = GetArr90(40);
            //string msg = "Dear Parents, " + txtMessage.Text + ".";
           // string msg = ddlTemplate.SelectedValue.ToString()  + txtMessage.Text + ".";

            

           // string msg = ddlTemplate.SelectedValue.ToString() + TextBox2.Text + ".";

            string msg = ddlTemplate.SelectedValue.ToString() + TranslateSan() + ".";


            string result = "";
            //string selectedMobieNos = GetSelectedIds(gridView1, 5);
            string selectedMobieNos = GetSelectedIds(gridView1, 6);
            string[] arr = selectedMobieNos.Split();
            int mobileCoun = arr.Length;

            string mobs = "";
            string mobsTest = "";

            DBSite site = new DBSite();

            string sms_result = "";

            int sms_count = 0;

            // if check box is selected
            bool isUnicode = ckbUnicode.Checked ;


            //try
            {
                foreach (string str in selectedMobieNosList)
                {
                    mobs = str.Replace("&nbsp;,", "");

                    msg = msg.Replace("'", "");

                    try
                    {
                        site.BeginTrans();
                        sms_count += util.SaveSentSMSToDB(site, mobs, msg, isUnicode, Util_BLL.User);
                        site.Commit();
                    }
                    catch (Exception ex)
                    {
                        site.RollBack();
                        throw ex;
                    }

                    
                    result += util.SendSms(site, mobs, msg, Util_BLL.User, Response, isUnicode);
                    //sms_result = util.SMSResult(result);

                   


                    mobsTest += "\n" + mobs;
                    
                }

               // txtMessage.Text = result;

                lblMessage.Text = sms_count + " SMS Sent";
                lblMessage.Visible = true;
            }
            //catch (Exception ex)
            //{
            //    lblError.Text = "Ooops ...Some Error ! " + ex.Message;
            //    lblError.Visible = true;
            //}

            int sms_bal = util.GetSMSBalance(site, Util_BLL.User.UserId);

           

            if (sms_bal == -99)
            {
                lblBalance.Text = "Remaining SMS : ";
                
            }
            else
            {
                lblBalance.Text = "Remaining SMS : " + sms_bal.ToString();
            }
            //
        }



        // get an array of 90 mobiles nos. to send SMS
        // 
        protected List<string> GetArr90(int tokenLen)
        {
            
            List<string> aList = new List<string>();
            string selectedMobieNos = GetSelectedIds(gridView1, 6);
            string[] arr = selectedMobieNos.Split();

            string mobilenos = "";
            int maxLen = arr.Length;
            int count = 0;

            for (int i = 0; i < arr.Length; i++)
            {
                mobilenos +=  arr[i];
                count += 1;
                
                if ((maxLen-count) >= tokenLen)
                {
                    if (count % tokenLen == 0)
                    {
                        aList.Add(mobilenos);
                        mobilenos = "";
                    }
                }
                else
                {
                    //aList.Add(mobilenos);
                    if (count == maxLen)
                        aList.Add(mobilenos);
                    
                }
               
            }
            
            return aList;

        }



        protected void clear()
        {
            lblError.Text = "";
            lblError.Visible = false;

            lblMessage.Text = "";
            lblMessage.Visible = false;

        }


        protected void btnGet_Click(object sender, EventArgs e)
        {
           //txtMessage.Text = GetSelectedIds(gridView2, 1);
           GetStudents();

           clear();
        }


        protected string GetSelectedIds(GridView grd, int cellNo)
        {

            string selectedIds = "";

            foreach (GridViewRow gr in grd.Rows)
            {
                //string ckb_str = gr.Cells[0].FindControl("ckb").ClientID;
                //CheckBox cb = (CheckBox)gr.Cells[0].FindControl(ckb_str);
                
                CheckBox cb = (CheckBox)gr.Cells[0].FindControl("ckb") ;

                
                if (cb != null && cb.Checked)
                {
                    selectedIds += ", " + util.CheckNull(gr.Cells[cellNo].Text);
                    
                }
            }

            if(selectedIds.Length > 2)
                selectedIds = selectedIds.Substring(2);
            return selectedIds;

        }

        protected void GetStudents()
        {
            StudentBll sBll = new StudentBll();
            //StudentBll.StudenEntity st = sBll.GetStudents(site, util.CheckNullInt(lblStudentMasterId.Text));
            List<StudentBll.StudenEntity> st = sBll.GetStudentsByClass(site, "", GetSelectedIds(gridView2, 1));

            gridView1.DataSource = st;
            gridView1.DataBind();

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {

            site = new DBSite();
            StudentBll stBll = new StudentBll();

            // 777
            List<StudentBll.StudenEntity> students = stBll.SearchStudents(site, txtSearch.Text);
            // total_records = students.Count;
            gridView1.DataSource = students;
            gridView1.DataBind();

        }

        protected void gridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridView1.PageIndex = e.NewPageIndex;
            gridView1.DataBind();

            //GetAttendance(false);
        }


        protected void gridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void grid2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridView2.PageIndex = e.NewPageIndex;
            gridView2.DataBind();

            //GetAttendance(false);
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


        protected string TranslateSan()
        {

            //string tranlatedStr = util.TranslateSanUtil(txtMessage.Text, "en|hi");
            string tranlatedStr = txtMessage.Text.Replace("&", "and");
            return  Server.HtmlDecode(tranlatedStr);
            //return tranlatedStr;
            

        }
       


        protected void btnTranslate_Click(object sender, EventArgs e)
        {

            //TextBox2.Text = TranslateSan();
            // pop up google http://www.google.com/inputtools/try/


                      
        }



        protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            //header select all function
            if (e.Row.RowType == DataControlRowType.Header)
            {
                ((CheckBox)e.Row.FindControl("allchk")).Attributes.Add("onclick",
                    "javascript:SelectAllGrid1('" +
                    ((CheckBox)e.Row.FindControl("allchk")).ClientID + "')");
            }

        }

    }
}
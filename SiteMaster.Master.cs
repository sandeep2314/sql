using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using AccountingSoftware.BLL;

namespace AccountingSoftware
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        DBSite site = null;
        Util_BLL util = new Util_BLL();
        StockTransactionBLL stBll = new StockTransactionBLL();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                site = new DBSite();
                List<StockTransactionBLL.StockTransactionType> trn_list = stBll.GetInfo(site);


                MenuItem menu_trn ;
                
                MenuItem sub_menu ;
                
                

                if (Util_BLL.IsStock==1)
                {
                    menu_trn = new MenuItem("Dashboard", "0");
                    menu_trn.NavigateUrl = "~/Master/Home_stock.aspx";
                    menuTransaction.Items.Add(menu_trn);


                    menu_trn = new MenuItem("Master", "901");

                    sub_menu = new MenuItem("Group Master", "1");
                    sub_menu.NavigateUrl = "~/Master/GroupMasterData.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Transaction Master", "2");
                    sub_menu.NavigateUrl = "~/Master/StockTransaction.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Product Master", "3");
                    sub_menu.NavigateUrl = "~/Master/ProductMaster.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Account Master", "4");
                    sub_menu.NavigateUrl = "~/Master/AccountMaster.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    menuTransaction.Items.Add(menu_trn);


                    

                    menu_trn = new MenuItem("Stock Entry", "903");

                    sub_menu = new MenuItem("Stock List", "904");
                    sub_menu.NavigateUrl = "~/Master/StockList.aspx";

                    menu_trn.ChildItems.Add(sub_menu);

                    foreach (StockTransactionBLL.StockTransactionType trn in trn_list)
                    {
                        sub_menu = new MenuItem(trn.StockTransactionName, trn.StockTransactionId.ToString());
                        sub_menu.NavigateUrl = "~/Master/StockMovement.aspx?trnId=" + trn.StockTransactionId.ToString();

                        menu_trn.ChildItems.Add(sub_menu);



                    }
                    menuTransaction.Items.Add(menu_trn);

                    
                    menu_trn = new MenuItem("Reports", "904");

                    sub_menu = new MenuItem("Account Report", "904");
                    sub_menu.NavigateUrl = "~/Master/AccountReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Stock Report", "904");
                    sub_menu.NavigateUrl = "~/Master/ProductReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Stock By Date Report", "904");
                    sub_menu.NavigateUrl = "~/Master/ProductLedgerReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Stock By Location Report", "904");
                    sub_menu.NavigateUrl = "~/Master/StockByLocationReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Stock By Account Report", "905");
                    sub_menu.NavigateUrl = "~/Master/StockByAccountReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Re-Order Report", "906");
                    sub_menu.NavigateUrl = "~/Master/ReOrderReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    menuTransaction.Items.Add(menu_trn);

                   

                }
              if(Util_BLL.IsStock==0) // iCollegeManager
                {
                    //menu_trn = new MenuItem("Master", "901");

                    menu_trn = new MenuItem("Dashboard", "0");
                    menu_trn.NavigateUrl = "~/Master/Home.aspx";
                    menuTransaction.Items.Add(menu_trn);

                    menu_trn = new MenuItem("Master", "901");

                    sub_menu = new MenuItem("Student Master", "4");
                    sub_menu.NavigateUrl = "~/Master/StudentMaster.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Attendance", "5");
                    sub_menu.NavigateUrl = "~/Master/Attendance.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    if (util.isSubUserAdmin(site))
                    {

                        sub_menu = new MenuItem("SMS", "9");
                        sub_menu.NavigateUrl = "~/Master/SmsFrm.aspx";
                        menu_trn.ChildItems.Add(sub_menu);
                    }



                    sub_menu = new MenuItem("Class Master", "6");
                    sub_menu.NavigateUrl = "~/Master/ClassFrm.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Subject Master", "8");
                    sub_menu.NavigateUrl = "~/Master/SubjectMasterFrm.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Exam Master", "19");
                    sub_menu.NavigateUrl = "~/Master/ExamMasterFrm.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Term Master", "19");
                    sub_menu.NavigateUrl = "~/Master/TermMasterFrm.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    menuTransaction.Items.Add(menu_trn);

                    menu_trn = new MenuItem("Exam Marks", "906");
                    menu_trn.NavigateUrl = "~/Master/ExamMarks.aspx?new=1";


                    sub_menu = new MenuItem("Enter Exam Marks", "9");
                    sub_menu.NavigateUrl = "~/Master/ExamMarks.aspx?new=1";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Edit Exam Marks", "10");
                    sub_menu.NavigateUrl = "~/Master/ExamMarks.aspx?new=0";
                    menu_trn.ChildItems.Add(sub_menu);


                    if (util.isSubUserAdmin(site))
                    {
                        sub_menu = new MenuItem("SMS Marks", "908");
                        sub_menu.NavigateUrl = "~/Master/SMSMarks.aspx";
                        menu_trn.ChildItems.Add(sub_menu);
                    }

                    menuTransaction.Items.Add(menu_trn);

                    menu_trn = new MenuItem("Reports", "907");

                    sub_menu = new MenuItem("Attendance By Date Report", "907");
                    sub_menu.NavigateUrl = "~/Master/AttendanceReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Attendance By Month Report", "907");
                    sub_menu.NavigateUrl = "~/Master/AttendanceByMonthReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);


                    sub_menu = new MenuItem("Marks Report", "902");
                    sub_menu.NavigateUrl = "~/Master/MarksReportFrm.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("SMS Sent Report", "906");
                    sub_menu.NavigateUrl = "~/Master/SMSSentReport.aspx";
                    menu_trn.ChildItems.Add(sub_menu);

                    //sub_menu = new MenuItem("Result Class Wise", "942");
                    //sub_menu.NavigateUrl = "~/Master/ResultFrm.aspx";
                    //menu_trn.ChildItems.Add(sub_menu);

                  // GuruNanak

                    //sub_menu = new MenuItem("Report Card (Class 1-8)", "940");
                    //sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx?whichClass=1";
                    //menu_trn.ChildItems.Add(sub_menu);

                    //sub_menu = new MenuItem("Report Card (Class 9)", "949");
                    //sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx?whichClass=9";
                    //menu_trn.ChildItems.Add(sub_menu);

                    //sub_menu = new MenuItem("Report Card (Class 11)", "9411");
                    //sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx?whichClass=11";
                    //menu_trn.ChildItems.Add(sub_menu);


                  // LittleAngels

                    sub_menu = new MenuItem("Report Card (Class Nur-UKG)", "940");
                    sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx?whichClass=LA_0";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Report Card (Class 1-5)", "940");
                    sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx?whichClass=LA_1";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Report Card (Class 6-9)", "949");
                    sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx?whichClass=LA_9";
                    menu_trn.ChildItems.Add(sub_menu);

                    sub_menu = new MenuItem("Report Card (Class 11)", "9411");
                    sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx?whichClass=LA_11";
                    menu_trn.ChildItems.Add(sub_menu);




                    menuTransaction.Items.Add(menu_trn);

                    


                   
                }




              if (Util_BLL.IsStock == 2) // Sunny
              {
                  

                  menu_trn = new MenuItem("Dashboard", "0");
                  menu_trn.NavigateUrl = "~/Master/Home.aspx";
                  menuTransaction.Items.Add(menu_trn);

                  menu_trn = new MenuItem("Master", "901");

                  sub_menu = new MenuItem("Customer Master", "4");
                  sub_menu.NavigateUrl = "~/Master/StudentMaster.aspx";
                  menu_trn.ChildItems.Add(sub_menu);

                  sub_menu = new MenuItem("Generate Bill", "5");
                  sub_menu.NavigateUrl = "~/Master/StudentMaster.aspx";
                  menu_trn.ChildItems.Add(sub_menu);


                  menuTransaction.Items.Add(menu_trn);

                  //if (util.isSubUserAdmin(site))
                  //{

                  //    sub_menu = new MenuItem("SMS", "9");
                  //    sub_menu.NavigateUrl = "~/Master/SmsFrm.aspx";
                  //    menu_trn.ChildItems.Add(sub_menu);
                  //}



                  
                  menu_trn = new MenuItem("Reports", "907");

                  

                  sub_menu = new MenuItem("Bill", "902");
                  sub_menu.NavigateUrl = "~/Master/MarksReportFrm.aspx";
                  menu_trn.ChildItems.Add(sub_menu);


                  sub_menu = new MenuItem("Sales Report", "903");
                  sub_menu.NavigateUrl = "~/Master/MarksReportFrm.aspx";
                  menu_trn.ChildItems.Add(sub_menu);
                                   
                  sub_menu = new MenuItem("Royalty Report", "942");
                  sub_menu.NavigateUrl = "~/Master/ResultFrm.aspx";
                  menu_trn.ChildItems.Add(sub_menu);

                  menuTransaction.Items.Add(menu_trn);

              }
                

                //sub_menu = new MenuItem("Salary Master", "4");
                //sub_menu.NavigateUrl = "~/Master/BasicSalary.aspx";
                //menu_trn.ChildItems.Add(sub_menu);

                
                
               

             

                //sub_menu = new MenuItem("Enter Exam Marks By Student", "10");
                //sub_menu.NavigateUrl = "~/Master/ExamMarksBPS.aspx?new=0";
                //menu_trn.ChildItems.Add(sub_menu);

                
                               

               
               
                //sub_menu = new MenuItem("Report Card", "906");
                //sub_menu.NavigateUrl = "~/Master/ReportCard.aspx";
                //menu_trn.ChildItems.Add(sub_menu);


                //sub_menu = new MenuItem("Report Card CBSE", "920");
                //sub_menu.NavigateUrl = "~/Master/ReportCardCBSE.aspx";
                //menu_trn.ChildItems.Add(sub_menu);

                //sub_menu = new MenuItem("Report Card CBSE2", "930");
                //sub_menu.NavigateUrl = "~/Master/ReportCardCBSE2.aspx";
                //menu_trn.ChildItems.Add(sub_menu);

                //sub_menu = new MenuItem("Report Card BPS", "930");
                //sub_menu.NavigateUrl = "~/Master/ReportCardBPS.aspx";
                //menu_trn.ChildItems.Add(sub_menu);


                //sub_menu = new MenuItem("Report Card Annual Junior", "930");
                //sub_menu.NavigateUrl = "~/Master/ReportCardBPS_Junior.aspx";
                //sub_menu.NavigateUrl = "~/Master/ReportCardOakWood_Junior.aspx";
                //sub_menu.NavigateUrl = "~/Master/ReportCardHashmiAnnual_Junior_NonUrdu.aspx";

                //sub_menu.NavigateUrl = "~/Master/ReportCardHashmi_Junior.aspx";
                //menu_trn.ChildItems.Add(sub_menu);

                //sub_menu = new MenuItem("Report Card Annual Senior", "930");
                //sub_menu.NavigateUrl = "~/Master/ReportCardGardenValley.aspx";
               // sub_menu.NavigateUrl = "~/Master/ReportCardHEA.aspx";
                //sub_menu.NavigateUrl = "~/Master/ReportCardOakWood.aspx";
                //sub_menu.NavigateUrl = "~/Master/ReportCardBPS.aspx";
                
                //sub_menu.NavigateUrl = "~/Master/ReportCardCBSE2.aspx";

                //menu_trn.ChildItems.Add(sub_menu);


              

                //if (util.isSubUserAdmin(site))
                //{
                //    menu_trn = new MenuItem("Sub User", "0");
                //    menu_trn.NavigateUrl = "~/Master/SubuserInfo.aspx";
                //    menuTransaction.Items.Add(menu_trn);
                //}


                menu_trn = new MenuItem("Admin", "907");

                if (util.isSubUserAdmin(site))
                {
                    sub_menu = new MenuItem("Sub User", "30");
                    if (Util_BLL.IsStock == 0)
                    {
                        sub_menu.NavigateUrl = "~/Master/SubuserInfo.aspx";
                    }
                    if (Util_BLL.IsStock == 1)
                    {
                        sub_menu.NavigateUrl = "~/Master/SubuserInfo_stock.aspx";
                    }
                    if (Util_BLL.IsStock == 2)
                    {
                        sub_menu = new MenuItem("Franchisese", "30");
                        sub_menu.NavigateUrl = "~/Master/SubuserInfo_stock.aspx";
                    }
                    
                    menu_trn.ChildItems.Add(sub_menu);

                }
                    


                sub_menu = new MenuItem("Change Password", "904");
                sub_menu.NavigateUrl = "~/Master/ChangePassword.aspx";
                menu_trn.ChildItems.Add(sub_menu);



                if (Util_BLL.IsStock==0)
                {
                    sub_menu = new MenuItem("Upload File", "904");
                    sub_menu.NavigateUrl = "~/Master/UploadFrm.aspx";
                    menu_trn.ChildItems.Add(sub_menu);


                    sub_menu = new MenuItem("Download File", "914");
                    sub_menu.NavigateUrl = "~/Master/DownloadFrm.aspx";
                    menu_trn.ChildItems.Add(sub_menu);
                }
                //sub_menu = new MenuItem("Log Out", "915");
                //sub_menu.NavigateUrl = "~/Master/Logout.aspx";
                //menu_trn.ChildItems.Add(sub_menu);

                menuTransaction.Items.Add(menu_trn);

                menu_trn = new MenuItem("Log Out", "0");
                menu_trn.NavigateUrl = "~/Master/Logout.aspx";
                menuTransaction.Items.Add(menu_trn);

            }


            //Label1.Text = Session["UserType"].ToString();

            //if (Session["UserType"].ToString()== "admin")
            //{

            //    menu_master.Style.Add("display", "none");
            //    menu_stock.Style.Add("display", "none");
            //    menu_reports.Style.Add("display", "none");
            //}
            //else if (Session["UserType"].ToString() == "user")
            //{
            //    menu_subuser.Style.Add("display", "none");
            //}
            //else if (Session["UserType"].ToString() == "super_user")
            //{
            //    menu_subuser.Style.Add("display", "none");
            //}
        }


        

     
    }
}
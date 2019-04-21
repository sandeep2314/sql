using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Timers;

namespace SmsService
{
    public partial class SmsService1 : ServiceBase
    {
        private Timer timer1 = null;

        DBSite site = new DBSite();



        public SmsService1()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            timer1 = new Timer();
            // every 30 secs
           this.timer1.Interval = 30000;
            // every 1 min
           // this.timer1.Interval = 60 * 1000;
            this.timer1.Elapsed += new ElapsedEventHandler(this.timer1_Tick);
            timer1.Enabled=true;
            SendSMSToParents.WriteErrorLog("Test Window Service Started");

        }

        protected override void OnStop()
        {
            timer1.Enabled = false;
            SendSMSToParents.WriteErrorLog("Test Window Service is stopped");
        }


        private void timer1_Tick(object sender, ElapsedEventArgs e)
        {
            // witer code to do some job as per ur need

            // check incoming students
            // send sms for entry

            // check outgoing students
            //send sms for outgoing

            // send sms for Abentee to be sent on 9:15 AM

            Util_BLL util = new Util_BLL();
            AttendanceBll aBLL = new AttendanceBll();
           
            aBLL.ProcessMachineAttendance(site, util.CheckNullInt(DateTime.Now.Year), util.CheckNullInt(DateTime.Now.Month), util.CheckNullInt(DateTime.Now.Day), 0);
            
            List<AttendanceBll.AttendanceEntity> absentees = new List<AttendanceBll.AttendanceEntity>();
            ClassMasterBLL cBLL = new ClassMasterBLL();
            // userID=36, whitehall
            List<ClassMasterBLL.ClassMasterEntity> ClassList = cBLL.GetClassList(site, 36);

             //absentees = aBLL.GetAttendance(site, 2019, DateTime.Now.Month, DateTime.Now.Day, clas.ClassMasterId , false);
            absentees = aBLL.GetAttendance(site, DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, -1, false);
                
            string msg_str = "";
            foreach (AttendanceBll.AttendanceEntity absente in absentees)
            {
                if (absente.Status == 1)
                {
                    if (absente.IsSMSSent == 0 && aBLL.GetPunchCount(site, util.CheckNullInt(absente.IdcardNo), DateTime.Now.Day, DateTime.Now.Month, DateTime.Now.Year, false) == 1)
                    {
                        msg_str = "Dear Parents, Your child " + absente.StudentName + " has arrived in school on " + absente.InTime + ".";
                        util.SendSms(absente.MobileNo, msg_str, 1, "WHSLMC", false);
                        aBLL.PostSMS(site, absente.StudentId, 1);
                        SendSMSToParents.WriteErrorLog("set isSMSSent to 1 " + absente.StudentName);
                    }

                    // Exit
                    if (absente.IsSMSSent == 1 && aBLL.GetPunchCount(site, util.CheckNullInt(absente.IdcardNo), DateTime.Now.Day, DateTime.Now.Month, DateTime.Now.Year, true) > 0)
                    {
                        msg_str = "Dear Parents, Your child " + absente.StudentName + " has left the school on " + absente.OutTime + ".";
                        util.SendSms(absente.MobileNo, msg_str, 1, "WHSLMC", false);
                        aBLL.PostSMS(site, absente.StudentId, 2);
                        SendSMSToParents.WriteErrorLog("set isSMSSent to 2 " + absente.StudentName);
                    }
                        

                }

                


            }

            
           
            SendSMSToParents.WriteErrorLog("Timer ticked and some job has been done sucessesfully");
            
        }

    }
}

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

            Util_BLL util = new Util_BLL();
            // check incoming students
            // send sms for entery


            // check outgoing students
            //send sms for outgoing


            // send sms for Abentee to be sent on 9:15 AM


            AttendanceBll aBLL = new AttendanceBll();

           //aBLL.ProcessMachineAttendance(site, util.GetYearInt(DateTime.Now), util.GetMonthInt(DateTime.Now), util.GetDayInt(DateTime.Now), 0);

            aBLL.ProcessMachineAttendance(site, util.CheckNullInt(DateTime.Now.Year), util.CheckNullInt(DateTime.Now.Month), util.CheckNullInt(DateTime.Now.Day), 0);
            //aBLL.ProcessMachineAttendance(site, 2019, 3, 5, 0);

            List<AttendanceBll.AttendanceEntity> absentees = new List<AttendanceBll.AttendanceEntity>();
            // classID = 2865, 2954

            ClassMasterBLL cBLL = new ClassMasterBLL();
            List<ClassMasterBLL.ClassMasterEntity> ClassList = cBLL.GetClassList(site, 36);

            //foreach (ClassMasterBLL.ClassMasterEntity clas in ClassList)
            {
                //absentees = aBLL.GetAttendance(site, 2019, DateTime.Now.Month, DateTime.Now.Day, clas.ClassMasterId , false);
            }

            absentees = aBLL.GetAttendance(site, 2019, DateTime.Now.Month, DateTime.Now.Day, 2955, false);

            SendSMSToParents.WriteErrorLog("the absentees " + absentees.Count.ToString());

            string msg_str = "";


            foreach(AttendanceBll.AttendanceEntity absente in absentees)
            {
            //Util_BLL.SendSms(site, "9219484030", string msg, int userID, string senderID, bool isUnicode)

                // if the student is present in school
                //if (absente.Status == 1 && absente.IsSMSSent == 0  )
                if (absente.Status == 1 )
                {
                    if (absente.IsSMSSent==0 &&  aBLL.GetPunchCount(site, util.CheckNullInt(absente.IdcardNo), DateTime.Now.Day) == 1 )
                    {
                        msg_str = "Dear Parents, Your ward " + absente.StudentName + " has arrived in school on " + absente.InTime + ".";
                        util.SendSms(absente.MobileNo, msg_str, 1, "HSMPSK", false);

                        // set isMSsent = 1
                        aBLL.PostSMS(site, absente.StudentId, 1);
                        SendSMSToParents.WriteErrorLog("set isSMSSent to 1 " + absente.StudentName);
                    }

                    // Exit
                    if (absente.IsSMSSent == 1 &&  aBLL.GetPunchCount(site, util.CheckNullInt(absente.IdcardNo), DateTime.Now.Day) == 2)
                    {
                        msg_str = "Dear Parents, Your ward " + absente.StudentName + " has left the school on " + absente.OutTime + ".";
                        util.SendSms(absente.MobileNo, msg_str, 1, "HSMPSK", false);
                        aBLL.PostSMS(site, absente.StudentId, 2);
                        SendSMSToParents.WriteErrorLog("set isSMSSent to 2 " + absente.StudentName);
                    }
                

                }
                
                
            
            
            SendSMSToParents.WriteErrorLog("got absentee sucessesfully " + absente.StudentName);
            }
            SendSMSToParents.WriteErrorLog("Timer ticked and some job has been done sucessesfully");
            
        }


    }
}

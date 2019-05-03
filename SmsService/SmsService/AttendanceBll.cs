using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;

namespace SmsService
{

    public  class AttendanceBll
    {

         Util_BLL util = new Util_BLL();

         public class AttendanceEntity
         {

             public int AttendanceId { get; set; }
             public int YearNo { get; set; }
             public int MonthNo { get; set; }
             public int DayNo { get; set; }

             public int HolidayId { get; set; }
             public string HolidayName { get; set; }

             public int StudentId { get; set; }
             public string StudentName { get; set; }
             
             public string MobileNo { get; set; }

             public int ClassId { get; set; }
             public string ClassName { get; set; }

             public int SectionId { get; set; }
             public string SectionName { get; set; }

             public string IdcardNo { get; set; }
             public String InTime { get; set; }
             public String OutTime { get; set; }
             public int Status { get; set; }
             public int IsPosted { get; set; }
             public int IsSMSSent { get; set; }

             public string totalAttendance { get; set; }

             public string msg { get; set; }

             public int SubUserID { get; set; }
             public int UserID { get; set; }
             public int FYear { get; set; }

         }


         public class SendSMSToParents2
         {

             public int AttendanceId { get; set; }
             public int YearNo { get; set; }
             public int MonthNo { get; set; }
             public int DayNo { get; set; }
             
             public int HolidayId { get; set; }
             public string HolidayName { get; set; }
            
             public int StudentId { get; set; }
             public string StudentName { get; set; }

             public int ClassId { get; set; }
             public string ClassName { get; set; }

             public int SectionId { get; set; }
             public string SectionName { get; set; }
             
             public string IdcardNo { get; set; }
             public String  InTime { get; set; }
             public String  OutTime { get; set; }
             public int Status { get; set; }
             public int IsPosted { get; set; }
             public int IsSMSSent{ get; set; }

             public string totalAttendance { get; set; }

             public string msg { get; set; }

             public int SubUserID { get; set; }
             public int UserID { get; set; }
             public int FYear { get; set; }

         }


         public class AttendanceByMonthEntity
         {
             public int StudentId { get; set; }
             public string StudentName { get; set; }
             public int ClassId { get; set; }
             public string ClassName { get; set; }
             public int YearNo { get; set; }
             public int MonthNo { get; set; }
                          
             public string Day1 { get; set; }
             public string Day2 { get; set; }
             public string Day3 { get; set; }
             public string Day4 { get; set; }
             public string Day5 { get; set; }
             public string Day6 { get; set; }
             public string Day7 { get; set; }
             public string Day8 { get; set; }
             public string Day9 { get; set; }
             public string Day10 { get; set;}
             
             public string Day11 { get; set; }
             public string Day12 { get; set; }
             public string Day13 { get; set; }
             public string Day14 { get; set; }
             public string Day15 { get; set; }
             public string Day16 { get; set; }
             public string Day17 { get; set; }
             public string Day18 { get; set; }
             public string Day19 { get; set; }
             public string Day20 { get; set; }

             public string Day21 { get; set; }
             public string Day22 { get; set; }
             public string Day23 { get; set; }
             public string Day24 { get; set; }
             public string Day25 { get; set; }
             public string Day26 { get; set; }
             public string Day27 { get; set; }
             public string Day28 { get; set; }
             public string Day29 { get; set; }
             public string Day30 { get; set; }

             public string Day31 { get; set; }

             public int totalWorkingDays{ get; set; }
             
             public int totalPresentDays { get; set; }

             
         }


         //public void SaveAttendance(DBSite site, List<AttendanceEntity> attdList)
         //{ 

         //    string qry = "";


         //    foreach (AttendanceEntity atd in attdList)
         //    {
                
         //     qry = " INSERT INTO tblAttendance ("
         //           + " YearNo, MonthNo, DayNo, HolydayID, StudentMasterID, InTime, OutTime, Status, IsPosted, IsSMSSent, UserId, SubUserId, FYear )"
         //           + " VALUES ( "
         //            + atd.YearNo 
         //           +  ", " + atd.MonthNo 
         //           + "," + atd.DayNo 
         //           + "," +  atd.StudentId
         //           + ", '" + atd.InTime + "'"
         //           + ", '" + atd.OutTime + "'"
         //           + ", " + atd.Status 
         //           + ", " + atd.IsPosted 
         //           + ", " + atd.IsSMSSent ;
         //        qry +=", "+ util.GetUserInsertQry(Util_BLL.User);
         //        qry +=   " ) ";


         //       site.Execute(qry);

         //    }


         //   }


         //public List<AttendanceByMonthEntity> GetAttendanceByMonth(int yearNo, int monthNo, int SchoolClassId)
         //{
         //    List<AttendanceByMonthEntity> attendance_list = new List<AttendanceByMonthEntity>();

         //    AttendanceByMonthEntity abm;
             

         //    string qry = "SELECT * FROM vwAttendanceByMonth "
         //         + Util_BLL.GetUserWhereCondition(Util_BLL.User)
         //         + " AND YearNo = " + yearNo
         //         + " AND MonthNo = " + monthNo;

         //    if (SchoolClassId != -1)
         //        qry += " AND ClassMasterId = " + SchoolClassId;
           

         //    DBSite site2 = new DBSite();
         //    DataTable dt = site2.ExecuteSelect(qry);

         //    foreach (DataRow dr in dt.Rows)
         //    {
         //        abm = new AttendanceByMonthEntity();
         //        abm.StudentId = util.CheckNullInt(dr["StudentMasterID"]);
         //        abm.StudentName = util.CheckNull(dr["StudentName"]);
         //        abm.ClassId = util.CheckNullInt(dr["ClassMasterId"]);
         //        abm.ClassName = util.CheckNull(dr["ClassName"]);
         //        abm.YearNo = util.CheckNullInt(dr["YearNo"]);
         //        abm.MonthNo = util.CheckNullInt(dr["MonthNo"]);
         //        abm.Day1 = util.CheckNull(dr["Day1"]);
         //        abm.Day2 = util.CheckNull(dr["Day2"]);
         //        abm.Day3 = util.CheckNull(dr["Day3"]);
         //        abm.Day4 = util.CheckNull(dr["Day4"]);
         //        abm.Day5 = util.CheckNull(dr["Day5"]);
         //        abm.Day6 = util.CheckNull(dr["Day6"]);
         //        abm.Day7 = util.CheckNull(dr["Day7"]);
         //        abm.Day8 = util.CheckNull(dr["Day8"]);
         //        abm.Day9 = util.CheckNull(dr["Day9"]);
         //        abm.Day10 = util.CheckNull(dr["Day10"]);
         //        abm.Day11 = util.CheckNull(dr["Day11"]);
         //        abm.Day12 = util.CheckNull(dr["Day12"]);
         //        abm.Day13 = util.CheckNull(dr["Day13"]);
         //        abm.Day14 = util.CheckNull(dr["Day14"]);
         //        abm.Day15 = util.CheckNull(dr["Day15"]);
         //        abm.Day16 = util.CheckNull(dr["Day16"]);
         //        abm.Day17 = util.CheckNull(dr["Day17"]);
         //        abm.Day18 = util.CheckNull(dr["Day18"]);
         //        abm.Day19 = util.CheckNull(dr["Day19"]);
         //        abm.Day20 = util.CheckNull(dr["Day20"]);
         //        abm.Day21 = util.CheckNull(dr["Day21"]);
         //        abm.Day22 = util.CheckNull(dr["Day22"]);
         //        abm.Day23 = util.CheckNull(dr["Day23"]);
         //        abm.Day2 = util.CheckNull(dr["Day24"]);
         //        abm.Day25 = util.CheckNull(dr["Day25"]);
         //        abm.Day26 = util.CheckNull(dr["Day26"]);
         //        abm.Day27 = util.CheckNull(dr["Day27"]);
         //        abm.Day28 = util.CheckNull(dr["Day28"]);
         //        abm.Day29 = util.CheckNull(dr["Day29"]);
         //        abm.Day30 = util.CheckNull(dr["Day30"]);
         //        abm.Day31 = util.CheckNull(dr["Day31"]);

                 

         //        attendance_list.Add(abm);
         //    }

         //    return attendance_list;

         //}


         //public List<AttendanceEntity> GetAttendanceByDate(string fromDate, int SchoolClassId)
         //{

         //    DateTime enteredDate = DateTime.Today;

         //    int year_no = 2014;

         //    int month_no = 5;
         //    int day_no = 5;

         //    if (fromDate != null)
         //        enteredDate = DateTime.Parse(fromDate);

         //    year_no = enteredDate.Year;
         //    month_no = enteredDate.Month;
         //    day_no = enteredDate.Day;

         //    DBSite site2 = new DBSite();
         //    return GetAttendance(site2, year_no, month_no, day_no, SchoolClassId, false);
         //}


         public List<AttendanceEntity> GetAttendance(DBSite site, int yearNo, int theMonth, int theDay, int clasId, bool onlyAbsentees)
         {

             List<AttendanceEntity> adList = new List<AttendanceEntity>();
             AttendanceEntity da = null;

             string qry = "";
             qry = "SELECT AttendanceId, YearNo, MonthNo, DayNo, HolidayID "

             + ", a.StudentMasterID, StudentName, s.classID,  MobileF , ClassName, s.SectionId, sc.SectionName, s.IdCardNo "
              +" , InTime "

              + " , OutTime, Status "
             + ", IsPosted "
             + " , IsSmsSent "
              + " FROM tblAttendance a "
              + " LEFT OUTER JOIN tblStudentMaster s ON s.StudentMasterID = a.StudentMasterID "
              + " LEFT OUTER JOIN tblClassMaster C ON c.classMasterID = s.classID  "
              + " LEFT OUTER JOIN tblSectionMaster sc ON sc.SectionMasterID = s.SectionId    "
              + Util_BLL.GetUserWhereCondition("a")
              + " AND YearNo = " + yearNo
              + " AND MonthNo = " + theMonth
              + " AND DayNo = " + theDay;

             if (onlyAbsentees)
                 qry += " AND status = 0 ";
             if (clasId != -1)
                 qry += " AND c.classMasterID = " + clasId;

            
             DataTable dt = site.ExecuteSelect(qry);
             foreach (DataRow dr in dt.Rows)
             {
                 da = new AttendanceEntity();

                 da.AttendanceId = util.CheckNullInt(dr["AttendanceId"]);
                 da.YearNo = util.CheckNullInt(dr["YearNo"]);
                 da.MonthNo = util.CheckNullInt(dr["MonthNo"]);
                 da.DayNo = util.CheckNullInt(dr["DayNo"]);
                 da.HolidayId = util.CheckNullInt(dr["HolidayID"]);

                 da.StudentId = util.CheckNullInt(dr["StudentMasterID"]);
                 da.StudentName = util.CheckNull(dr["StudentName"]);

                 da.MobileNo = util.CheckNull(dr["MobileF"]);

                 da.ClassId = util.CheckNullInt(dr["ClassID"]);
                 da.ClassName = util.CheckNull(dr["ClassName"]);

                 da.SectionId = util.CheckNullInt(dr["SectionID"]);
                 da.SectionName = util.CheckNull(dr["SectionName"]);

                 da.IdcardNo = util.CheckNull(dr["IdCardNo"]);

                 da.InTime = util.CheckNull(dr["InTime"]);
                 da.OutTime = util.CheckNull(dr["OutTime"]);


                 da.IsPosted = util.CheckNullInt(dr["IsPosted"]);
                 da.IsSMSSent = util.CheckNullInt(dr["IsSMSSent"]);
                 da.Status = util.CheckNullInt(dr["status"]);

                 //if (da.IsPosted==0)
                 //    da.Status = 1;


                 adList.Add(da);

             }
             SendSMSToParents.WriteErrorLog("GetAttendance : " + qry);

             return adList;

         }



        public List<AttendanceEntity> GetAttendance2MAy19(DBSite site, int yearNo, int theMonth, int theDay, int clasId,  bool onlyAbsentees)
         {

             List<AttendanceEntity> adList = new List<AttendanceEntity>();
             AttendanceEntity da = null;
            
            string qry = "";
            qry = "SELECT AttendanceId, YearNo, MonthNo, DayNo, HolidayID "

            + ", a.StudentMasterID, StudentName, s.classID,  MobileF , ClassName, s.SectionId, sc.SectionName, s.IdCardNo "
            + "  , (SELECT MIN(InTime) FROM tblAttendance "
            + Util_BLL.GetUserWhereCondition( "a")
            + " AND YearNo = " + yearNo 
            + " AND MonthNo = " + theMonth
             + " AND DayNo = " + theDay
             + " AND studentmasterid=s.studentMasterID  "
             + " GROUP BY StudentMasterID, YearNo, monthno, dayno, userId, FYear )InTime "

             + " , OutTime, Status "
            + ", IsPosted "
            + " , (select MAX(IsSMSSent) FROM tblAttendance where dayNo=" + theDay + " AND STUDENTMASTERID = s.studentMasterID GROUP BY StudentMasterID)  IsSmsSent "
             + " FROM tblAttendance a "
             + " LEFT OUTER JOIN tblStudentMaster s ON s.StudentMasterID = a.StudentMasterID "
             + " LEFT OUTER JOIN tblClassMaster C ON c.classMasterID = s.classID  "
             + " LEFT OUTER JOIN tblSectionMaster sc ON sc.SectionMasterID = s.SectionId    "
             + Util_BLL.GetUserWhereCondition("a")
             + " AND YearNo = " + yearNo 
             + " AND MonthNo = " + theMonth
             + " AND DayNo = " + theDay;

             if (onlyAbsentees)
                 qry += " AND status = 0 ";
             if (clasId != -1)
                 qry += " AND c.classMasterID = " + clasId;

             qry +=  " AND AttendanceID In (select MAx(AttendanceID)  "
             + " FROM tblAttendance b"
             + Util_BLL.GetUserWhereCondition( "b")
             + " GROUP BY  StudentMasterID, YearNo, monthno, dayno, userId, FYear  ) "
             + " ORDER BY ClassOrder,sectionName, StudentName ";

            
           SendSMSToParents.WriteErrorLog("GetAttendance qry " + qry);
            
            DataTable dt = site.ExecuteSelect(qry);
            foreach (DataRow dr in dt.Rows)
            {
                da = new AttendanceEntity();

                da.AttendanceId = util.CheckNullInt(dr["AttendanceId"]);
                da.YearNo = util.CheckNullInt(dr["YearNo"]);
                da.MonthNo = util.CheckNullInt(dr["MonthNo"]);
                da.DayNo = util.CheckNullInt(dr["DayNo"]);
                da.HolidayId = util.CheckNullInt(dr["HolidayID"]);

                da.StudentId = util.CheckNullInt(dr["StudentMasterID"]);
                da.StudentName = util.CheckNull(dr["StudentName"]);

                da.MobileNo = util.CheckNull(dr["MobileF"]);

                da.ClassId = util.CheckNullInt(dr["ClassID"]);
                da.ClassName = util.CheckNull(dr["ClassName"]);

                da.SectionId = util.CheckNullInt(dr["SectionID"]);
                da.SectionName = util.CheckNull(dr["SectionName"]);

                da.IdcardNo = util.CheckNull(dr["IdCardNo"]);

                da.InTime = util.CheckNull(dr["InTime"]);
                da.OutTime = util.CheckNull(dr["OutTime"]);

                
                da.IsPosted = util.CheckNullInt(dr["IsPosted"]);
                da.IsSMSSent = util.CheckNullInt(dr["IsSMSSent"]);
                da.Status = util.CheckNullInt(dr["status"]);

                //if (da.IsPosted==0)
                //    da.Status = 1;
               

                adList.Add(da);

            }


            return adList;

         }


         public void PostAttendance(DBSite site, List<AttendanceEntity> attdList)
         {
             // update tblAttendance

             string qry = "";

             foreach (AttendanceEntity atd in attdList)
             {

                 qry = " UPDATE tblAttendance SET "
                       +  " Status =  " + atd.Status 
                       +  ", IsPosted = 1 "  
                       + " WHERE AttendanceId = " + atd.AttendanceId;
    
                 site.Execute(qry);

             }

         }


         public string GetClassName(DBSite site, int attdId)
         {


             string clasName = "";
             string qry = " SELECT className  "
                           + " from tblClassMaster c "
                        + " LEFT OUTER JOIN tblStudentMaster s ON s.classID = c.ClassMasterID "
                        + " LEFT OUTER JOIN tblAttendance a ON a.StudentMasterID = s.StudentMasterID "
                        + " WHERE a.attendanceID =" + attdId ;

             DataTable dt = site.ExecuteSelect(qry);
             foreach (DataRow dr in dt.Rows)
             {
                 clasName = util.CheckNull(dr["className"]);
             }

             return clasName;
         }



         public class SchoolClass
         {

             public int SchoolClassId { get; set; }
             public string SchoolClassName { get; set; }
             public int SchoolClassOrder { get; set; }
         }


         //public List<SchoolClass> GetClasses()
         //{
         //   List<SchoolClass> class_list = new List<SchoolClass>();
             
         //   DBSite site = new DBSite(); 
         //   string qry = " SELECT "
         //             + " ClassMasterID"
         //             + ", ClassName"
         //             + " FROM tblClassMaster "

         //           + " WHERE UserId=" + Util_BLL.User.UserId   
         //           + " ORDER By ClassOrder ";

         //   DataTable dt = site.ExecuteSelect(qry);

         //   SchoolClass the_class;

         //   foreach (DataRow row in dt.Rows)
         //   {
         //       the_class = new SchoolClass();

         //       the_class.SchoolClassId = util.CheckNullInt(row["ClassMasterID"]);
         //       the_class.SchoolClassName = util.CheckNull (row["ClassName"]);

         //       class_list.Add(the_class);
         //   }

         //   return class_list;
         //}


         public string GetMobileNo(DBSite site, int attdId)
         {
             string mobileNos = "";

                         

             string qry = "SELECT  MobileF "
                        + " from tblAttendance a "
                        + " INNER JOIN tblStudentMaster s ON s.StudentMasterID = a.StudentMasterID "
                        + " WHERE attendanceID = " + attdId ;


             DataTable dt = site.ExecuteSelect(qry);
             foreach (DataRow dr in dt.Rows)
             {
                 mobileNos += util.CheckNull(dr["MobileF"]) + ", ";
             }

             return mobileNos;
         }


         public string GetMobileNos(DBSite site, List<AttendanceEntity> attdList)
         {
             string mobileNos = "";

             string attdIds = "";

             foreach (AttendanceEntity atd in attdList)
             {
                 attdIds += atd.AttendanceId  + ", ";
             }
             attdIds += "-1111";

             string qry = "SELECT  MobileF "
                        + " from tblAttendance a "
                        + " INNER JOIN tblStudentMaster s ON s.StudentMasterID = a.StudentMasterID "
                        + " WHERE attendanceID IN (" + attdIds + ") ";


              DataTable dt = site.ExecuteSelect(qry);
              foreach (DataRow dr in dt.Rows)
              {
                  mobileNos += util.CheckNull(dr["MobileF"]) + ", ";
              }

             return mobileNos;
         }


         public bool IsSMSSent(DBSite site, int attdId)
         {

             bool isSMSAlreadySent = false;


             string qry = "select IsSMSSent from tblAttendance  where attendanceID =" + attdId ;
             DataTable dt = site.ExecuteSelect(qry);
             foreach (DataRow dr in dt.Rows)
             {
                 isSMSAlreadySent = util.CheckNullInt(dr["IsSMSSent"]) == 1;
             }


             return isSMSAlreadySent;

         }

         public void PostSMS(DBSite site, List<AttendanceEntity> attdList)
         {
             // update tblAttendance

             string qry = "";

             foreach (AttendanceEntity atd in attdList)
             {

                 qry = " UPDATE tblAttendance SET "
                       + " IsSMSSent = 1 "
                       + " WHERE AttendanceId = " + atd.AttendanceId;

                 site.Execute(qry);

             }

         }

         public void PostSMS(DBSite site, int atId, int smsStatus)
         {
             // update tblAttendance

             string qry = "";

             
                 qry = " UPDATE tblAttendance SET "
                       + " IsSMSSent =" + smsStatus
                       + " WHERE studentMasterID = " + atId;

                 site.Execute(qry);

             

         }



         //public void ProcessManualAttendance(DBSite site, int yr, int mnth, int dey, int isHoliday)
         //{

         //    // Insert records in tblAttendance when page loads

         //    string qry = "INSERT INTO tblAttendance(YearNo, MonthNo, DayNo, HolidayId "
         //               + " , StudentMasterID,  UserID, SubUserID, FYear)  "
         //               + " SELECT "+yr+", "+mnth +", "+dey+", "+isHoliday+", StudentMasterID,  "
         //               + util.GetUserInsertQry(Util_BLL.User)
         //               + " FROM tblStudentMaster s "
         //               +  Util_BLL.GetUserWhereCondition(Util_BLL.User)
         //               + " AND NOT EXISTS(SELECT MonthNo, DayNo, StudentMasterID "
         //               + " FROM tblAttendance a "
         //               + " WHERE a.StudentMasterID = s.StudentMasterID "
         //               + " AND a.YearNo="+yr+"  AND a.MonthNo = "+mnth +" AND a.DayNo = "+dey+") ";

         //    site.Execute(qry);


         //}

         public bool IsDuplicate(DBSite site, int mnth, int dey, int StudentId)
         {
             bool isDup = false;

             return isDup;
         }



         public void AddStudentDataInAttdencance(DBSite site, int yr, int mnth, int dey, int isHoliday)
         {

             // Insert records in tblAttendance when page loads from attendance machine


             string qry = " INSERT INTO tblAttendance(YearNo, MonthNo, DayNo, HolidayId "
                    + ", status, InTime, OutTime, StudentMasterID, UserID, SubUserID, FYear) "
                    + " SELECT " + yr + ", " + mnth + ", " + dey + ", " + isHoliday + ", 0  "
                    + " , null, null, s.StudentMasterID,  "
                    + util.GetUserInsertQry()
                    + " FROM tblStudentMaster s  "
                    + " LEFT OUTER JOIN tblAttendance  a ON a.StudentMasterID = s.StudentMasterID "
                    + " AND DayNo = " + dey + " and monthNo = " + mnth + " and YearNo = " + yr
                    + Util_BLL.GetUserWhereCondition(Util_BLL.User, "2014", "s")

                    + " AND NOT EXISTS(SELECT YearNo, MonthNo, DayNo, StudentMasterID, outtime "
                    + "    FROM tblAttendance a "
                    + "   WHERE a.StudentMasterID = s.StudentMasterID "
                    + "   AND YearNo = " + yr + " AND a.MonthNo =" + mnth + " AND a.DayNo = " + dey + " ) ";


             SendSMSToParents.WriteErrorLog("AddStudentDataInAttdencance " + qry);
             site.Execute(qry);


         }


         public string  GetlogDate(DBSite site, int yr, int mnth, int dey, int attendanceId, string IdCardNo, string InTime_OutTime)
         {
                string log_date = "";
                string subQry = "";
                string esslTbl = "etimetracklite1.dbo.DeviceLogs_" + mnth + "_" + yr;

                string whereQry = " WHERE day(logdate)=" + dey
                               + " AND MONTH(logdate)=" + mnth
                               + " AND YEAR(LogDate) = " + yr
                               + " AND UserId = " + IdCardNo;

                if (InTime_OutTime == "INTIME")
                {
                    subQry = " SELECT MIN(logdate) punch "
                               + " FROM " + esslTbl
                               + whereQry;

                }
                else if(InTime_OutTime == "OUTTIME")
                {   
                    subQry = " SELECT MIN(logdate) punch "
                               + " FROM " + esslTbl
                               + whereQry
                               + " AND  LogDate > "
                               + " (SELECT dateadd(MINUTE, 60, MIN(logdate)) "
                               + " FROM " + esslTbl
                               + whereQry + ")";


                }

                DataTable dt = site.ExecuteSelect(subQry);
                foreach (DataRow dr in dt.Rows)
                {
                    log_date = util.CheckNull(dr["punch"]);
                }

                SendSMSToParents.WriteErrorLog("logdate qry "  + subQry);
                return log_date;
         }


         public void UpDateInTime_OutTime(DBSite site, string logdate, int attendanceId, int status, string InTime_OutTime)
         {

             string qry="";
             
             qry = " UPDATE tblAttendance  "
                           + " SET " + InTime_OutTime + " = '" + logdate +"'"
                           + ", status = "+ status
                           + " WHERE AttendanceID = " + attendanceId;

             //SendSMSToParents.WriteErrorLog("UpDateInTime_OutTime " + qry);
             site.Execute(qry);
         }





         public void ProcessMachineAttendance(DBSite site, int yr, int mnth, int dey, int isHoliday)
         {

             // Insert records in tblAttendance when page loads from attendance machine


             string esslTbl = "etimetracklite1.dbo.DeviceLogs_" + mnth + "_" + yr;


             string qry = " INSERT INTO tblAttendance(YearNo, MonthNo, DayNo, HolidayId "
                    + ", status, InTime, OutTime, StudentMasterID, UserID, SubUserID, FYear) "
                    + " SELECT " + yr + ", " + mnth + ", " + dey + ", " + isHoliday + ", (CASE WHEN Min(logDate) is Null THEN 0 ELSE 1 END) status  "
                    + " , Min(logDate), MAX(logDate), s.StudentMasterID,  "
                    + util.GetUserInsertQry()
                    + " FROM tblStudentMaster s  "
                    + " LEFT OUTER JOIN " +esslTbl+ " e ON e.UserID=s.IDCardNO "
                    + " AND Day(logDate) = " + dey + " and month(logDate) = " + mnth
                    + Util_BLL.GetUserWhereCondition(Util_BLL.User, "2014", "s")

                    + " AND NOT EXISTS(SELECT YearNo, MonthNo, DayNo, StudentMasterID, outtime "
                    + "    FROM tblAttendance a "
                    + "   WHERE a.StudentMasterID = s.StudentMasterID "
                    + "   AND outTime is Null AND YearNo = " + yr + " AND a.MonthNo =" + mnth + " AND a.DayNo = " + dey + " ) "

                    + " GROUP BY s.StudentMasterID "


                    + " UNION  "


                    + " SELECT " + yr + ", " + mnth + ", " + dey + ", " + isHoliday + ", (CASE WHEN Min(logDate) is Null THEN 0 ELSE 1 END) status  "
                    + " , Min(logDate), MAX(logDate), s.StudentMasterID,  "
                    + util.GetUserInsertQry()
                    + " FROM tblStudentMaster s  "
                    + " INNER JOIN " + esslTbl + " e ON e.UserID=s.IDCardNO"
                    + " AND Day(logDate) = " + dey + " and month(logDate) = " + mnth + " AND year(logDate) = " + yr
                    + Util_BLL.GetUserWhereCondition(Util_BLL.User, "2014", "s")

                    + " AND NOT EXISTS(SELECT YearNo, MonthNo, DayNo, StudentMasterID, outtime "
                    + "    FROM tblAttendance a "
                    + "   WHERE a.StudentMasterID = s.StudentMasterID "
                    + "  AND outtime = logDate AND year(logDate) = " + yr + " AND a.MonthNo =" + mnth + " AND a.DayNo = " + dey + " ) "

                    + " GROUP BY s.StudentMasterID ";

             //SendSMSToParents.WriteErrorLog("qry Process Machine  " + qry);

             site.Execute(qry);

         }

         public int GetPunchCount(DBSite site, int IDCard, int day, int mnth, int yr, bool isExit)
         {
             int punchCount = 0;

             string tbl = "etimetracklite1.dbo.DeviceLogs_" + mnth + "_" + yr;

             string whereStr = "   WHERE USerID=" + IDCard
                               + " AND DAY(logDate) = " + day
                               + " AND MONTH(logDate) = " + mnth
                               + " AND Year(logDate) = " + yr;


             string qry = " SELECT COUNT(*) theCount FROM " + tbl + whereStr;
                          
             // When exit : at least 1 hr gap between first punch and the second punch
             if (isExit)
             {
                 qry = " SELECT count(logdate) theCount FROM " + tbl + whereStr 
                            +  " AND LogDate > 	( SELECT dateadd(MINUTE, 60, MIN(logdate)) "
                                                +  " FROM " + tbl + whereStr + ")";
              }


             DataTable dt = site.ExecuteSelect(qry);
             foreach (DataRow dr in dt.Rows)
             {
                 punchCount = util.CheckNullInt(dr["theCount"]);
             }


             return punchCount;
         }



         public List<AttendanceEntity> GetNonPostedAttendance(DBSite site)
         {
             List<AttendanceEntity> atdList = new List<AttendanceEntity>();


             return atdList;
         }


    }
}
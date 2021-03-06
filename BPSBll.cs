﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;

namespace AccountingSoftware.BLL
{
    public class BPSBll
    {
        Util_BLL util = new Util_BLL();

        public class ReportCardCBSEEntity
        {
            public int StudentMasterId { get; set; }
            public string StudentName { get; set; }
            public string FatherName { get; set; }
            public string MotherName { get; set; }
            public string DOB { get; set; }
            public string AdmNo { get; set; }
            public string ClassName { get; set; }
            public string SectionName { get; set; }
            public string SectionCode { get; set; }

            public string Subject { get; set; }

            public string PT1 { get; set; }
            public string NoteBook1 { get; set; }
            public string SEA1 { get; set; }
            public string HalfYearly { get; set; }


            public string PT2 { get; set; }
            public string NoteBook2 { get; set; }
            public string SEA2 { get; set; }
            public string Yearly { get; set; }

            
            public string PT3 { get; set; }
            public string PT4 { get; set; }

            public string PT3_MM { get; set; }
            public string PT4_MM { get; set; }


            public string PT11 { get; set; }
            public string PT12 { get; set; }
            public string PT13 { get; set; }
            public string PT14 { get; set; }


            public string PT15 { get; set; }
            public string PT16 { get; set; }
            public string PT17 { get; set; }
            public string PT18 { get; set; }
            public string PT19 { get; set; }
            public string PT20 { get; set; }

            public string PT21 { get; set; }
            public string PT22 { get; set; }
            public string PT23 { get; set; }
            public string PT24 { get; set; }

            public string PT25 { get; set; }
            public string PT26 { get; set; }
            public string PT27 { get; set; }
            public string PT28 { get; set; }

            public string PT29 { get; set; }
            public string PT30 { get; set; }
            public string PT31 { get; set; }
            public string PT32 { get; set; }

            public string PT41 { get; set; }
            public string PT42 { get; set; }
            public string PT43 { get; set; }
            public string PT44 { get; set; }

            public string PT45 { get; set; }
            public string PT46 { get; set; }
            public string PT47 { get; set; }
            public string PT48 { get; set; }

            public string PT49 { get; set; }
            public string PT50 { get; set; }
            public string PT51 { get; set; }
            public string PT52 { get; set; }

            public string PT53 { get; set; }
            public string PT54 { get; set; }
            public string PT55 { get; set; }
            public string PT56 { get; set; }

            public string PT57 { get; set; }
            public string PT58 { get; set; }


            public string PT41_MM { get; set; }
            public string PT42_MM { get; set; }
            public string PT43_MM { get; set; }
            public string PT44_MM { get; set; }

            public string PT45_MM { get; set; }
            public string PT46_MM { get; set; }
            public string PT47_MM { get; set; }
            public string PT48_MM { get; set; }

            public string PT49_MM { get; set; }
            public string PT50_MM { get; set; }
            public string PT51_MM { get; set; }
            public string PT52_MM { get; set; }

            public string PT53_MM { get; set; }
            public string PT54_MM { get; set; }
            public string PT55_MM { get; set; }
            public string PT56_MM { get; set; }

            public string PT57_MM { get; set; }
            public string PT58_MM { get; set; }
            
            

            public string PT11_MM { get; set; }
            public string PT12_MM { get; set; }
            public string PT13_MM { get; set; }
            public string PT14_MM { get; set; }


            public string PT15_MM { get; set; }
            public string PT16_MM { get; set; }
            public string PT17_MM { get; set; }
            public string PT18_MM { get; set; }
            public string PT19_MM { get; set; }
            public string PT20_MM { get; set; }

            public string PT21_MM { get; set; }
            public string PT22_MM { get; set; }
            public string PT23_MM { get; set; }
            public string PT24_MM { get; set; }

            public string PT25_MM { get; set; }
            public string PT26_MM { get; set; }
            public string PT27_MM { get; set; }
            public string PT28_MM { get; set; }

            public string PT29_MM { get; set; }
            public string PT30_MM { get; set; }
            public string PT31_MM { get; set; }
            public string PT32_MM { get; set; }
            



            public int PT1_MM { get; set; }
            public int NoteBook1_MM { get; set; }
            public int SEA1_MM { get; set; }
            public int HalfYearly_MM { get; set; }

            public int PT2_MM { get; set; }
            public int NoteBook2_MM { get; set; }
            public int SEA2_MM { get; set; }
            public int Yearly_MM { get; set; }


            public string PT1_Code { get; set; }
            public string NoteBook1_Code { get; set; }
            public string SEA1_Code { get; set; }
            public string HalfYearly_Code { get; set; }

            public string PT2_Code { get; set; }
            public string NoteBook2_Code { get; set; }
            public string SEA2_Code { get; set; }
            public string Yearly_Code { get; set; }


            public decimal SubjectTotal_HalfYearly { get; set;}
            public decimal SubjectTotal_MM_HalfYearly { get; set; }
            public decimal SubjectTotal_Percent_HalfYearly { get; set; }
            public string SubjectTotal_Grade_HalfYearly { get; set; }
            

            public decimal Total_HalfYearly { get; set; }
            public decimal Total_MM_HalfYearly { get; set; }
            public decimal Total_Percent_HalfYearly { get; set; }
            public string Total_Grade_HalfYearly { get; set; }
            public string Total_Remarks_HalfYearly { get; set; }
            public int PositionInClass_HalfYearly { get; set; }


            public decimal SubjectTotal_Yearly { get; set; }
            public decimal SubjectTotal_MM_Yearly { get; set; }
            public decimal SubjectTotal_Percent_Yearly { get; set; }
            public string SubjectTotal_Grade_Yearly { get; set; }
            
            public decimal Total_Yearly { get; set; }
            public decimal Total_MM_Yearly { get; set; }
            public decimal Total_Percent_Yearly { get; set; }
            public string Total_Grade_Yearly { get; set; }
            public string Total_Remarks_Yearly { get; set; }
            public int PositionInClass_Yearly { get; set; }

            public decimal OverAll_SumTotal { get; set; }
            public decimal OverAll_SumTotal_MM { get; set; }
            public decimal OverAll_Percent { get; set; }
            public string OverAll_Grade { get; set; }
            public string OverAll_Remarks{ get; set; }
            



            public int SubUserID { get; set; }
            public int UserID { get; set; }
            public int FYear { get; set; }

        }

        
        public class ScholasticEntity
        {

            public string Subject { get; set; }

            public string PerTest1 { get; set; }
            public string NoteBook1 { get; set; }
            public string SEA1 { get; set; }
            public string HalfYearly { get; set; }


            public string PerTest2 { get; set; }
            public string NoteBook2 { get; set; }
            public string SEA2 { get; set; }
            public string Yearly { get; set; }

        }

        public class CoScholasticEntity
        {

            public string Subject { get; set; }
            public string HalfYearly { get; set; }
            public string Yearly { get; set; }

        }

        public class DisciplineEntity
        {

            public string Subject { get; set; }
            public string HalfYearly { get; set; }
            public string Yearly { get; set; }

        }


        

        public string GetGradeRemarks(decimal total_marks, bool isGrade)
        {
            string grade = "E";
            string remarks = "Good";

            if (total_marks >=  (decimal)90.5 && total_marks <= 100)
            {
                grade = "A1";
                remarks = "Excellent ! Keep It Up";
            }
            else if (total_marks >= (decimal)80.5 && total_marks < (decimal)90.5)
            {
                grade = "A2";
                remarks = "Very Very Good!";
            }
            else if (total_marks >= (decimal)70.5 && total_marks < (decimal)80.5)
            {
                grade = "B1";
                remarks = "Very Good!";
            }
            else if (total_marks >= (decimal)60.5 && total_marks < (decimal)70.5)
            {
                grade = "B2";
                remarks = "Good!";
            }

            else if (total_marks >= (decimal)50.5 && total_marks < (decimal)60.5)
            {
                grade = "C1";
                remarks = "Good! can do better";
            }

            else if (total_marks >= (decimal)40.5 && total_marks < (decimal)50.5)
            {
                grade = "C2";
                remarks = "Fine";
            }
            else if (total_marks >= (decimal)32.5 && total_marks < (decimal)40.5)
            {
                grade = "D";
                remarks = "Fair!";
            }
            else if (total_marks < (decimal)32.5)
            {
                grade = "E";
                remarks = "Needs Improvement!";
            }
           

            if(isGrade)
                return grade;
            else
                return remarks;
        }

        public string  BestOfTwo(string  pt1, string pt2)
        {
            string  pt = "0";
            decimal pt1Dec = util.CheckNullDecimal(pt1);
            decimal pt2Dec = util.CheckNullDecimal(pt2);



            if (pt2Dec > pt1Dec)
            {
                pt = pt2Dec.ToString();
            }
            else
            {
                pt = pt1Dec.ToString();
            }

            return pt;

        }


        public decimal CheckMedicalOrAbsent(decimal mrks, bool isMM)
        {
            // if -1 then Medical then Omit MM
            // if -2 then Absent do not omit MM

           // Medical Leave
            if (mrks == -1)
                return 0;
            // Absent    
            else if (mrks == -2)
            {
                
                if (!isMM)
                    return 0;
                else
                    return mrks;
            }
            else
                return mrks;
        }


        public decimal GetTotal(ReportCardCBSEEntity rc, bool isHalfYearly, bool isMM)
        {

            if (Util_BLL.User.UserName.StartsWith("Little"))
            {
                return GetTotal_LA(rc, isHalfYearly, isMM);
                
            }
            else if (Util_BLL.User.UserName.StartsWith("DPS"))
            {
                return GetTotal_DPS(rc, isHalfYearly, isMM);
            }

            else if (Util_BLL.User.UserName.StartsWith("BPS"))
            {
                return GetTotal_BPS(rc, isHalfYearly, isMM);
            }
             

            decimal first_Term_total = 0;
            decimal second_Term_total = 0;
            decimal total = 0;

            // 444

           

            // PT13
            Decimal practical1 = 0; //PT11
            Decimal halfYearly1 = 0; //PT13

            Decimal practical2 = 0; //PT12
            Decimal Yearly2 = 0; // PT14

            Decimal practical1_MM = 0;// PT11_MM
            Decimal halfYearly1_MM = 0; // PT13_MM


            Decimal practical2_MM = 0; // PT12_MM
            Decimal Yearly2_MM = 0; // PT14_MM


            Decimal best = 0;
            
            string theClass = util.CheckNull(rc.ClassName).Trim();
            

            if (theClass.StartsWith("XI"))
            {
                practical1 = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT11), isMM);

                halfYearly1 = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT13), isMM);

                practical2 = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT12), isMM);
                Yearly2 = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT14), isMM);

                ////MM
                practical1_MM = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT11_MM), isMM);

                halfYearly1_MM = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT13_MM), isMM);

                practical2_MM = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT12_MM), isMM);
                Yearly2_MM = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT14_MM), isMM);
                
            }


            if (isHalfYearly)
            {
                if (!isMM)
                {
                                       
                   // Guru Nanak
                    //best = util.CheckNullDecimal(BestOfTwo(CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1), false).ToString(), CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2), false).ToString()));
                    
                    //little angles
                    best = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1), isMM);
                    
                    first_Term_total = 
                                    // CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1), isMM)
                                    best 
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1), isMM)
                                    //Gurur Nakak Practical PT13 PT14
                                    + practical1 
                                    + halfYearly1 
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly), isMM);
                }
                else
                {
                    first_Term_total = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1_MM), isMM)
                                    //Gurur Nakak Practical PT13 PT14

                                    + practical1_MM 
                                    + halfYearly1_MM 
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly_MM), isMM);
                }
            }
            else // Second Term
            {

                if (!isMM)
                {
                    // guru nanak Practical 2


                    if (!theClass.StartsWith("XI"))
                    {
                        practical2 = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT16), isMM);
                        Yearly2 = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT18), isMM);

                        practical2_MM = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT16_MM), isMM);
                        Yearly2 = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT18_MM), isMM);
                    }

                    // Guru Nanak
                    //best = util.CheckNullDecimal(BestOfTwo(CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT3), false).ToString(), CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT4), false).ToString()));
                    
                    // Little Angels
                    best = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2), isMM);

                    second_Term_total = 
                                    //CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT3), isMM)   // for guruNanak
                                    //CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2), isMM)  // for BPS

                                     best 

                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2), isMM)
                                    
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2), isMM)
                        //Gurur NakakPractical PT13 PT14  999
                                    + practical2 
                                    + Yearly2
                                    
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly), isMM);
                }
                else
                {
                    second_Term_total = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2_MM), isMM)
                                    
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2_MM), isMM)
                        //Gurur NakakPractical PT13 PT14
                                    + practical2_MM + Yearly2_MM
                                    
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly_MM), isMM);
                }
            }

            if (isHalfYearly)
                total = first_Term_total;
            else
                total = second_Term_total;

            return total;
        }


        public decimal GetOverAllMarks_BPSOld(DataTable dt, bool isMM, bool isHalfYearly)
        {
            decimal overallMarks = 0;

          /// 555
              foreach (DataRow dr in dt.Rows)
                {
                    // Marks Obtained
                    if (!isMM)
                    {
                        overallMarks +=               CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1"]), false)
                                                      + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest2"]), false)
                                                      + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly"]), false)
                                                      + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly"]), false);  

                    }
                    else
                    {
                        overallMarks += util.CheckNullDecimal(dr["PerTest1_MM"])
                                                      + util.CheckNullDecimal(dr["PerTest2_MM"])
                                                      + util.CheckNullDecimal(dr["HalfYearly_MM"])
                                                      + util.CheckNullDecimal(dr["Yearly_MM"]);
                              

                    }
   


                
            }



            return overallMarks;

        }



        

        public decimal GetOverAllMarks_LA(DataTable dt, bool isMM, bool isHalfYearly)
        {
            decimal overallMarks = 0;

            string theClass = "";

            bool isNur = false;
            bool is9 = false;
            bool is11 = false;


            /// 555
            foreach (DataRow dr in dt.Rows)
            {

                theClass = util.CheckNull(dr["ClassName"]).Trim();

                if (theClass.StartsWith("Nursery") || theClass.StartsWith("LKG") || theClass.StartsWith("UKG"))
                    isNur = true;

                is9 = theClass.StartsWith("IX");
                is11 = theClass.StartsWith("XI");


                // Marks Obtained
                if (!isMM)
                {
                    
                    if (is9)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT23"]), false)
                            + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT24"]), false);
                    }

                    else if (is11)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT25"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT26"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT13"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT23"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT31"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT29"]), false)

                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT27"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT28"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT14"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT24"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT32"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT30"]), false);
                                    
                    }



                    else if (isNur)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT15"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT16"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT18"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT23"]), false)

                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT21"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT22"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT20"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT24"]), false);
                    }
                    else
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook1"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA1"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly"]), false)

                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest2"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook2"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA2"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly"]), false);

                    }



                                    
                }
                else
                {

                    


                    if (is9)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT23_MM"]), false)
                                     + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT24_MM"]), false);


                    }


                   else if (is11)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT25_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT26_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT13_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT23_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT31_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT29_MM"]), false)

                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT27_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT28_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT14_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT24_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT32_MM"]), false)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT30_MM"]), false);

                    }

                    else if (isNur)
                    {



                        ////////////////
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT15_MM"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT16_MM"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT18_MM"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT23_MM"]), false)

                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT21_MM"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT22_MM"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT20_MM"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT24_MM"]), false);
                    }
                    else
                    {
                        overallMarks += util.CheckNullDecimal(dr["PerTest1_MM"])
                                    + util.CheckNullDecimal(dr["NoteBook1_MM"])
                                    + util.CheckNullDecimal(dr["SEA1_MM"])
                                    + util.CheckNullDecimal(dr["HalfYearly_MM"])

                                    + util.CheckNullDecimal(dr["PerTest2_MM"])
                                    + util.CheckNullDecimal(dr["NoteBook2_MM"])
                                    + util.CheckNullDecimal(dr["SEA2_MM"])
                                    + util.CheckNullDecimal(dr["Yearly_MM"]);
                    }


                }


            }

            return overallMarks;

        }



        public decimal GetOverAllMarks(DataTable dt, bool isMM, bool isHalfYearly)
        {

            if (Util_BLL.User.UserName.StartsWith("Little"))
            {
                return GetOverAllMarks_LA(dt, isMM, isHalfYearly );
            }

            if (Util_BLL.User.UserName.StartsWith("DPS"))
            {
                return GetOverAllMarks_DPS(dt, isMM, isHalfYearly);
            }

            if (Util_BLL.User.UserName.StartsWith("BPS"))
            {
                return GetOverAllMarks_BPS(dt, isMM, isHalfYearly);
            }

            decimal overallMarks = 0;

            // add all subject total marks obtained
            // add all subject total max marks 
            // overAllMarks = (total marks obtained/total max marks)*100

           // add practical marks for class XI

            

            foreach (DataRow dr in dt.Rows)
            {

                // 333
                string theClass = util.CheckNull(dr["ClassName"]).Trim();


                               
                if (!isMM)
                {


                    Decimal practical1 = 0;
                    Decimal practical2 = 0;
                    Decimal HalfYearly2 = 0;
                    Decimal Yearly2 = 0;
                    
                    if(theClass.StartsWith("XI"))
                    {
                        practical1 = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT11"]), false));
                        practical2 = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT12"]), false));
                        HalfYearly2 = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT13"]), false));
                        Yearly2 = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT14"]), false));
                    }

                    
                    // Best OF Two

                    Decimal best = 0;


                    best = util.CheckNullDecimal(BestOfTwo(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1"]), false).ToString(), CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest2"]), false).ToString()));


                    overallMarks += best + practical1 + HalfYearly2 
                                                  + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook1"]), false)
                                                  + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA1"]), false)
                                                  + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly"]), false);
                    


                        if(!isHalfYearly)
                        {
                            best = util.CheckNullDecimal(BestOfTwo(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT3"]), false).ToString(), CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT4"]), false).ToString()));
                            overallMarks += best + practical2 + Yearly2
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook2"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA2"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly"]), false);
                        }
                }
                else
                {
                    // is MM

                    Decimal practical1_mm = 0;
                    Decimal practical2_mm = 0;
                    Decimal HalfYearly2_mm = 0;
                    Decimal Yearly2_mm = 0;

                    if (theClass.StartsWith("XI"))
                    {
                        practical1_mm = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT11_MM"]), false));
                        practical2_mm = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT12_MM"]), false));
                        HalfYearly2_mm = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT13_MM"]), false));
                        Yearly2_mm = util.CheckNullDecimal(CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT14_MM"]), false));
                    }


                    overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1_MM"]), true)
                                                    + practical1_mm +  HalfYearly2_mm 
                                                  + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook1_MM"]), true)
                                                  + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA1_MM"]), true)
                                                  + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly_MM"]), true);

                    if (!isHalfYearly)
                    {

                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest2_MM"]), true)
                            +practical2_mm + Yearly2_mm 
                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook2_MM"]), true)
                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA2_MM"]), true)
                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly_MM"]), true);
                    }
                }
            }

            
            return overallMarks;

        }

        
        


        public string GetCBSEQry_BPS(int studentId, string subjectGroup
                                                   , string unitTest1, string unitTest2
                                                   , string noteBook1, string noteBook2
                                                   , string sea1, string sea2
                                                   , string halfYearly, string yearly
                                                   , string term1, string term2
                                                                                       )
        {


            string qry = "";

            qry = "SELECT "
                        + " MAX(StudentName) StudentName, SubjectName, SubjectCode "
                        + ", Max(FatherName)FatherName, MAX(MotherName)MotherName, MAX(DOB)DOB, MAX(AdmissionNo)AdmNo"
                        + " , MAX(ClassName) className, MAX(SectionName) SectionName"
                        + " , MAX(SubjectGroupName)SubjectGroupName "
                  
                        + " , MAX(PerTest1)PerTest1 "
                        + " , MAX(NoteBook1)NoteBook1 "
                        + " , MAX(SEA1)SEA1 "
                        + " , MAX(HalfYearly)HalfYearly "

                        + " , MAX(PerTest2)PerTest2 "
                        + " , MAX(NoteBook2)NoteBook2 "
                        + " , MAX(SEA2)SEA2 "
                        + " , MAX(Yearly) Yearly "

                        + " , MAX(PT3)PT3 "
                        + " , MAX(PT4)PT4 "

                        + " , MAX(PT11)PT11 "
                        + " , MAX(PT12)PT12 "
                        + " , MAX(PT13)PT13 "
                        + " , MAX(PT14)PT14 "

                        + " , MAX(PT15)PT15 "
                        + " , MAX(PT16)PT16 "
                        + " , MAX(PT17)PT17 "
                        + " , MAX(PT18)PT18 "
                        + " , MAX(PT19)PT19 "
                        + " , MAX(PT20)PT20 "

                        + " , MAX(PT21)PT21 "
                        + " , MAX(PT22)PT22 "
                        + " , MAX(PT23)PT23 "
                        + " , MAX(PT24)PT24 "


                        + " , MAX(PT25)PT25 "
                        + " , MAX(PT26)PT26 "
                        + " , MAX(PT27)PT27 "
                        + " , MAX(PT28)PT28 "

                        + " , MAX(PT29)PT29 "
                        + " , MAX(PT30)PT30 "
                        + " , MAX(PT31)PT31 "
                        + " , MAX(PT32)PT32 "

                        + " , MAX(PT41)PT41 "
                        + " , MAX(PT42)PT42 "
                        + " , MAX(PT43)PT43 "
                        + " , MAX(PT44)PT44 "

                        + " , MAX(PT45)PT45 "
                        + " , MAX(PT46)PT46 "
                        + " , MAX(PT47)PT47 "
                        + " , MAX(PT48)PT48 "

                        + " , MAX(PT49)PT49 "
                        + " , MAX(PT50)PT50 "
                        + " , MAX(PT51)PT51 "
                        + " , MAX(PT52)PT52 "

                        + " , MAX(PT53)PT53 "
                        + " , MAX(PT54)PT54 "
                        + " , MAX(PT55)PT55 "
                        + " , MAX(PT56)PT56 "

                        + " , MAX(PT57)PT57 "
                        + " , MAX(PT58)PT58 "

                         + " , MAX(PT3_MM)PT3_MM "
                        + " , MAX(PT4_MM)PT4_MM "
                       

                        + " , MAX(PT11_MM)PT11_MM "
                        + " , MAX(PT12_MM)PT12_MM "
                        + " , MAX(PT13_MM)PT13_MM "
                        + " , MAX(PT14_MM)PT14_MM "


                         + " , MAX(PT15_MM)PT15_MM "
                        + " , MAX(PT16_MM)PT16_MM "
                        + " , MAX(PT17_MM)PT17_MM "
                        + " , MAX(PT18_MM)PT18_MM "
                        + " , MAX(PT19_MM)PT19_MM "
                        + " , MAX(PT20_MM)PT20_MM "

                        + " , MAX(PT21_MM)PT21_MM "
                        + " , MAX(PT22_MM)PT22_MM "
                        + " , MAX(PT23_MM)PT23_MM "
                        + " , MAX(PT24_MM)PT24_MM "

                        + " , MAX(PT25_MM)PT25_MM "
                        + " , MAX(PT26_MM)PT26_MM "
                        + " , MAX(PT27_MM)PT27_MM "
                        + " , MAX(PT28_MM)PT28_MM "

                        + " , MAX(PT29_MM)PT29_MM "
                        + " , MAX(PT30_MM)PT30_MM "
                        + " , MAX(PT31_MM)PT31_MM "
                        + " , MAX(PT32_MM)PT32_MM "

                        + " , MAX(PT41_MM)PT41_MM "
                        + " , MAX(PT42_MM)PT42_MM "
                        + " , MAX(PT43_MM)PT43_MM "
                        + " , MAX(PT44_MM)PT44_MM "

                        + " , MAX(PT45_MM)PT45_MM "
                        + " , MAX(PT46_MM)PT46_MM "
                        + " , MAX(PT47_MM)PT47_MM "
                        + " , MAX(PT48_MM)PT48_MM "

                        + " , MAX(PT49_MM)PT49_MM "
                        + " , MAX(PT50_MM)PT50_MM "
                        + " , MAX(PT51_MM)PT51_MM "
                        + " , MAX(PT52_MM)PT52_MM "

                        + " , MAX(PT53_MM)PT53_MM "
                        + " , MAX(PT54_MM)PT54_MM "
                        + " , MAX(PT55_MM)PT55_MM "

                        + " , MAX(PT56_MM)PT56_MM "
                        + " , MAX(PT57_MM)PT57_MM "
                        + " , MAX(PT58_MM)PT58_MM "




                        + "  , MAX(PerTest1_Code) PerTest1_Code "
                        + " , MAX(NoteBook1_Code)NoteBook1_Code  "
                        + " , MAX(SEA1_Code)SEA1_Code  "
                        + " , MAX(HalfYearly_Code)HalfYearly_Code  "
                        + " , MAX(PerTest2_Code)PerTest2_Code  "
                        + " , MAX(NoteBook2_Code)NoteBook2_Code  "
                        + " , MAX(SEA2_Code)SEA2_Code  "
                        + " , MAX(Yearly_Code) Yearly_Code  "

                        + "  , MAX(PerTest1_MM) PerTest1_MM "
                        + " , MAX(NoteBook1_MM)NoteBook1_MM  "
                        + " , MAX(SEA1_MM)SEA1_MM  "
                        + " , MAX(HalfYearly_MM)HalfYearly_MM  "
                        + " , MAX(PerTest2_MM)PerTest2_MM  "
                        + " , MAX(NoteBook2_MM)NoteBook2_MM  "
                        + " , MAX(SEA2_MM)SEA2_MM  "
                        + " , MAX(Yearly_MM) Yearly_MM  "



                        + " FROM "
                        + " ( "
                        + " SELECT "
                        + " StudentName, FatherName, MotherName, DOB, AdmissionNo , SubjectGroupName"
                        + " , ClassName, SectionName, SubjectName,  SubjectCode, SubjectOrder , "
                  
                        + " (CASE WHEN (ExamName = '" + unitTest1 + "' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PerTest1 "
                        + " ,(CASE WHEN (ExamName = '" + noteBook1 + "' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) NoteBook1 "
                        + " ,(CASE WHEN (ExamName = '" + sea1 + "' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) SEA1 "
                        + " ,(CASE WHEN (ExamName = '" + halfYearly + "' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) HalfYearly "
                        + " ,(CASE WHEN (ExamName = '" + unitTest2 + "' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PerTest2 "
                        + " ,(CASE WHEN (ExamName = '" + noteBook2 + "' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) NoteBook2 "
                        + " ,(CASE WHEN (ExamName = '" + sea2 + "' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) SEA2 "
                        + " ,(CASE WHEN (ExamName = '" + yearly + "' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) Yearly "


                        + " ,(CASE WHEN (ExamName = 'PT3' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT3 "

                        + " ,(CASE WHEN (ExamName = 'PT4' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT4 "


                        + " ,(CASE WHEN (ExamName = 'PT11' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT11 "

                        + " ,(CASE WHEN (ExamName = 'PT12' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT12 "

                        + " ,(CASE WHEN (ExamName = 'PT13' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT13 "

                        + " ,(CASE WHEN (ExamName = 'PT14' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT14 "


                        + " ,(CASE WHEN (ExamName = 'PT15' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT15 "


                        + " ,(CASE WHEN (ExamName = 'PT16' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT16 "

                        + " ,(CASE WHEN (ExamName = 'PT17' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT17 "


                        + " ,(CASE WHEN (ExamName = 'PT18' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT18 "


                        + " ,(CASE WHEN (ExamName = 'PT19' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT19 "


                        + " ,(CASE WHEN (ExamName = 'PT20' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT20 "

                        + " ,(CASE WHEN (ExamName = 'PT21' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT21 "

                        + " ,(CASE WHEN (ExamName = 'PT22' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT22 "

                        + " ,(CASE WHEN (ExamName = 'PT23' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT23 "

                        + " ,(CASE WHEN (ExamName = 'PT24' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT24 "


                        + " ,(CASE WHEN (ExamName = 'PT25' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT25 "

                        + " ,(CASE WHEN (ExamName = 'PT26' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT26 "

                        + " ,(CASE WHEN (ExamName = 'PT27' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT27 "

                        + " ,(CASE WHEN (ExamName = 'PT28' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT28 "

                        + " ,(CASE WHEN (ExamName = 'PT29' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT29 "



                        + " ,(CASE WHEN (ExamName = 'PT30' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT30 "

                        + " ,(CASE WHEN (ExamName = 'PT31' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT31 "

                        + " ,(CASE WHEN (ExamName = 'PT32' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT32 "


                        + " ,(CASE WHEN (ExamName = 'PT41' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT41 "

                        + " ,(CASE WHEN (ExamName = 'PT42' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT42 "

                        + " ,(CASE WHEN (ExamName = 'PT43' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT43 "

                        + " ,(CASE WHEN (ExamName = 'PT44' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT44 "

                        + " ,(CASE WHEN (ExamName = 'PT45' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT45 "

                        + " ,(CASE WHEN (ExamName = 'PT46' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT46 "


                        + " ,(CASE WHEN (ExamName = 'PT47' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT47 "

                        + " ,(CASE WHEN (ExamName = 'PT48' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT48 "

                        + " ,(CASE WHEN (ExamName = 'PT49' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT49 "

                        + " ,(CASE WHEN (ExamName = 'PT50' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT50 "

                        + " ,(CASE WHEN (ExamName = 'PT51' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT51 "

                        + " ,(CASE WHEN (ExamName = 'PT52' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT52 "



                        + " ,(CASE WHEN (ExamName = 'PT53' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT53 "

                        + " ,(CASE WHEN (ExamName = 'PT54' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT54 "

                        + " ,(CASE WHEN (ExamName = 'PT55' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT55 "

                        + " ,(CASE WHEN (ExamName = 'PT56' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT56 "

                        + " ,(CASE WHEN (ExamName = 'PT57' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT57 "

                        + " ,(CASE WHEN (ExamName = 'PT58' ) "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PT58 "

                           + "  , (CASE WHEN (ExamName = 'PT3' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT3_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT4' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT4_MM  "



                        + "  , (CASE WHEN (ExamName = 'PT11' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT11_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT12' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT12_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT13' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT13_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT14' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT14_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT15' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT15_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT16' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT16_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT17' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT17_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT18' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT18_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT19' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT19_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT20' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT20_MM  "



                         + "  , (CASE WHEN (ExamName = 'PT21' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT21_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT22' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT22_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT23' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT23_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT24' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT24_MM  "


                        + "  , (CASE WHEN (ExamName = 'PT25' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT25_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT26' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT26_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT27' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT27_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT28' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT28_MM  "



                        + "  , (CASE WHEN (ExamName = 'PT29' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT29_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT30' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT30_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT31' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT31_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT32' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT32_MM  "



                        + "  , (CASE WHEN (ExamName = 'PT41' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT41_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT42' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT42_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT43' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT43_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT44' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT44_MM  "

                         + "  , (CASE WHEN (ExamName = 'PT45' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT45_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT46' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT46_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT47' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT47_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT48' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT48_MM  "

                         + "  , (CASE WHEN (ExamName = 'PT49' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT49_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT50' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT50_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT51' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT51_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT52' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT52_MM  "


                         + "  , (CASE WHEN (ExamName = 'PT53' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT53_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT54' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT54_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT55' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT55_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT56' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT56_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT57' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT57_MM  "

                        + "  , (CASE WHEN (ExamName = 'PT58' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PT58_MM  "


                        + "  , (CASE WHEN (ExamName = 'PT1' )  "
                        + "       THEN IsNull(MAX(MaxMarks), '0') END) PerTest1_MM  "

                        + " ,(CASE WHEN (ExamName = 'NB1' )   "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) NoteBook1_MM  "
                        + " ,(CASE WHEN (ExamName = 'SEA1' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) SEA1_MM  "
                        + " ,(CASE WHEN (ExamName = 'Half Yearly' )   "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) HalfYearly_MM  "
                      
                        + " ,(CASE WHEN (ExamName = 'PT2' )  "
                        + "     THEN IsNull(MAX(MaxMarks), '0') END) PerTest2_MM  "
                        
                        + " ,(CASE WHEN (ExamName = 'NB2' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) NoteBook2_MM  "
                        + " ,(CASE WHEN (ExamName = 'SEA2' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) SEA2_MM  "
                        + " ,(CASE WHEN (ExamName = 'Yearly' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) Yearly_MM  "
                        + ", (CASE WHEN (ExamName = 'PT1' )  "
                        + "      THEN IsNull(MAX(ExamCode), '0') END) PerTest1_Code  "
                        + ", (CASE WHEN (ExamName = 'NB1' )  "
                            + "  THEN IsNull(MAX(ExamCode), '0') END) NoteBook1_Code  "
                        + " ,(CASE WHEN (ExamName = 'SEA1' )  "
                        + "   THEN IsNull(MAX(ExamCode), '0') END) SEA1_Code "
                        + "   ,(CASE WHEN (ExamName = 'Half Yearly' )   "
                        + "   THEN IsNull(MAX(ExamCode), '0') END) HalfYearly_Code "
                        + "   ,(CASE WHEN (ExamName = 'PT2' )  "
                        + "   THEN IsNull(MAX(ExamCode), '0') END) PerTest2_Code  "
                        + "   ,(CASE WHEN (ExamName = 'NB2' )  "
                        + "   THEN IsNull(MAX(ExamCode), '0') END) NoteBook2_Code  "
                        + "   ,(CASE WHEN (ExamName = 'SEA2' )  "
                        + "   THEN IsNull(MAX(ExamCode), '0') END) SEA2_Code  "
                        + "   ,(CASE WHEN (ExamName = 'Yearly' )  "
                        + "   THEN IsNull(MAX(ExamCode), '0') END) Yearly_Code  "


                        + " FROM(  "
                        + " SELECT  "
                        + " StudentMasterId  "
                        + " , StudentName , FatherName, MotherName, DOB, AdmissionNo, SubjectGroupName"
                  
                        + " , MobileF "
                        + " , ClassName  "
                        + " , SectionName "
                        + " , TermName "
                        + " , SubjectName, SubjectCode "
                        + " , SubjectOrder "
                        + " , MaxMarks "
                        + " , ExamName, ExamCode "
                        + " ,  IsNull(MAX(MarksObtained), '0') marksObtained  "
                //+ " --, m.SubUserId, m.UserId, m.FYear   "
                        + " FROM tblExamMarks m  "
                        + " LEFT OUTER JOIN tblStudentMaster st "
                        + " ON m.studentID = st.StudentMasterID   "
                        + " LEFT OUTER JOIN tblClassMaster c "
                        + " ON c.ClassMasterId = m.ClassID  "
                        + " LEFT OUTER JOIN tblSectionMaster sm "
                        + " ON sm.sectionMasterID = m.SectionID  "
                        + " LEFT OUTER JOIN tblExamMaster em "
                        + " ON em.ExamMasterID = m.ExamID  "
                        + " LEFT OUTER JOIN tblSubjectMaster sub "
                        + " ON sub.SubjectMasterID = m.SubjectId  "
                        + " LEFT OUTER JOIN tblSubjectGroupMaster sgm "
                        + " ON sgm.SubjectGroupMasterID = sub.SubjectGroupMasterID  "
                        + " LEFT OUTER JOIN tblTerm tm ON tm.TermId = em.termID ";
            qry += Util_BLL.GetUserWhereCondition(Util_BLL.User, "st");

            qry += " AND st.studentMasterId = " + studentId
                + " AND SubjectGroupName='" + subjectGroup + "'"
                + " GROUP By "
                  + " StudentMasterId  "
                  + " , StudentName  "
                  + " , FatherName, MotherName, DOB, AdmissionNo, SubjectGroupName"
                  
                  + " , MobileF  "
                  + " , ClassName  "
                  + " , SectionName  "
                  + " , SubjectName, SubjectCode"
                  + " , SubjectOrder "
                  + " , ExamName , ExamCode, MaxMarks"
                  + " , TermName "

                  + " ) as A "
                  + " GROUP BY StudentName, ExamName"
                  + " , FatherName, MotherName, DOB, AdmissionNo, SubjectGroupName"
                  
                  + " , ClassName, SectionName "
                  + " , TermName "
                  + " , SubjectName , SubjectCode "
                  + " , subjectOrder  "
                  + " ) as b "
                  + " GROUP BY StudentName, SubjectName, SubjectCode "
                  + " , SubjectOrder "
                  + " ORDER BY SubjectOrder ";


            return qry;
        }






        public List<ReportCardCBSEEntity> GetReportCardCBSE_BPS(int studentId)
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ReportCardList = new List<ReportCardCBSEEntity>();
            string qry = GetCBSEQry_BPS(studentId
                , "Scholastic"
                , "PT1"
                , "PT2"
                , "NB1"
                , "NB2"
                , "SEA1"
                , "SEA2"
                , "Half Yearly"
                , "Yearly"
                , "First Term"
                , "Second Term"
                );



            DataTable dt = site.ExecuteSelect(qry);
            ReportCardCBSEEntity reportCard;

            foreach (DataRow dr in dt.Rows)
            {
                reportCard = new ReportCardCBSEEntity();

                reportCard.StudentMasterId = studentId;
                reportCard.StudentName = util.CheckNull(dr["StudentName"]);
                reportCard.DOB = util.CheckNullDate(dr["dob"]);
                reportCard.Subject = util.CheckNull(dr["SubjectName"]);
                reportCard.ClassName = util.CheckNull(dr["ClassName"]);
                reportCard.SectionName = util.CheckNull(dr["SectionName"]);
                reportCard.MotherName = util.CheckNull(dr["MotherName"]);
                reportCard.FatherName = util.CheckNull(dr["FatherName"]);
                reportCard.AdmNo = util.CheckNull(dr["AdmNo"]);
                
                reportCard.PT1 = util.CheckNull(dr["PerTest1"]);
                reportCard.NoteBook1 = util.CheckNull(dr["NoteBook1"]);
                reportCard.SEA1 = util.CheckNull(dr["SEA1"]);
                reportCard.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                
                reportCard.PT2 = util.CheckNull(dr["PerTest2"]);
                reportCard.NoteBook2 = util.CheckNull(dr["NoteBook2"]);
                reportCard.SEA2 = util.CheckNull(dr["SEA2"]);
                reportCard.Yearly = util.CheckNull(dr["Yearly"]);


                

                reportCard.PT3 = util.CheckNull(dr["PT3"]);
                reportCard.PT4 = util.CheckNull(dr["PT4"]);
                               

                reportCard.PT11 = util.CheckNull(dr["PT11"]);
                reportCard.PT12 = util.CheckNull(dr["PT12"]);
                reportCard.PT13 = util.CheckNull(dr["PT13"]);
                reportCard.PT14 = util.CheckNull(dr["PT14"]);
                reportCard.PT15 = util.CheckNull(dr["PT15"]);
                reportCard.PT16 = util.CheckNull(dr["PT16"]);
                reportCard.PT17 = util.CheckNull(dr["PT17"]);
                reportCard.PT18 = util.CheckNull(dr["PT18"]);
                reportCard.PT19 = util.CheckNull(dr["PT19"]);
                reportCard.PT20 = util.CheckNull(dr["PT20"]);

                reportCard.PT21 = util.CheckNull(dr["PT21"]);
                reportCard.PT22 = util.CheckNull(dr["PT22"]);
                reportCard.PT23 = util.CheckNull(dr["PT23"]);
                reportCard.PT24 = util.CheckNull(dr["PT24"]);

                reportCard.PT25 = util.CheckNull(dr["PT25"]);
                reportCard.PT26 = util.CheckNull(dr["PT26"]);
                reportCard.PT27 = util.CheckNull(dr["PT27"]);
                reportCard.PT28 = util.CheckNull(dr["PT28"]);

                reportCard.PT29 = util.CheckNull(dr["PT29"]);
                reportCard.PT30 = util.CheckNull(dr["PT30"]);
                reportCard.PT31 = util.CheckNull(dr["PT31"]);
                reportCard.PT32 = util.CheckNull(dr["PT32"]);


                reportCard.PT41 = util.CheckNull(dr["PT41"]);
                reportCard.PT42 = util.CheckNull(dr["PT42"]);
                reportCard.PT43 = util.CheckNull(dr["PT43"]);
                reportCard.PT44 = util.CheckNull(dr["PT44"]);

                reportCard.PT45 = util.CheckNull(dr["PT45"]);
                reportCard.PT46 = util.CheckNull(dr["PT46"]);
                reportCard.PT47 = util.CheckNull(dr["PT47"]);
                reportCard.PT48 = util.CheckNull(dr["PT48"]);

                reportCard.PT49 = util.CheckNull(dr["PT49"]);
                reportCard.PT50 = util.CheckNull(dr["PT50"]);
                reportCard.PT51 = util.CheckNull(dr["PT51"]);
                reportCard.PT52 = util.CheckNull(dr["PT52"]);


                reportCard.PT53 = util.CheckNull(dr["PT53"]);
                reportCard.PT54 = util.CheckNull(dr["PT54"]);
                reportCard.PT55 = util.CheckNull(dr["PT55"]);

                
                reportCard.PT56 = util.CheckNull(dr["PT56"]);
                reportCard.PT57 = util.CheckNull(dr["PT57"]);
                reportCard.PT58 = util.CheckNull(dr["PT58"]);



                reportCard.PT3_MM = util.CheckNull(dr["PT3_MM"]);
                reportCard.PT4_MM = util.CheckNull(dr["PT4_MM"]);
                

                reportCard.PT11_MM = util.CheckNull(dr["PT11_MM"]);
                reportCard.PT12_MM = util.CheckNull(dr["PT12_MM"]);
                reportCard.PT13_MM = util.CheckNull(dr["PT13_MM"]);
                reportCard.PT14_MM = util.CheckNull(dr["PT14_MM"]);

                reportCard.PT15_MM = util.CheckNull(dr["PT15_MM"]);
                reportCard.PT16_MM = util.CheckNull(dr["PT16_MM"]);
                reportCard.PT17_MM = util.CheckNull(dr["PT17_MM"]);
                reportCard.PT18_MM = util.CheckNull(dr["PT18_MM"]);
                reportCard.PT19_MM = util.CheckNull(dr["PT19_MM"]);
                reportCard.PT20_MM = util.CheckNull(dr["PT20_MM"]);
                
                reportCard.PT21_MM = util.CheckNull(dr["PT21_MM"]);
                reportCard.PT22_MM = util.CheckNull(dr["PT22_MM"]);
                reportCard.PT23_MM = util.CheckNull(dr["PT23_MM"]);
                reportCard.PT24_MM = util.CheckNull(dr["PT24_MM"]);

                reportCard.PT25_MM = util.CheckNull(dr["PT25_MM"]);
                reportCard.PT26_MM = util.CheckNull(dr["PT26_MM"]);
                reportCard.PT27_MM = util.CheckNull(dr["PT27_MM"]);
                reportCard.PT28_MM = util.CheckNull(dr["PT28_MM"]);

                reportCard.PT29_MM = util.CheckNull(dr["PT29_MM"]);
                reportCard.PT30_MM = util.CheckNull(dr["PT30_MM"]);
                reportCard.PT31_MM = util.CheckNull(dr["PT31_MM"]);
                reportCard.PT32_MM = util.CheckNull(dr["PT32_MM"]);



                reportCard.PT41_MM = util.CheckNull(dr["PT41_MM"]);
                reportCard.PT42_MM = util.CheckNull(dr["PT42_MM"]);
                reportCard.PT43_MM = util.CheckNull(dr["PT43_MM"]);
                reportCard.PT44_MM = util.CheckNull(dr["PT44_MM"]);

                reportCard.PT45_MM = util.CheckNull(dr["PT45_MM"]);
                reportCard.PT46_MM = util.CheckNull(dr["PT46_MM"]);
                reportCard.PT47_MM = util.CheckNull(dr["PT47_MM"]);
                reportCard.PT48_MM = util.CheckNull(dr["PT48_MM"]);

                reportCard.PT49_MM = util.CheckNull(dr["PT49_MM"]);
                reportCard.PT50_MM = util.CheckNull(dr["PT50_MM"]);
                reportCard.PT51_MM = util.CheckNull(dr["PT51_MM"]);
                reportCard.PT52_MM = util.CheckNull(dr["PT52_MM"]);


                reportCard.PT53_MM = util.CheckNull(dr["PT53_MM"]);
                reportCard.PT54_MM = util.CheckNull(dr["PT54_MM"]);
                reportCard.PT55_MM = util.CheckNull(dr["PT55_MM"]);


                reportCard.PT56_MM = util.CheckNull(dr["PT56_MM"]);
                reportCard.PT57_MM = util.CheckNull(dr["PT57_MM"]);
                reportCard.PT58_MM = util.CheckNull(dr["PT58_MM"]);




                //reportCard.PT1 = BestOfTwo(reportCard.PT1, reportCard.PT2);
                //reportCard.PT3 = BestOfTwo(reportCard.PT3, reportCard.PT4);

                reportCard.PT1_Code = util.CheckNull(dr["PerTest1_Code"]);
                reportCard.NoteBook1_Code = util.CheckNull(dr["NoteBook1_Code"]);
                reportCard.SEA1_Code = util.CheckNull(dr["SEA1_Code"]);
                reportCard.HalfYearly_Code = util.CheckNull(dr["HalfYearly_Code"]);

                reportCard.PT2_Code = util.CheckNull(dr["PerTest2_Code"]);
                reportCard.NoteBook2_Code = util.CheckNull(dr["NoteBook2_Code"]);
                reportCard.SEA2_Code = util.CheckNull(dr["SEA2_Code"]);
                reportCard.Yearly_Code = util.CheckNull(dr["Yearly_Code"]);



                reportCard.PT1_MM = util.CheckNullInt(dr["PerTest1_MM"]);
                reportCard.NoteBook1_MM = util.CheckNullInt(dr["NoteBook1_MM"]);
                reportCard.SEA1_MM = util.CheckNullInt(dr["SEA1_MM"]);
                reportCard.HalfYearly_MM = util.CheckNullInt(dr["HalfYearly_MM"]);

                reportCard.PT2_MM = util.CheckNullInt(dr["PerTest2_MM"]);
                reportCard.NoteBook2_MM = util.CheckNullInt(dr["NoteBook2_MM"]);
                reportCard.SEA2_MM = util.CheckNullInt(dr["SEA2_MM"]);
                reportCard.Yearly_MM = util.CheckNullInt(dr["Yearly_MM"]);
                
                reportCard.SubjectTotal_HalfYearly = GetTotal(reportCard, true, false);
                reportCard.SubjectTotal_MM_HalfYearly = GetTotal(reportCard, true, true);

                decimal  percent_subjectwise=0;
                if(reportCard.SubjectTotal_MM_HalfYearly!=0)
                    percent_subjectwise=(reportCard.SubjectTotal_HalfYearly/reportCard.SubjectTotal_MM_HalfYearly) * 100;

                reportCard.SubjectTotal_Percent_HalfYearly = percent_subjectwise;
                reportCard.SubjectTotal_Grade_HalfYearly = GetGradeRemarks(percent_subjectwise, true);



                reportCard.Total_HalfYearly =  GetOverAllMarks(dt, false, true);
                reportCard.Total_MM_HalfYearly =  GetOverAllMarks(dt, true, true);

                decimal percentage_mo = 0;
                if (reportCard.Total_MM_HalfYearly!=0)
                    percentage_mo = (reportCard.Total_HalfYearly / reportCard.Total_MM_HalfYearly) * 100;

                reportCard.Total_Percent_HalfYearly = util.ToDecimal(percentage_mo);


                reportCard.Total_Grade_HalfYearly = GetGradeRemarks(percentage_mo, true);
                reportCard.Total_Remarks_HalfYearly = GetGradeRemarks(percentage_mo, false);


                

                reportCard.SubjectTotal_Yearly = GetTotal(reportCard, false, false);
                reportCard.SubjectTotal_MM_Yearly = GetTotal(reportCard, false, true);

                decimal percent_subjectwise_yearly = 0;
                if (reportCard.SubjectTotal_MM_Yearly!=0)
                    percent_subjectwise_yearly = (reportCard.SubjectTotal_Yearly / reportCard.SubjectTotal_MM_Yearly) * 100;


                //////////////////

                
                reportCard.SubjectTotal_Percent_Yearly = percent_subjectwise_yearly;
                reportCard.SubjectTotal_Grade_Yearly = GetGradeRemarks(percent_subjectwise_yearly, true);

                reportCard.Total_Yearly = reportCard.SubjectTotal_HalfYearly + reportCard.SubjectTotal_Yearly;
                reportCard.Total_MM_Yearly = reportCard.SubjectTotal_MM_Yearly + reportCard.SubjectTotal_MM_HalfYearly;

                decimal percentage_mo_yearly = 0;

                if (reportCard.Total_MM_Yearly!=0)
                    percentage_mo_yearly = ((reportCard.Total_Yearly * 100) / reportCard.Total_MM_Yearly);

                reportCard.Total_Percent_Yearly = util.ToDecimal(percentage_mo_yearly);


                reportCard.Total_Grade_Yearly = GetGradeRemarks(percentage_mo_yearly, true);
                reportCard.Total_Remarks_Yearly =  GetGradeRemarks(percentage_mo_yearly, false);

                // OverAll 222

                //reportCard.OverAll_SumTotal =  GetOverAllMarks_BPS(dt, false, false);
                //reportCard.OverAll_SumTotal_MM =  GetOverAllMarks_BPS(dt, true, false);

                reportCard.OverAll_SumTotal = GetOverAllMarks(dt, false, false);
                reportCard.OverAll_SumTotal_MM = GetOverAllMarks(dt, true, false);

                if (reportCard.OverAll_SumTotal_MM != 0)
                    reportCard.OverAll_Percent = util.ToDecimal((reportCard.OverAll_SumTotal * 100 / reportCard.OverAll_SumTotal_MM));

                reportCard.OverAll_Grade = GetGradeRemarks(reportCard.OverAll_Percent, true);
                reportCard.OverAll_Remarks = GetGradeRemarks(reportCard.OverAll_Percent, false);

            //public decimal OverAll_Percent { get; set; }
            //public string OverAll_Grade { get; set; }
            //public string OverAll_Remarks{ get; set; }
            




                ///////////////////
                
                ReportCardList.Add(reportCard);

            }
            return ReportCardList;
        }


        public List<ReportCardCBSEEntity> GetReportCardCBSE_CoScholastic_BPS(int studentId)
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ReportCardList = new List<ReportCardCBSEEntity>();

            //DataTable dt = site.ExecuteSelect(GetCBSEQry(studentId, "CoScholastic"));
            string qry = GetCBSEQry_BPS(studentId
                 , "CoScholastic"
                 , "PT1"
                 , "PT2"
                 , "NB1"
                 , "NB2"
                 , "SEA1"
                 , "SEA2"
                 , "Half Yearly"
                 , "Yearly"
                 , "First Term"
                 , "Second Term"
                 );


            DataTable dt = site.ExecuteSelect(qry);
            ReportCardCBSEEntity reportCard;

            foreach (DataRow dr in dt.Rows)
            {
                reportCard = new ReportCardCBSEEntity();

                reportCard.StudentMasterId = studentId;
                reportCard.StudentName = util.CheckNull(dr["StudentName"]);
                reportCard.Subject = util.CheckNull(dr["SubjectName"]);
                reportCard.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                reportCard.Yearly = util.CheckNull(dr["Yearly"]);
                reportCard.PT20 = util.CheckNull(dr["PT20"]);
                reportCard.PT24 = util.CheckNull(dr["PT24"]);
                reportCard.PT44 = util.CheckNull(dr["PT44"]);
                reportCard.PT51 = util.CheckNull(dr["PT51"]);


                ReportCardList.Add(reportCard);

            }
            return ReportCardList;
        }

        public List<ReportCardCBSEEntity> GetReportCardCBSE_Discipline_BPS(int studentId)
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ReportCardList = new List<ReportCardCBSEEntity>();

            //DataTable dt = site.ExecuteSelect(GetCBSEQry(studentId, "CoScholastic"));
            DataTable dt = site.ExecuteSelect(GetCBSEQry_BPS(studentId
               , "Discipline"
               , "PT1"
                , "PT2"
                , "NB1"
                , "NB2"
                , "SEA1"
                , "SEA2"
                , "HalfYearly"
                , "Yearly"
                , "First Term"
                , "Second Term"
               ));


            ReportCardCBSEEntity reportCard;

            foreach (DataRow dr in dt.Rows)
            {
                reportCard = new ReportCardCBSEEntity();

                reportCard.StudentMasterId = studentId;
                reportCard.StudentName = util.CheckNull(dr["StudentName"]);
                reportCard.Subject = util.CheckNull(dr["SubjectName"]);
                reportCard.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                reportCard.Yearly = util.CheckNull(dr["Yearly"]);

                reportCard.PT20 = util.CheckNull(dr["PT20"]);

                ReportCardList.Add(reportCard);

            }
            return ReportCardList;
        }
        public List<ReportCardCBSEEntity> GetReportCardCBSE_Physical_BPS(int studentId)
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ReportCardList = new List<ReportCardCBSEEntity>();

            //DataTable dt = site.ExecuteSelect(GetCBSEQry(studentId, "CoScholastic"));
            DataTable dt = site.ExecuteSelect(GetCBSEQry_BPS(studentId
               , "Physical"
             , "PT1"
                , "PT2"
                , "NB1"
                , "NB2"
                , "SEA1"
                , "SEA2"
                , "HalfYearly"
                , "Yearly"
                , "First Term"
                , "Second Term"
               ));


            ReportCardCBSEEntity reportCard;

            foreach (DataRow dr in dt.Rows)
            {
                reportCard = new ReportCardCBSEEntity();

                reportCard.StudentMasterId = studentId;
                reportCard.StudentName = util.CheckNull(dr["StudentName"]);
                reportCard.Subject = util.CheckNull(dr["SubjectName"]);
                reportCard.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                reportCard.Yearly = util.CheckNull(dr["Yearly"]);

                reportCard.PT20 = util.CheckNull(dr["PT20"]);

                ReportCardList.Add(reportCard);

            }
            return ReportCardList;
        }



        public List<ReportCardCBSEEntity> GetReportCardCBSE_Remarks_BPS(int studentId)
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ReportCardList = new List<ReportCardCBSEEntity>();

            //DataTable dt = site.ExecuteSelect(GetCBSEQry(studentId, "CoScholastic"));
            DataTable dt = site.ExecuteSelect(GetCBSEQry_BPS(studentId
               , "Remarks"
               , "PT1"
                , "PT2"
                , "NB1"
                , "NB2"
                , "SEA1"
                , "SEA2"
                , "HalfYearly"
                , "Yearly"
                , "First Term"
                , "Second Term"
               ));


            ReportCardCBSEEntity reportCard;

            foreach (DataRow dr in dt.Rows)
            {
                reportCard = new ReportCardCBSEEntity();

                reportCard.StudentMasterId = studentId;
                reportCard.StudentName = util.CheckNull(dr["StudentName"]);
                reportCard.Subject = util.CheckNull(dr["SubjectName"]);
                reportCard.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                reportCard.Yearly = util.CheckNull(dr["Yearly"]);

                reportCard.PT20 = util.CheckNull(dr["PT20"]);

                ReportCardList.Add(reportCard);

            }
            return ReportCardList;
        }


        public List<ReportCardCBSEEntity> GetReportCardCBSE_BPS_Junior(int studentId)
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ReportCardList = new List<ReportCardCBSEEntity>();
            string qry = GetCBSEQry_BPS(studentId
                , "Scholastic"
                , "PT1And2"
                , "PT3And4"
                , "PT3"
                , "PT4"
                , "SEA 1"
                , "SEA 2"
                , "Half Yearly"
                , "Final Term J"
                , "First Term"
                , "Second Term"
                );



            DataTable dt = site.ExecuteSelect(qry);
            ReportCardCBSEEntity reportCard;

            foreach (DataRow dr in dt.Rows)
            {
                reportCard = new ReportCardCBSEEntity();

                reportCard.StudentMasterId = studentId;
                reportCard.StudentName = util.CheckNull(dr["StudentName"]);
                reportCard.DOB = util.CheckNullDate(dr["dob"]);
                reportCard.Subject = util.CheckNull(dr["SubjectName"]);
                reportCard.PT1 = util.CheckNull(dr["PerTest1"]);
                reportCard.NoteBook1 = util.CheckNull(dr["NoteBook1"]);

                reportCard.SEA1 = util.CheckNull(dr["SEA1"]);
                reportCard.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                reportCard.ClassName = util.CheckNull(dr["ClassName"]);
                reportCard.SectionName = util.CheckNull(dr["SectionName"]);
                reportCard.MotherName = util.CheckNull(dr["MotherName"]);
                reportCard.FatherName = util.CheckNull(dr["FatherName"]);
                reportCard.PT2 = util.CheckNull(dr["PerTest2"]);
                reportCard.NoteBook2 = util.CheckNull(dr["NoteBook2"]);
                reportCard.SEA2 = util.CheckNull(dr["SEA2"]);
                reportCard.Yearly = util.CheckNull(dr["Yearly"]);

                ReportCardList.Add(reportCard);

            }
            return ReportCardList;
        }


        public List<ReportCardCBSEEntity> GetReportCardCBSE_Physical_BPS_Junior(int studentId)
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ReportCardList = new List<ReportCardCBSEEntity>();

            //DataTable dt = site.ExecuteSelect(GetCBSEQry(studentId, "CoScholastic"));

            string qry = GetCBSEQry_BPS(studentId
               , "Physical"
                , "PT1And2"
                , "PT3And4"
                , "PT3"
                , "PT4"
                , "SEA1"
                , "SEA2"
                , "Half Yearly"
                , "Final Term J"
                , "First Term"
                , "Second Term"
               );


            DataTable dt = site.ExecuteSelect(qry);


            ReportCardCBSEEntity reportCard;

            foreach (DataRow dr in dt.Rows)
            {
                reportCard = new ReportCardCBSEEntity();

                reportCard.StudentMasterId = studentId;
                reportCard.StudentName = util.CheckNull(dr["StudentName"]);
                reportCard.Subject = util.CheckNull(dr["SubjectName"]);
                reportCard.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                reportCard.Yearly = util.CheckNull(dr["Yearly"]);

                ReportCardList.Add(reportCard);

            }
            return ReportCardList;
        }



////////////////////////////////Total Result

        public string GetCBSEQry_Total(string className, string subjectGroup
                                                          , string PT1, string PT2
                                                          , string noteBook1, string noteBook2
                                                          , string sea1, string sea2
                                                          , string halfYearly, string yearly
                                                          , string term1, string term2
                                                                                              )
        {
            string qry = "";

            qry = "SELECT "
                        + " StudentName, className "
                        + " , PerTest1, NoteBook1, SEA1, HalfYearly "
                        + " , (PerTest1 + NoteBook1 + SEA1 + HalfYearly) HalfYearly_Total "
                        + " , PerTest2, NoteBook2, SEA2, Yearly "
                        + " , (PerTest2 + NoteBook2 + SEA2 + Yearly) Yearly_Total "
                        + " , PerTest1_MM , NoteBook1_MM, SEA1_MM, HalfYearly_MM"
                        + " , (PerTest1_MM + NoteBook1_MM + SEA1_MM + HalfYearly_MM) HalfYearly_Total_MM"
                        + " , PerTest1_Code , NoteBook1_Code, SEA1_Code, HalfYearly_Code "
                        + " FROM ( "
                        + " SELECT "
                        + " StudentName, className "
                        + " , SUM(CAST(PerTest1 AS DECIMAL))PerTest1  "
                        + " , SUM(CAST(NoteBook1 AS DECIMAL))NoteBook1  "
                        + " , SUM(CAST(SEA1 as DECIMAL))SEA1  "
                        + " , SUM(CAST(HalfYearly AS DECIMAL))HalfYearly  "

                        + " , SUM(CAST(PerTest2 AS DECIMAL))PerTest2  "
                        + " , SUM(CAST(NoteBook2 AS DECIMAL))NoteBook2  "
                        + " , SUM(CAST(SEA2 as DECIMAL))SEA2  "
                        + " , SUM(CAST(Yearly AS DECIMAL))Yearly  "
                        + " , SUM(CAST(PerTest1_MM AS DECIMAL)) PerTest1_MM "
                        + " , SUM(CAST(NoteBook1_MM AS DECIMAL)) NoteBook1_MM "
                        + " , SUM(CAST(SEA1_MM AS DECIMAL)) SEA1_MM "
                        + " , SUM(CAST(HalfYearly_MM AS DECIMAL))HalfYearly_MM  "
                        + " ,  MAX(PerTest1_Code) PerTest1_Code "
                        + " ,  MAX(NoteBook1_Code)NoteBook1_Code  "
                        + " ,  MAX(SEA1_Code)SEA1_Code  "
                        + " ,  MAX(HalfYearly_Code)HalfYearly_Code  "
                        + " ,  MAX(PerTest2_Code)PerTest2_Code  "
                        + " ,  MAX(NoteBook2_Code)NoteBook2_Code  "
                        + " ,  MAX(SEA2_Code)SEA2_Code  "
                        + " ,  MAX(Yearly_Code) Yearly_Code  "

                        + "  FROM ( "
                        + " SELECT  MAX(StudentName) StudentName, SubjectName "
                        + " , Max(FatherName)FatherName, MAX(MotherName)MotherName "
                        + " , MAX(DOB)DOB, MAX(AdmissionNo)AdmNo "
                        + " , MAX(ClassName) className, MAX(SectionName) SectionName "
                        + " , MAX(SubjectGroupName)SubjectGroupName  "
                        + " , MAX(PerTest1)PerTest1  "
                        + " , MAX(NoteBook1)NoteBook1  "
                        + " , MAX(SEA1)SEA1  "
                        + " , MAX(HalfYearly)HalfYearly  "
                        + " , MAX(PerTest2)PerTest2  "
                        + " , MAX(NoteBook2)NoteBook2  "
                        + " , MAX(SEA2)SEA2  "
                        + " , MAX(Yearly) Yearly  "
                        + " , MAX(PerTest1_MM) PerTest1_MM "
                        + " , MAX(NoteBook1_MM)NoteBook1_MM  "
                        + " , MAX(SEA1_MM)SEA1_MM  "
                        + " , MAX(HalfYearly_MM)HalfYearly_MM  "
                        + " , MAX(PerTest2_MM)PerTest2_MM  "
                        + " , MAX(NoteBook2_MM)NoteBook2_MM  "
                        + " , MAX(SEA2_MM)SEA2_MM  "
                        + " , MAX(Yearly_MM) Yearly_MM  "
                        + " , MAX(PerTest1_Code)PerTest1_Code "
                        + " , MAX(NoteBook1_Code)NoteBook1_Code  "
                        + " , MAX(SEA1_Code)SEA1_Code  "
                        + " , MAX(HalfYearly_Code)HalfYearly_Code  "
                        + " , MAX(PerTest2_Code)PerTest2_Code  "
                        + " , MAX(NoteBook2_Code)NoteBook2_Code  "
                        + " , MAX(SEA2_Code)SEA2_Code  "
                        + " , MAX(Yearly_Code) Yearly_Code  "
                        + " FROM  (  "
                        + " SELECT  StudentName, FatherName, MotherName, DOB, AdmissionNo "
                        + " , SubjectGroupName , ClassName, SectionName, SubjectName "
                        + " ,  SubjectOrder "
                        + " ,  (CASE WHEN (ExamName = 'PT1' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PerTest1  "
                        + " ,(CASE WHEN (ExamName = 'NB1' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) NoteBook1  "
                        + " ,(CASE WHEN (ExamName = 'SEA1' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) SEA1  "
                        + " ,(CASE WHEN (ExamName = 'Half Yearly' )   "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) HalfYearly  "
                        + " ,(CASE WHEN (ExamName = 'PT2' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) PerTest2  "
                        + " ,(CASE WHEN (ExamName = 'NB2' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) NoteBook2  "
                        + " ,(CASE WHEN (ExamName = 'SEA2' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) SEA2  "
                        + " ,(CASE WHEN (ExamName = 'Yearly' )  "
                        + " THEN IsNull(MAX(MarksObtained), '0') END) Yearly  "
                        + " , (CASE WHEN (ExamName = 'PT1' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) PerTest1_MM  "
                        + " ,(CASE WHEN (ExamName = 'NB1' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) NoteBook1_MM  "
                         + " ,(CASE WHEN (ExamName = 'SEA1' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) SEA1_MM  "
                        + " ,(CASE WHEN (ExamName = 'Half Yearly' )   "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) HalfYearly_MM  "
                        + " ,(CASE WHEN (ExamName = 'PT2' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) PerTest2_MM  "
                        + " ,(CASE WHEN (ExamName = 'NB2' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) NoteBook2_MM  "
                        + " ,(CASE WHEN (ExamName = 'SEA2' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) SEA2_MM  "
                        + " ,(CASE WHEN (ExamName = 'Yearly' )  "
                        + " THEN IsNull(MAX(MaxMarks), '0') END) Yearly_MM  "
                        + " , (CASE WHEN (ExamName = 'PT1' )  "
                        + " THEN IsNull(MAX(ExamCode), '0') END) PerTest1_Code  "
                        + " , (CASE WHEN (ExamName = 'NB1' )  "
                        + " THEN IsNull(MAX(ExamCode), '0') END) NoteBook1_Code  "
                        + " ,(CASE WHEN (ExamName = 'SEA1' )  "
                        + " THEN IsNull(MAX(ExamCode), '0') END) SEA1_Code "
                        + " ,(CASE WHEN (ExamName = 'Half Yearly' )   "
                        + " THEN IsNull(MAX(ExamCode), '0') END) HalfYearly_Code "
                        + " ,(CASE WHEN (ExamName = 'PT2' )  "
                        + " THEN IsNull(MAX(ExamCode), '0') END) PerTest2_Code  "
                        + " ,(CASE WHEN (ExamName = 'NB2' )  "
                        + " THEN IsNull(MAX(ExamCode), '0') END) NoteBook2_Code  "
                        + " ,(CASE WHEN (ExamName = 'SEA2' )  "
                        + " THEN IsNull(MAX(ExamCode), '0') END) SEA2_Code  "
                        + " ,(CASE WHEN (ExamName = 'Yearly' )  "
                        + " THEN IsNull(MAX(ExamCode), '0') END) Yearly_Code  "
                        + " FROM(   SELECT   StudentMasterId   , StudentName "
                        + " , FatherName, MotherName, DOB, AdmissionNo, SubjectGroupName "
                        + " , MobileF  , ClassName   , SectionName  , TermName  "
                        + " , SubjectName  , SubjectOrder "
                        + " ,ExamCode, ExamName  "
                        + " , em.MaxMarks "
                        + " ,  IsNull(MAX(CASE WHEN (MarksObtained= -1 OR MarksObtained = -2) "
                        + " THEN 0 ELSE  MarksObtained END ), '0') marksObtained "
                        + " FROM tblExamMarks m   "
                        + " LEFT OUTER JOIN tblStudentMaster st  "
                        + " ON m.studentID = st.StudentMasterID    "
                        + " LEFT OUTER JOIN tblClassMaster c  ON c.ClassMasterId = m.ClassID   "
                        + " LEFT OUTER JOIN tblSectionMaster sm  ON sm.sectionMasterID = m.SectionID   "
                        + " LEFT OUTER JOIN tblExamMaster em  ON em.ExamMasterID = m.ExamID   "
                        + " LEFT OUTER JOIN tblSubjectMaster sub  ON sub.SubjectMasterID = m.SubjectId   "
                        + " LEFT OUTER JOIN tblSubjectGroupMaster sgm  "
                        + " ON sgm.SubjectGroupMasterID = sub.SubjectGroupMasterID   "
                        + " LEFT OUTER JOIN tblTerm tm ON tm.TermId = em.termID  ";
                        qry += Util_BLL.GetUserWhereCondition(Util_BLL.User, "st");
                        qry += " AND ClassName='" +className + "' "
                        + " AND SubjectGroupName='" + subjectGroup + "'"
                        + " GROUP By  StudentMasterId   "
                        + " , StudentName  , FatherName, MotherName, DOB "
                        + " , AdmissionNo, SubjectGroupName , MobileF   "
                        + " , ClassName   , SectionName   , SubjectName "
                        + " , SubjectOrder  , ExamName ,ExamCode  , MaxMarks, TermName  ) as A  "
                        + " GROUP BY StudentName, ExamName  , FatherName, MotherName, DOB "
                        + " , AdmissionNo, SubjectGroupName , ClassName, SectionName  "
                        + " , TermName  , SubjectName  , subjectOrder   ) as b  "
                        + " GROUP BY StudentName, SubjectName  , SubjectOrder  "
                        + " ) "
                        + " AS C "
                        + " GROUP BY StudentName, className "
                        + " ) AS D ";


            return qry;

        }

        public List<ReportCardCBSEEntity> GetResultByClass(string className="V")
        {
            DBSite site = new DBSite();
            List<ReportCardCBSEEntity> ResultList = new List<ReportCardCBSEEntity>();
            string qry = GetCBSEQry_Total(className
                , "Scholastic"
                , "PT1"
                , "PT2"
                , "NB1"
                , "NB2"
                , "SEA1"
                , "SEA2"
                , "Half Yearly"
                , "Yearly"
                , "First Term"
                , "Second Term"
                );

            DataTable dt = site.ExecuteSelect(qry);
            ReportCardCBSEEntity result = new ReportCardCBSEEntity();
           

            
            foreach (DataRow dr in dt.Rows)
            {
                result = new ReportCardCBSEEntity();

                
                result.StudentName = util.CheckNull(dr["StudentName"]);
                //result.DOB = util.CheckNullDate(dr["dob"]);

                result.ClassName = util.CheckNull(dr["ClassName"]);
                //result.SectionName = util.CheckNull(dr["SectionName"]);
                //result.MotherName = util.CheckNull(dr["MotherName"]);
                //result.FatherName = util.CheckNull(dr["FatherName"]);


                result.PT1 = util.CheckNull(dr["PerTest1"]);
                result.NoteBook1 = util.CheckNull(dr["NoteBook1"]);
                result.SEA1 = util.CheckNull(dr["SEA1"]);
                result.HalfYearly = util.CheckNull(dr["HalfYearly"]);
                result.SubjectTotal_HalfYearly = util.CheckNullDecimal(dr["HalfYearly_Total"]);

                result.SubjectTotal_MM_HalfYearly = util.CheckNullDecimal(dr["HalfYearly_Total_MM"]);
                if (result.SubjectTotal_MM_HalfYearly > 0)
                {
                    result.SubjectTotal_Percent_HalfYearly = (result.SubjectTotal_HalfYearly / result.SubjectTotal_MM_HalfYearly) * 100;
                    result.SubjectTotal_Grade_HalfYearly = GetGradeRemarks(result.SubjectTotal_Percent_HalfYearly, true);

                }
                result.PT2 = util.CheckNull(dr["PerTest2"]);
                result.NoteBook2 = util.CheckNull(dr["NoteBook2"]);
                result.SEA2 = util.CheckNull(dr["SEA2"]);
                result.Yearly = util.CheckNull(dr["Yearly"]);

                result.PT1_MM = util.CheckNullInt(dr["PerTest1_MM"]);
                result.NoteBook1_MM = util.CheckNullInt(dr["NoteBook1_MM"]);
                result.SEA1_MM = util.CheckNullInt(dr["SEA1_MM"]);
                result.HalfYearly_MM = util.CheckNullInt(dr["HalfYearly_MM"]);

                //result.PerTest2_MM = util.CheckNullInt(dr["PerTest2_MM"]);
                //result.NoteBook2_MM = util.CheckNullInt(dr["NoteBook2_MM"]);
                //result.SEA2_MM = util.CheckNullInt(dr["SEA2_MM"]);
                //result.Yearly_MM = util.CheckNullInt(dr["Yearly_MM"]);


                result.PT1_Code = util.CheckNull(dr["PerTest1_Code"]);
                result.NoteBook1_Code = util.CheckNull(dr["NoteBook1_Code"]);
                result.SEA1_Code = util.CheckNull(dr["SEA1_Code"]);
                result.HalfYearly_Code = util.CheckNull(dr["HalfYearly_Code"]);

                //result.PerTest2_Code = util.CheckNull(dr["PerTest2_Code"]);
                //result.NoteBook2_Code = util.CheckNull(dr["NoteBook2_Code"]);
                //result.SEA2_Code = util.CheckNull(dr["SEA2_Code"]);
                //result.Yearly_Code = util.CheckNull(dr["Yearly_Code"]);

                                
                ResultList.Add(result);
            }

            return ResultList;


        }

        public int GetPositionInClass()
        {
            int positionInClass = 0;
            // get list of students with total percent and arrange the list in desending order
            // 

            return positionInClass;
        }


        // 666 start

        public decimal GetTotal_LA(ReportCardCBSEEntity rc, bool isHalfYearly, bool isMM)
        {
            decimal first_Term_total = 0;
            decimal second_Term_total = 0;
            decimal total = 0;

            Decimal best = 0;

            string theClass = util.CheckNull(rc.ClassName).Trim();

            bool isNur = false;

            if (theClass.StartsWith("Nursery") || theClass.StartsWith("LKG") || theClass.StartsWith("UKG"))
                isNur = true;

            bool is11 = theClass.StartsWith("XI");
            
            bool is9 = theClass.StartsWith("IX");


            
            if (isHalfYearly)
            {
                if (!isMM)
                {

                   best = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1), isMM);

                    first_Term_total =
                                    best
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly), isMM);

                    if (is9)
                        first_Term_total += CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT23), isMM);

                    if (is11)
                    {
                        first_Term_total =
                                         CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT25), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT26), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT13), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT23), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT31), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT29), isMM);
                            
                    }
                        


                        if (isNur)
                        {
                            first_Term_total =
                                       CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT15), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT16), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT18), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT23), isMM);
                        }


                       
                        



                }
                else
                {
                    first_Term_total = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1_MM), isMM)
                                     + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly_MM), isMM);

                    if (is9)
                        first_Term_total += CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT23_MM), isMM);



                    if (isNur)
                    {
                        first_Term_total =
                                       CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT15_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT16_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT18_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT23_MM), isMM);
                        }



                    if (is11)
                    {
                        first_Term_total =
                                         CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT25_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT26_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT13_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT23_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT31_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT29_MM), isMM);

                    }

                }
            }
            else // Second Term
            {

                if (!isMM)
                {
                    
                    best = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2), isMM);

                    second_Term_total =
                                     best
                                     + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2), isMM)
                                     + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2), isMM)
                                     + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly), isMM);


                    if (is9)
                        second_Term_total += CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT24), isMM);



                    if (isNur)
                    {
                        second_Term_total =
                                      CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT21), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT22), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT20), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT24), isMM);

                    }

                    if (is11)
                    {
                        second_Term_total =
                                        CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT27), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT28), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT14), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT24), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT32), isMM)
                                       +CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT30), isMM);

                    }


                }
                else
                {
                    second_Term_total = CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly_MM), isMM);

                    if (is9)
                        second_Term_total += CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT24_MM), isMM);


                    if (isNur)
                    {
                        second_Term_total =
                                      CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT21_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT22_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT20_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT24_MM), isMM);

                    }

                    if (is11)
                    {
                        second_Term_total =
                                        CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT27_MM), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT28_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT14_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT24_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT32_MM), isMM)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT30_MM), isMM);

                    }


                }
            }

            if (isHalfYearly)
                total = first_Term_total;
            else
                total = second_Term_total;

            return total;
        }



        // end

        // DPS Bijnor


        public decimal GetTotal_DPS(ReportCardCBSEEntity rc, bool isHalfYearly, bool isMM)
        {
            decimal first_Term_total = 0;
            decimal second_Term_total = 0;
            decimal total = 0;

            string theClass = util.CheckNull(rc.ClassName).Trim();

            bool isNur = false;

            if (theClass.StartsWith("NURSERY") || theClass.StartsWith("LKG") || theClass.StartsWith("UKG"))
                isNur = true;

            bool is15 = false ;
            if (theClass.StartsWith("I")
                    || theClass.StartsWith("II")
                    || theClass.StartsWith("III")
                    || theClass.StartsWith("IV")
                    || theClass.Equals("V"))
            {
                is15 = true;
            }
                    

            bool is67 = theClass.StartsWith("IX");
            if (theClass.StartsWith("VI") || theClass.StartsWith("VII"))
                is67 = true;



            if (isHalfYearly)
            {
                if (!isMM)
                {


                    if (is15)
                    {
                        first_Term_total =
                                        CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT47), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT57), isMM);
                                        
                    }

                     if (is67)
                    {
                        first_Term_total =
                                       first_Term_total =
                                        CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT45), isMM);
                           

                    }



                    if (isNur)
                    {
                        first_Term_total =
                                   CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT48), isMM)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT49), isMM);
                    }



                }
                else
                {

                    if (is15)
                    {
                        first_Term_total =
                                          CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1_MM), isMM)
                                          + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1_MM), isMM)
                                          + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT47_MM), isMM)
                                          + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1_MM), isMM)
                                          + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT57_MM), isMM);
                    }



                    if (isNur)
                    {
                        first_Term_total =
                                   CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT48_MM), isMM)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT49_MM), isMM);
                    }

                    



                    if (is67)
                    {
                        first_Term_total =
                                       first_Term_total =
                                        CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook1_MM), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA1_MM), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1_MM), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT45_MM), isMM);
                        
                      
                    }

                }
            }
            else // Second Term
            {

                if (!isMM)
                {

                    if (is15)
                    {

                        second_Term_total =
                                         CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT22), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT3), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT44), isMM);
                                         
                    }

                    

                    if (isNur)
                    {
                        second_Term_total =
                                          CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT50), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT51), isMM);
                        
                     
                    }

                    if (is67)
                    {
                        second_Term_total =
                                         CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT3), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT46), isMM);
                       
                    }


                }
                else
                {
                    if (is15)
                    {
                        //888

                        second_Term_total =
                                         CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2_MM), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2_MM), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT22_MM), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT3_MM), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT44_MM), isMM);

                    }

                   

                    if (isNur)
                    {
                        second_Term_total =
                                          CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT50_MM), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT51_MM), isMM);
                        
                    }

                    if (is67)
                    {
                        second_Term_total =
                                        CheckMedicalOrAbsent(util.CheckNullDecimal(rc.NoteBook2_MM), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.SEA2_MM), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT3_MM), isMM)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT46_MM), isMM);
                      
                    }


                }
            }

            if (isHalfYearly)
                total = first_Term_total;
            else
                total = second_Term_total;

            return total;
        }

        public decimal GetOverAllMarks_DPS(DataTable dt, bool isMM, bool isHalfYearly)
        {
            decimal overallMarks = 0;

            string theClass = "";

            bool isNur = false;
            bool is15 = false;
            bool is67 = false;

            /// 555
            foreach (DataRow dr in dt.Rows)
            {

                theClass = util.CheckNull(dr["ClassName"]).Trim();

                if (theClass.StartsWith("NURSERY") || theClass.StartsWith("LKG") || theClass.StartsWith("UKG"))
                    isNur = true;

                is15 = false;
                if (theClass.StartsWith("I")
                        || theClass.StartsWith("II")
                        || theClass.StartsWith("III")
                        || theClass.StartsWith("IV")
                        || theClass.Equals("V"))
                {
                    is15 = true;
                }

                
                is67 = false;
                if (theClass.StartsWith("VI") || theClass.StartsWith("VII"))
                    is67 = true;


                // Marks Obtained
                if (!isMM)
                {

                    if (is15)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook1"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA1"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT47"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT57"]), false)

                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook2"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA2"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT22"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT3"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT44"]), false);
                            
                    }

                    else if (is67)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook1"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA1"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT45"]), false)

                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook2"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA2"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT3"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT46"]), false);
                            
                    }



                    else if (isNur)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT48"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT49"]), false)

                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT50"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT51"]), false);
                                   
                    }
                  



                }
                else
                {




                    if (is15)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook1_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA1_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT47_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT57_MM"]), false)

                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook2_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA2_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT22_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT43_MM"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT44_MM"]), false);

                    }

                    else if (is67)
                    {
                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook1_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA1_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT45_MM"]), false)

                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["NoteBook2_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["SEA2_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT3_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT46_MM"]), false);
                        

                    }

                    else if (isNur)
                    {

                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT48"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT49"]), false)

                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT50"]), false)
                                   + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PT51"]), false);
                    }
                  
                }


            }

            return overallMarks;

        }





        /// END


        /// BPS
        public decimal GetTotal_BPS(ReportCardCBSEEntity rc, bool isHalfYearly, bool isMM)
        {
            decimal first_Term_total = 0;
            decimal second_Term_total = 0;
            decimal total = 0;

           


            if (isHalfYearly)
            {
                if (!isMM)
                {

                    first_Term_total =
                                         CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly), isMM);
                                        


                }
                else
                {

                    first_Term_total =
                                         CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT1_MM), isMM)
                                         + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.HalfYearly_MM), isMM);
                    

                }
            }
            else // Second Term
            {

                if (!isMM)
                {


                    second_Term_total =
                                     CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2), isMM)
                                     + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly), isMM);
                                         
                    


                }
                else
                {
                    second_Term_total =
                                    CheckMedicalOrAbsent(util.CheckNullDecimal(rc.PT2_MM), isMM)
                                    + CheckMedicalOrAbsent(util.CheckNullDecimal(rc.Yearly_MM), isMM);
                    

                }
            }

            if (isHalfYearly)
                total = first_Term_total;
            else
                total = second_Term_total;

            return total;
        }




        public decimal GetOverAllMarks_BPS(DataTable dt, bool isMM, bool isHalfYearly)
        {
            decimal overallMarks = 0;

            foreach (DataRow dr in dt.Rows)
            {

                // Marks Obtained
                if (!isMM)
                {

                        overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly"]), false)
                                        
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest2"]), false)
                                        + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly"]), false);
                                        
                    
                }
                else
                {
                    overallMarks += CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest1_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["HalfYearly_MM"]), false)

                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["PerTest2_MM"]), false)
                                       + CheckMedicalOrAbsent(util.CheckNullDecimal(dr["Yearly_MM"]), false);
                        
                }


            }

            return overallMarks;

        }

 
        /// END



    }
}
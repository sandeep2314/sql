using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Data.SqlClient;


namespace SmsService
{
    public  class DBSite
    {
        public SqlConnection conn = null;
        public SqlTransaction  trans = null;
        public SqlCommand  cmd = null;
        
        public static string user = null ;


        public DBSite()
        {   
            //localhost
          //string conStr = "Data Source=localhost;Initial Catalog=AccountsDB; User ID=sa;password=4495;";
          
            //vps
          // string conStr = "Data Source=.\\sqlexpress;Initial Catalog=AccountsDB; User ID=sa;password=Qwaszx@123;";
           // string conStr = "Data Source=49.50.76.253\\sqlexpress;Initial Catalog=AccountsDB; User ID=sa;password=Qwaszx@123;";
          
            ////strad  BPS 1819
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //+"Initial Catalog=AccountsDB_BPS_1819_ORG;User ID=sa;password=Sandeep123@#;";


            // Hashmi
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //                + "Initial Catalog=AccountsDB_Hashmi;User ID=sa;password=Sandeep123@#;";

            //// Garden Valley
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //                + "Initial Catalog=AccountsDB_GardenValley;User ID=sa;password=Sandeep123@#;";

            ////  Oakwood

            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //                + "Initial Catalog=AccountsDB_Oak;User ID=sa;password=Sandeep123@#;";
  
            //////strad 5CS
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //                + "Initial Catalog=AccountsDB_5CS;User ID=sa;password=Sandeep123@#;";


            //////strad AccountsDB
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //                + "Initial Catalog=AccountsDB;User ID=sa;password=Sandeep123@#;";

            ////strad  Pradeep Manwal
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //              + "Initial Catalog=AccountsDB_BPS_1819;User ID=sa;password=Sandeep123@#;";



            ////strad  Krist Jayanti
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //              + "Initial Catalog=AccountsDB_Krist;User ID=sa;password=Sandeep123@#;";


            ////Little Angels
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //              + "Initial Catalog=AccountsDB_LittleAngels1819;User ID=sa;password=Sandeep123@#;";


            ////OakWood
            //string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
            //              + "Initial Catalog=HSMDB1819;User ID=sa;password=Sandeep123@#;";

            ////whitehall
            string conStr = "Data Source=103.233.24.31,1433\\SQLEXPRESS;"
                          + "Initial Catalog=WhiteHallDB1819;User ID=sa;password=Sandeep123@#;";

            
            // Server
           //string conStr = "Data Source=66.63.181.67;Initial Catalog=famousflavours; User ID=famousflavours;password=fLbS$Ev9O$;";
         
            conn = new SqlConnection(conStr);
            conn.Open();
            cmd = conn.CreateCommand();
        }

        

        public void BeginTrans()
        {
            trans = conn.BeginTransaction();
            cmd.Transaction = trans;
        }

      
        public void Commit()
        {
            if(trans != null)
                trans.Commit();
        }

        public void RollBack()
        {
            if(trans != null)
                trans.Rollback();
        }

        


        public void Execute(string qry)
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = qry;
            int recordsAffected = cmd.ExecuteNonQuery();
        }

        // if cmd is used..with parametersided qry
        public void Execute()  
        {
            cmd.CommandType = CommandType.Text;
            int recordsAffected = cmd.ExecuteNonQuery();
            
        }

        public DataTable ExecuteSelect(string qry)
        {
            DataTable dt = new DataTable();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = qry;
            using (IDataReader reader = cmd.ExecuteReader())
            {
                dt.Load(reader);
            }
            return dt;
        }

        public DataTable Execute_sp_productLedger(int productId, int StockTransactionId, int locationId, DateTime fromDt, DateTime toDt, int userId, int fYear)
        {
            DataTable dt = new DataTable();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_ProductLedger3";

            cmd.Parameters.Add(new SqlParameter("@productMasterId", productId));
            cmd.Parameters.Add(new SqlParameter("@transactionId", StockTransactionId));
            cmd.Parameters.Add(new SqlParameter("@locationId", locationId));
            cmd.Parameters.Add(new SqlParameter("@fromDt", fromDt ));
            cmd.Parameters.Add(new SqlParameter("@toDt", toDt));
            cmd.Parameters.Add(new SqlParameter("@userID", userId ));
            cmd.Parameters.Add(new SqlParameter("@Fyear", fYear));

            using (IDataReader reader = cmd.ExecuteReader())
            {
                dt.Load(reader);
            }
            return dt;
        }

        

        public void Close()
        {
            if (this == null)
                return;

            if (trans != null)
            {
                trans = null;
            }

            if (conn != null)
            {
                conn.Close();
                conn.Dispose();
                SqlConnection.ClearAllPools();
                conn = null;
            }

            
        }

      
        
        
    } 
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


// open command prompt via Admin

//InstallUtil.exe
//C:\Windows\Microsoft.NET\Framework\v4.0.30319

//C:\Windows\Microsoft.NET\Framework\v4.0.30319 InstallUtil.exe /u "E:\SMS_Service\SmsService\SmsService\bin\Debug\SmsService.exe"
//C:\Windows\Microsoft.NET\Framework\v4.0.30319 InstallUtil.exe /u "C:\Documents and Settings\welcome\Desktop\SQL\sql.git\trunk\SmsService\SmsService\bin\Debug\SmsService.exe"


//C:\Windows\Microsoft.NET\Framework\v4.0.30319 InstallUtil.exe  "E:\SMS_Service\SmsService\SmsService\bin\Debug\SmsService.exe"
//C:\Windows\Microsoft.NET\Framework\v4.0.30319 InstallUtil.exe  "C:\Documents and Settings\welcome\Desktop\SQL\sql.git\trunk\SmsService\SmsService\bin\Debug\SmsService.exe"

namespace SmsService
{
    public static class SendSMSToParents
    {


        public static void WriteErrorLog(Exception ex)
        {
            StreamWriter sw = null;
            try
            {
                sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory + "\\LogFile.txt", true);
                sw.WriteLine(DateTime.Now.ToString() + ":" + ex.Source.ToString() + " : " + ex.Message.ToString());
                sw.Flush();
                sw.Close();
                
            }
            catch
            {
            }
        }

        public static void WriteErrorLog(string msg)
        {
            
            StreamWriter sw = null;
            try
            {
                sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory + "\\LogFile.txt", true);
                sw.WriteLine(DateTime.Now.ToString() + " : " + msg);
                sw.Flush();
                sw.Close();

            }
            catch
            {
            }
        }



        


    }
}

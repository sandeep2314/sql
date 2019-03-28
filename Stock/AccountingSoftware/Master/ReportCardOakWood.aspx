<%@ Page Language="C#" AutoEventWireup="true" 
MasterPageFile="~/SiteMaster.Master"
CodeBehind="ReportCardOakWood.aspx.cs" 
Inherits="AccountingSoftware.Master.ReportCardOakWood" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
    
      
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <link href="../css/MyCss.css" rel="stylesheet" type="text/css" />
    <link href="../js/jquery-ui-1.8.17.custom.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="../js/jquery-ui-1.8.17.custom.min.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.autocomplete.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.core.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.position.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.datepicker.js" type="text/javascript"></script>
  
    

    <div id="searchFilter">
     
        <table>
                                <tr>
                                <td class="tblcontent">
                                    Class:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlClass" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="Class_Changed" ></asp:DropDownList>
                                </td>
                                <td class="tblcontent">
                                    Student Name:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlStudent" runat="server"   AutoPostBack="true"  OnSelectedIndexChanged="Student_Changed"  ></asp:DropDownList>
                                </td>
                                <td>
                                    Student ID:<asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
                                </td>
                                </tr>
                                </table>
                           

        <asp:Button ID="btnGet" runat="server" Text="Show Report" OnClick="btnGet_Click"
            class="button" />

    

    </div>
    <div id="errDiv" class="errDiv">
        <asp:Label ID="lblError" runat="server" CssClass="error-lable" Visible="False"></asp:Label>
    </div>
      

     <rsweb:ReportViewer ID="rvReportCardCBSE" runat="server" Font-Names="Verdana"
        Font-Size="8pt"    InteractiveDeviceInfos="(Collection)" 
        ZoomMode="PageWidth" SizeToReportContent="True"
        
        WaitMessageFont-Names="Verdana"
        WaitMessageFont-Size="14pt" LinkDisabledColor="#CCCCCC">
        
        <LocalReport  EnableHyperlinks="True" EnableExternalImages="True">
            
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="odsUserData" Name="UserDataSet" />
            </DataSources>
            

            <DataSources>
                <rsweb:ReportDataSource DataSourceId="odsReportCard" Name="ScholasticDataSet" />
            </DataSources>
             <DataSources>
                <rsweb:ReportDataSource DataSourceId="odsReportCard2" Name="CoScholasticDataSet" />
            </DataSources>
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="odsReportCard3" Name="DisciplineDataSet" />
            </DataSources>
            
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="odsReportCard4" Name="PhysicalDataSet" />
            </DataSources>

            <DataSources>
                <rsweb:ReportDataSource DataSourceId="odsReportCard5" Name="RemarksDataSet" />
            </DataSources>


        </LocalReport>
    </rsweb:ReportViewer>


   
    <asp:ObjectDataSource ID="odsUserData" runat="server" 
        SelectMethod="GetUsers" TypeName="AccountingSoftware.BLL.UserBll">
        
    </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="odsReportCard" runat="server" 
        SelectMethod="GetReportCardCBSE_BPS" TypeName="AccountingSoftware.BLL.BPSBll">
        <SelectParameters>
           
            <asp:ControlParameter ControlID="txtStudentId" Name="studentId" PropertyName="Text"
                Type="String" />
        

        </SelectParameters>
    </asp:ObjectDataSource>


    <asp:ObjectDataSource ID="odsReportCard2" runat="server" 
        SelectMethod="GetReportCardCBSE_CoScholastic_BPS" TypeName="AccountingSoftware.BLL.BPSBll">
        <SelectParameters>
           
            <asp:ControlParameter ControlID="txtStudentId" Name="studentId" PropertyName="Text"
                Type="String" />
        

        </SelectParameters>
    </asp:ObjectDataSource>

     <asp:ObjectDataSource ID="odsReportCard3" runat="server" 
        SelectMethod="GetReportCardCBSE_Discipline_BPS" TypeName="AccountingSoftware.BLL.BPSBll">
        <SelectParameters>
           
            <asp:ControlParameter ControlID="txtStudentId" Name="studentId" PropertyName="Text"
                Type="String" />
        

        </SelectParameters>
    </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="odsReportCard4" runat="server" 
        SelectMethod="GetReportCardCBSE_Physical_BPS" TypeName="AccountingSoftware.BLL.BPSBll">
        <SelectParameters>
           
            <asp:ControlParameter ControlID="txtStudentId" Name="studentId" PropertyName="Text"
                Type="String" />
        

        </SelectParameters>
    </asp:ObjectDataSource>


    <asp:ObjectDataSource ID="odsReportCard5" runat="server" 
       SelectMethod="GetReportCardCBSE_Remarks_BPS" TypeName="AccountingSoftware.BLL.BPSBll">
        <SelectParameters>
           
            <asp:ControlParameter ControlID="txtStudentId" Name="studentId" PropertyName="Text"
                Type="String" />
        

        </SelectParameters>
    </asp:ObjectDataSource>



    </asp:Content>
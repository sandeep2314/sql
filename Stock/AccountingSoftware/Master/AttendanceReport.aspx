<%@ Page Language="C#" AutoEventWireup="true" 
 MasterPageFile="~/SiteMaster.Master"
CodeBehind="AttendanceReport.aspx.cs" Inherits="AccountingSoftware.Master.AttendanceReport" %>

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
    <script type="text/javascript">

        $(function () {
            $("#<%= txtFromDate.ClientID  %>").datepicker({
                showOn: "button",
                buttonImage: "../images/calendar.gif",
                buttonImageOnly: true
            });
        });
    </script>
    
    <div id="searchFilter">
        Date:<asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
        To Date
        
     
       
        <asp:DropDownList ID="ddlClasses" runat="server" DataSourceID="odsClasses" 
            DataTextField="SchoolClassName" DataValueField="SchoolClassId" AutoPostBack="true"
            AppendDataBoundItems="true" >
            <asp:ListItem Value="-1">All</asp:ListItem>
        </asp:DropDownList>

        <asp:ObjectDataSource ID="odsClasses" runat="server" SelectMethod="GetClasses" 
            TypeName="AccountingSoftware.BLL.AttendanceBll"></asp:ObjectDataSource>



        <asp:Button ID="btnGet" runat="server" Text="Show Report" OnClick="btnGet_Click"
            class="button" />
    </div>
    <div id="errDiv" class="errDiv">
        <asp:Label ID="lblError" runat="server" CssClass="error-lable" Visible="False"></asp:Label>
    </div>

     <rsweb:ReportViewer ID="rvAttendance" runat="server" Height="90%" Width="80%" Font-Names="Verdana"
        Font-Size="8pt"    InteractiveDeviceInfos="(Collection)" WaitMessageFont-Names="Verdana"
        WaitMessageFont-Size="14pt" LinkDisabledColor="#CCCCCC">
        <LocalReport ReportPath="RDLC\AttendanceByDateReport.rdlc" EnableHyperlinks="True" EnableExternalImages="True">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="odsAttendance" Name="AttendanceDataSet" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>


    <asp:ObjectDataSource ID="odsAttendance" runat="server" 
        SelectMethod="GetAttendanceByDate" TypeName="AccountingSoftware.BLL.AttendanceBll">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtFromDate" Name="fromDate" 
                PropertyName="Text" Type="String" />
           <asp:ControlParameter ControlID="ddlClasses" Name="SchoolClassId" 
                PropertyName="SelectedValue" Type="Int32" />


        </SelectParameters>
    </asp:ObjectDataSource>

    </asp:Content>
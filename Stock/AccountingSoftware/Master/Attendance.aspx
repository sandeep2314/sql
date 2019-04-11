<%@ Page Language="C#" AutoEventWireup="true" 
CodeBehind="Attendance.aspx.cs" 
MasterPageFile="~/SiteMaster.Master" 
Inherits="AccountingSoftware.Master.Attendance" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/MyCss.css" rel="stylesheet" type="text/css" />
    <link href="../js/jquery-ui-1.8.17.custom.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="../js/jquery-ui-1.8.17.custom.min.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.autocomplete.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.core.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.position.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ctl00_ContentPlaceHolder1_txtSearch").keypress(function (e) {
                if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
                    $("#ctl00_ContentPlaceHolder1_btnSearch").click();
                    return false;
                }
                else {
                    return true;
                }
            }

          )
        });
    </script>
    
     <div class="auth-div">
             <table>
                  <tr>
                  <td>
                 <a runat="server" id="hrfAuth">AuthorisedDealer.com</a>
                  </td></tr>
                    <tr><td>
                        <asp:Label ID="lblSupport" runat="server" 
                        
                        Text="For Support: Mob. 921 948 4030 Email: AuthDealer@gmail.com" 
                        ForeColor="#666666" Font-Size="9pt"></asp:Label> 
                    </td></tr>
                 
            </table>
    </div>

    <table width="100%">
        <tr>
            <td>
                <div class="button-div">
                
                    <asp:Button ID="btnPost" runat="server" Text="Post" OnClick="btnPost_Click" CssClass="button" />
                   
                  
                    <asp:Button ID="btnGet" runat="server" Text="Get" OnClick="btnGet_Click"
                        CssClass="button" />
                     <asp:Button ID="btnAbsentees" runat="server" Text="Show Absentees" OnClick="btnAbsentees_Click"
                        CssClass="button" />
                    <asp:Button ID="btnSendSMSToAbsentees" runat="server" Text="SMS to Absentees" OnClick="btnSendSMSToAbsentees_Click" Width="15%" 
                        CssClass="button" />
                   
                    <asp:TextBox ID="txtSearch" width="400" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="button" OnClick="btnSearch_Click" />
                    
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="errDiv" class="errDiv">
                    <asp:Label ID="lblError" runat="server" CssClass="error-lable" Visible="False"></asp:Label>
                    <asp:Label ID="lblMessage" runat="server" CssClass="message-lable" Visible="False"></asp:Label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-div">
                    <fieldset>
                     <legend class="legend">Attendance By Day</legend>                        
                        <table width="100%">
                             <tr>
                                <td class="tblcontent">
                                    Class:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlClass" runat="server"></asp:DropDownList>
                                </td>
                           
                               <td class="tblcontent">
                                  Select Year :
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
                                    
                                </td>


                                <td class="tblcontent">
                                  Select Month:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
                                    
                                </td>

                                <td class="tblcontent">
                                  Select Day:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
                                    
                                </td>


                           </tr>
                            
                         
                        </table>
                    </fieldset>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="grid-div" style="top: 55%">
                    <asp:GridView ID="gridView1" runat="server" AutoGenerateColumns="false" Width="100%"
                       AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr"
                        GridLines="None" AlternatingRowStyle-CssClass="alt" EnableModelValidation="True"
                        OnSelectedIndexChanged="gridView1_SelectedIndexChanged" OnPageIndexChanging="grid1_PageIndexChanging"
                        PageSize="2000">
                        <Columns>
                          <asp:TemplateField HeaderText="Present" HeaderStyle-Width="10">
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckbPresent" runat="server" Checked='<%# Eval("Status").ToString() == "1" ? true : false %>' />
                                     
                                </ItemTemplate>
                            </asp:TemplateField>
                            

                            <asp:TemplateField HeaderText="SrNo" HeaderStyle-Width="10">
                           <HeaderTemplate>
                               <asp:Label ID="srno1"  runat="server" Text="Sr.No."  />
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                            </ItemTemplate>
                         </asp:TemplateField>



                            <asp:BoundField HeaderText="ID" DataField="AttendanceId"  HeaderStyle-Width="20" />
                            <asp:BoundField HeaderText="Student Name" DataField="StudentName" HeaderStyle-Width="100" />
                            <asp:BoundField HeaderText="IDCard No" DataField="IdCardNo"  HeaderStyle-Width="30" />
                            <asp:BoundField HeaderText="Class" DataField="ClassName"  HeaderStyle-Width="30" />
                            <asp:BoundField HeaderText="Section" DataField="SectionName"  HeaderStyle-Width="30" />
                            
                           <asp:BoundField HeaderText="In Time" DataField="InTime"  HeaderStyle-Width="60" />
                           <asp:BoundField HeaderText="Out Time" DataField="OutTime"  HeaderStyle-Width="60" />
                           <asp:BoundField HeaderText="Posted" DataField="IsPosted"  HeaderStyle-Width="10" />
                           <asp:BoundField HeaderText="SMS Sent" DataField="IsSMSSent"  HeaderStyle-Width="10" />
                            
                            
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
   
</asp:Content>



<%@ Page Language="C#" AutoEventWireup="true"
 CodeBehind="StudentMaster.aspx.cs" 
 MasterPageFile="~/SiteMaster.Master" 
 Inherits="AccountingSoftware.Master.StudentMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <script type="text/javascript">

        $(function () {
            $("#<%= txtDOB.ClientID  %>").datepicker({
                showOn: "button",
                buttonImage: "../images/calendar.gif",
                buttonImageOnly: true
            });
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
                    
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="button" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"
                        CssClass="button" />
                    <asp:Button ID="btnGet" runat="server" Text="Get" OnClick="btnGet_Click"
                        CssClass="button" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnCancel_Click" CssClass="button" />
                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="button" OnClick="btnSearch_Click" />
                    <asp:Button ID="btnChangeClass" runat="server" Text="Change Class" CssClass="button" OnClick="btnChangeClass_Click" />
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
                     <legend class="legend">Student Master</legend>                        
                        <table width="100%">
                            <tr>
                                <td class="tblcontent">
                                    Student Master Id
                                </td>
                                <td>
                                    <asp:Label ID="lblStudentMasterId" runat="server" Text="New"></asp:Label>
                                </td>
                                 <td class="tblcontent">
                                 
                                </td>
                                <td>
                                 
                                    
                                </td>
                                 
                            </tr>
                             <tr>
                               
                                <td class="tblcontent">
                                    Name 
                                </td>
                                <td>
                                    <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
                                    
                                </td>
                                 
                                  <td class="tblcontent">
                                    Adm. No
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAdmNo" runat="server"></asp:TextBox>
                                    
                                </td>


                            </tr>
                            <tr>
                             <td class="tblcontent">
                                    Present Class
                                </td>
                                <td>
                                    
                                    <asp:DropDownList ID="ddlPresentClass" runat="server"></asp:DropDownList>
                                </td>

                                 <td class="tblcontent" valign="top">
                                    Section
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSection" runat="server"></asp:DropDownList>
                                </td>
                               
                               
                            </tr>
                            <tr>
                               
                                <td class="tblcontent">
                                    Mobile No(Primary)
                                </td>
                                <td>
                                   <asp:TextBox ID="txtMobileNoF" MaxLength="10"  runat="server"></asp:TextBox>
                                   
                                </td>

                                <td class="tblcontent">
                                    Mobile No(Secondary)
                                </td>
                                <td>
                                   <asp:TextBox ID="txtMobileNoM" runat="server"></asp:TextBox>
                                   
                                </td>
                               

                            </tr>
                            

                            <tr>

                             <td class="tblcontent">
                                    Mother's Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMotherName" runat="server"></asp:TextBox>
                                </td>

                                  <td class="tblcontent" valign="top">
                                    Father's Name
                                </td>
                                <td>
                                     <asp:TextBox ID="txtFatherName" runat="server"></asp:TextBox>
                                </td>

                                </tr>


                            <tr>

                             <td class="tblcontent">
                                    DOB
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                                </td>

                                  <td class="tblcontent" valign="top">
                                    ID Card No
                                </td>
                                <td>
                                     <asp:TextBox ID="txtIdCardNo" runat="server"></asp:TextBox>
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
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-Width="20">
                                <ItemTemplate>
                                    <asp:CheckBox ID="myCheckBox" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField SelectText="Edit" ItemStyle-CssClass="links" ShowSelectButton="True"
                                HeaderText="Edit" HeaderStyle-Width="20" />

                          <asp:TemplateField HeaderText="SrNo" HeaderStyle-Width="10">
                           <HeaderTemplate>
                               <asp:Label ID="srno1"  runat="server" Text="Sr.No."  />
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                            </ItemTemplate>
                         </asp:TemplateField>

                            <asp:BoundField HeaderText="ID" DataField="StudentMasterId" />
                            <asp:BoundField HeaderText="Admn No" DataField="AdmNo" HeaderStyle-Width="20" />
                            <asp:BoundField HeaderText="Student Name" DataField="StudentName" />
                            <asp:BoundField HeaderText="Present Class" DataField="PresentClassName" />
                            <asp:BoundField HeaderText="Section" DataField="Section" />
                            <asp:BoundField HeaderText="MotherName" DataField="MotherName" />
                            <asp:BoundField HeaderText="FatherName" DataField="FatherName" />
                            <asp:BoundField HeaderText="MobileNo(Father)" DataField="MobileNoF" />
                         
                            <asp:BoundField HeaderText="DOB" DataField="DOB" />
                            
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
   
</asp:Content>

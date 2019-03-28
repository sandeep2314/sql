<%@ Page Language="C#" AutoEventWireup="true" 
CodeBehind="ExamMasterFrm.aspx.cs"  MasterPageFile="~/SiteMaster.Master"
Inherits="AccountingSoftware.Master.ExamMasterFrm" %>

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
                     <legend class="legend">Exam Master</legend>                        
                        <table width="100%">
                            <tr>
                                <td class="tblcontent">
                                    Exam Master Id
                                </td>
                                <td>
                                    <asp:Label ID="lblExamMasterId" runat="server" Text="New"></asp:Label>
                                </td>
                                 <td class="tblcontent">
                                 
                                </td>
                                <td>
                                 
                                    
                                </td>
                                 
                            </tr>
                             <tr>
                               
                                <td class="tblcontent">
                                    Exam Name 
                                </td>
                                <td>
                                    <asp:TextBox ID="txtExamName" runat="server"></asp:TextBox>
                                    
                                </td>
                                 
                                  <td class="tblcontent">
                                    Exam Code
                                </td>
                                <td>
                                    <asp:TextBox ID="txtExamCode" runat="server"></asp:TextBox>
                                    
                                </td>


                            </tr>
                            <tr>
                             <td class="tblcontent">
                                    Class
                                </td>
                                <td>
                                    
                                    <asp:DropDownList ID="ddlClass" runat="server"></asp:DropDownList>
                                </td>

                                 <td class="tblcontent" valign="top">
                                    Section
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSection" runat="server"></asp:DropDownList>
                                </td>
                               
                               
                            </tr>
                            <tr>
                               
                                <%--<td class="tblcontent">
                                    Exam Date
                                </td>--%>
                                <%--<td>
                                   <asp:TextBox ID="txtExamDate" MaxLength="20"  runat="server"></asp:TextBox>
                                   
                                </td>--%>

                                <td class="tblcontent">
                                  Term
                                </td>
                                <td>
                                  <asp:DropDownList ID="ddlTerm" runat="server"></asp:DropDownList>
                                   
                                </td>
                               

                            </tr>
                            

                            <tr>

                             <td class="tblcontent">
                                    Max Marks
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMaxMarks" runat="server"></asp:TextBox>
                                </td>
                                  <td class="tblcontent" valign="top">
                                    Pass Marks
                                </td>
                                <td>
                                     <asp:TextBox ID="txtPassMarks" runat="server"></asp:TextBox>
                                </td>

                                </tr>
                            

                                 <tr>

                             <td class="tblcontent">
                                    IsFormula
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlFormula" runat="server"></asp:DropDownList>
                                </td>
                                  <td class="tblcontent" valign="top">
                                    Exam Order
                                </td>
                                <td>
                                     <asp:TextBox ID="txtExamOrder" runat="server"></asp:TextBox>
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
                        OnSelectedIndexChanged="gridView1_SelectedIndexChanged" OnPageIndexChanging="gridView1_PageIndexChanging"
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

                            <asp:BoundField HeaderText="ID" DataField="ExamMasterId" />
                            <asp:BoundField HeaderText="ExamName" DataField="ExamName" HeaderStyle-Width="50" />
                            <asp:BoundField HeaderText="Exam Code" DataField="ExamCode" />
                            <asp:BoundField HeaderText="Term" DataField="TermId" />
                            <asp:BoundField HeaderText="Class Name" DataField="ClassMasterID" />
                            <asp:BoundField HeaderText="Section Name" DataField="SectionMasterID" />
                            <asp:BoundField HeaderText="MaxMarks" DataField="MaxMarks" />
                            <asp:BoundField HeaderText="PassMarks" DataField="PassMarks" />
                            <asp:BoundField HeaderText="ExamOrder" DataField="ExamOrder" />
                            
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
   

</asp:Content>
<%@ Page Language="C#" AutoEventWireup="true"
 MasterPageFile="~/SiteMaster.Master" 
 CodeBehind="UploadFrm.aspx.cs" 
 Inherits="AccountingSoftware.Master.UploadFrm" %>

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

    <div class="form-div">
                    <fieldset>
                     <legend class="legend">Upload File</legend>
                     </fieldset>


                <table>
                  
                    <tr>
                
                  <td class="tblcontent">
                        School No:
                    </td>
                     <td>
                        <asp:TextBox ID="txtSchoolCode" runat="server"></asp:TextBox>
                                    
                     </td>  
                     <td>
                     </td> 
                    </tr>
                  
                  
                    <tr>
                
                  <td class="tblcontent">
                        Admission No:
                    </td>
                     <td>
                        <asp:TextBox ID="txtAdmNo" runat="server"></asp:TextBox>
                                    
                     </td>  
                     <td>
                     </td> 
                    </tr>
                    <tr>
                        <td class="tblcontent">
                            Select File:
                        </td>
                        <td class="tblcontent" >
                            <asp:FileUpload runat="server" ID="UploadImages" AllowMultiple="true" />  
                        </td>
                        <td class="tblcontent">
                           <asp:Button runat="server" ID="uploadedFile" Text="Upload" OnClick="uploadFile_Click" />   
                        </td>

                    </tr>
                    <tr>
                       
                        <td class="tblcontent"  colspan="3">
                           <asp:Label ID="listofuploadedfiles" runat="server" />  
                        </td>
                    </tr>


                    <tr>
            <td>
                <%--<div class="grid-div" style="top: 67%">
                    <asp:GridView ID="gridView1" runat="server" Width="100%" AutoGenerateColumns="false"
                        AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr"
                        GridLines="None" AlternatingRowStyle-CssClass="alt" EnableModelValidation="True"
                        OnSelectedIndexChanged="gridView1_SelectedIndexChanged" OnPageIndexChanging="grid1_PageIndexChanging"
                        PageSize="1000">
                        <Columns>
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-Width="20">
                                <ItemTemplate>
                                    <asp:CheckBox ID="myCheckBox" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField SelectText="Edit" ShowSelectButton="True" HeaderText="Edit" HeaderStyle-Width="20" />
                            <asp:BoundField DataField="SubjectMasterID" HeaderText="ID" />
                            <asp:BoundField DataField="SubjectName" HeaderText="Subject" />
                            <asp:BoundField DataField="SubjectCode" HeaderText="Subject Code" />
                            <asp:BoundField DataField="SubjectClassName" HeaderText="Class" />
                            <asp:BoundField DataField="SubjectSectionName" HeaderText="Section" />
                            <asp:BoundField DataField="SubjectGroupName" HeaderText="Group" />
                            <asp:BoundField DataField="SubjectOrder" HeaderText="Order" />
                            
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>--%>



            </table>
   
   
   
</div>  




</asp:Content>
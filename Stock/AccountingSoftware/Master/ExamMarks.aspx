<%@ Page Language="C#" AutoEventWireup="true" 
CodeBehind="ExamMarks.aspx.cs" 
MasterPageFile="~/SiteMaster.Master"
Inherits="AccountingSoftware.Master.ExamMarks" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

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
      
          function SelectAll(id, grid) {
              //get reference of GridView control
              //var grid = document.getElementById("<%= gridView2.ClientID %>");
              //variable to contain the cell of the grid
              var cell;

              if (grid.rows.length > 0) {
                  //loop starts from 1. rows[0] points to the header.
                  for (i = 1; i < grid.rows.length; i++) {
                      //get the reference of first column
                      cell = grid.rows[i].cells[0];

                      //loop according to the number of childNodes in the cell
                      for (j = 0; j < cell.childNodes.length; j++) {
                          //if childNode type is CheckBox                 
                          if (cell.childNodes[j].type == "checkbox") {
                              //assign the status of the Select All checkbox to the cell 
                              //checkbox within the grid
                              cell.childNodes[j].checked = document.getElementById(id).checked;
                          }
                      }
                  }
              }
          }

          function SelectAllGrid1(id) {
              var grid = document.getElementById("<%= gridView1.ClientID %>");
              SelectAll(id, grid);
          }

//          function SelectAllGrid2(id) {
//              var grid = document.getElementById("<%= gridView2.ClientID %>");
//              SelectAll(id, grid);
//          }
//           
//          function SelectAllGrid3(id) {
//              var grid = document.getElementById("<%= gridView3.ClientID %>");
//              SelectAll(id, grid);
//          }


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

    <table   width="100%">
        <tr>
            <td>
                <div class="button-div" runat="server" id="btnDiv">
                    
                    <%--<asp:Button ID="btnPdf" runat="server" Text="Report Card" OnClick="btnPdf_Click" CssClass="button" />--%>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="button" />
                     <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="button" />
                                     
                    <asp:Button ID="btnGet" runat="server" Text="Get" OnClick="btnGet_Click"    CssClass="button" />                     
                   
                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="button" OnClick="btnSearch_Click" />
                    
                            <asp:Label ID="lblInstructions" runat="server" 
                            
                            Text=" Note: Enter -1 for Absent, -2 for Medical Leave" 
                              Font-Size="10pt"></asp:Label> 
                    
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
                <div class="form-div" id="form1" runat="server">
                    <fieldset>
                     <legend id="legendExamMarks"  runat="server"  class="legend">Exam Marks</legend>                        
                        <table width="100%">
                             <tr>
                                <td class="tblcontent">
                                    Class:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlClass" runat="server"></asp:DropDownList>
                                </td>
                           
                               <td class="tblcontent">
                                  Section
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSection" runat="server"></asp:DropDownList>
                                    
                                </td>


                                <td class="tblcontent">
                                  Exam 
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlExam" runat="server"></asp:DropDownList>
                                    
                                </td>

                                <td class="tblcontent">
                                  Subject
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSubject" runat="server"></asp:DropDownList>
                                    
                                </td>

                           </tr>

                           
                                                    
                        </table>
                    </fieldset>
                </div>
            </td>
            <td>

            
            <table width="90%" >
                <tr>
                <td class="tblcontent" >
                                  <div class="grid-div">

                    <asp:GridView ID="gridView3" 
                        runat="server" 
                        AutoGenerateColumns="false" 
                        Width="40%"
                        AllowPaging="true" 
                        CssClass="mGrid" 
                        PagerStyle-CssClass="pgr"
                        GridLines="None" 
                        AlternatingRowStyle-CssClass="alt" 
                        EnableModelValidation="True"
                        OnSelectedIndexChanged="gridView3_SelectedIndexChanged" 
                        OnPageIndexChanging="gridView3_PageIndexChanging"
                        onrowdatabound="gridView3_RowDataBound" 
                         
                        PageSize="500">
                        <Columns>
                          

                           <asp:TemplateField  HeaderStyle-Width="1" >
                
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="allchk"  runat="server" Text="" />
                                    </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckbExam" runat="server" />
                                </ItemTemplate>
                          </asp:TemplateField>
                       
                            
                           <asp:BoundField HeaderText="ID" DataField="ExamMasterId"  HeaderStyle-Width="1" />
                           <asp:BoundField HeaderText="Exam/Test" DataField="ExamName"  HeaderStyle-Width="60" />
                         
                        </Columns>
                    </asp:GridView>
                </div>
                </td></tr>
                </table>
                </td>
            <td>
            <table width="90%">
                <tr>
                <td class="tblcontent">
                                  <div class="grid-div">

                    <asp:GridView ID="gridView2" 
                        runat="server" 
                        AutoGenerateColumns="false" 
                        Width="40%"
                        AllowPaging="true" 
                        CssClass="mGrid" 
                        PagerStyle-CssClass="pgr"
                        GridLines="None" 
                        AlternatingRowStyle-CssClass="alt" 
                        EnableModelValidation="True"
                        OnSelectedIndexChanged="gridView2_SelectedIndexChanged" 
                        OnPageIndexChanging="gridView2_PageIndexChanging"
                        onrowdatabound="gridView2_RowDataBound" 
                        PageSize="500">
                        <Columns>
                          

                           <asp:TemplateField  HeaderStyle-Width="1" >
                
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="allchk"  runat="server" Text="" />
                                    </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckb" runat="server" />
                                </ItemTemplate>
                          </asp:TemplateField>
                       
                            
                           <asp:BoundField HeaderText="ID" DataField="SubjectMasterId"  HeaderStyle-Width="1" />
                           <asp:BoundField HeaderText="Subject" DataField="SubjectName"  HeaderStyle-Width="60" />
                         
                        </Columns>
                    </asp:GridView>
                </div>
                </td></tr>
                </table>
            </td>
            
        </tr>
        <tr>
            
        </tr>
        </tr>
        <tr>
            <td>
                <div class="grid-div" style="top: 55%">
                    <asp:GridView ID="gridView1" runat="server" AutoGenerateColumns="false" Width="100%"
                       AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr"
                        GridLines="None" AlternatingRowStyle-CssClass="alt" EnableModelValidation="True"
                        OnSelectedIndexChanged="gridView1_SelectedIndexChanged"
                        OnPageIndexChanging="grid1_PageIndexChanging"
                        DataKeyNames="ExamMarksId, classId, SectionId, ExamId, SubjectId"
                        PageSize="2000">
                        <Columns>
                          <asp:TemplateField HeaderText="Present" HeaderStyle-Width="10">
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckbPresent" runat="server" Checked='<%# Eval("IsPresent").ToString() == "1" ? true : false %>' />
                                     
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:BoundField HeaderText="SlNo"          DataField="SlNo"  HeaderStyle-Width="20" />
                            <asp:BoundField HeaderText="StudentID"      DataField="StudentMasterId"  HeaderStyle-Width="5" />
                            <asp:BoundField HeaderText="Student Name"   DataField="StudentName" HeaderStyle-Width="100" />
                            <asp:BoundField HeaderText="Father Name"   DataField="FatherName" HeaderStyle-Width="100" />
                            <asp:BoundField HeaderText="Class"          DataField="ClassName" HeaderStyle-Width="20" />
                            <asp:BoundField HeaderText="Section"       DataField="SectionName" HeaderStyle-Width="20" />
                            <asp:BoundField HeaderText="Exam"          DataField="ExamName" HeaderStyle-Width="20" />
                            <asp:BoundField HeaderText="Subject"       DataField="SubjectName" HeaderStyle-Width="20" />
                            
                            
                            <asp:TemplateField HeaderText="Marks" HeaderStyle-Width="10">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtMarksObtained" width="100" runat="server" value='<%# Eval("MarksObtained")%>' />
                                     
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Max Marks"          DataField="MaxMarks" HeaderStyle-Width="5" />
                             <asp:BoundField HeaderText="Subject Type"          DataField="SubjectGroupType" HeaderStyle-Width="5" />
                           <asp:BoundField HeaderText="ExamMarksId"          DataField="ExamMarksId"  HeaderStyle-Width="20" />
                            
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
   
</asp:Content>

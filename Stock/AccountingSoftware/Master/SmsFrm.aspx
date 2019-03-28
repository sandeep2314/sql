<%@ Page Language="C#" 
AutoEventWireup="true" 
    MasterPageFile="~/SiteMaster.Master"
CodeBehind="SmsFrm.aspx.cs" 
Inherits="AccountingSoftware.Master.SmsFrm1" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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

        
        function textCounter(field, countfield, maxlimit) {

            //countfield.value = field.value.length + "Dear Parents, ".length + 2;

            var ddl = document.getElementById("<%= ddlTemplate.ClientID %>");

            countfield.value = field.value.length + ddl.value.toString().length + 2;
        }


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

        function SelectAllGrid1(id) 
        {
            var grid = document.getElementById("<%= gridView1.ClientID %>");
            SelectAll(id, grid);    
        }

        function SelectAllGrid2(id) {
            var grid = document.getElementById("<%= gridView2.ClientID %>");
            SelectAll(id, grid);
        }



        function OpenGoogleTranlator() {
            var strReturn = window.open('http://www.google.com/inputtools/try/');
        }



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
                    <asp:Button ID="btnSendSMS" runat="server" Text="Send SMS" OnClick="btnSendSMS_Click" CssClass="button" Width="15%"  /> 
                  
                   
                  
                    <asp:Button ID="btnGet" runat="server" Text="Get Students" OnClick="btnGet_Click"
                        CssClass="button" />
                     
                     
                    <asp:TextBox ID="txtSearch" width="350" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="button" OnClick="btnSearch_Click" />
                   
                    <asp:Button ID="btnTranslate" Text="Open Multi-Language Input" 
                     OnClientClick="OpenGoogleTranlator();"
                      runat="server"
                     CssClass="button" Width="20%"  /> 
                   
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
                     <legend class="legend">SMS Management</legend>                        
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
                        OnPageIndexChanging="grid2_PageIndexChanging"
                        onrowdatabound="gridView2_RowDataBound" 
                        PageSize="500">
                        <Columns>
                          

                           <asp:TemplateField>
                
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="allchk"  runat="server" Text="" />
                                    </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckb" runat="server" />
                                </ItemTemplate>
                          </asp:TemplateField>
                          <%-- <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:Label ID="namelbl" runat="server" Text='<%#Eval("ClassName") %>'></asp:Label>
                                </ItemTemplate>
                           </asp:TemplateField>
                                 --%>

                         <%-- <asp:TemplateField HeaderText="Select" HeaderStyle-Width="30">
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckb" runat="server" Checked="true" />
                                     
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            
                           <asp:BoundField HeaderText="ID" DataField="ClassMasterId"  HeaderStyle-Width="1" />
                           <asp:BoundField HeaderText="Class" DataField="ClassName"  HeaderStyle-Width="60" />
                         
                        </Columns>
                    </asp:GridView>
                </div>
             </td>
                
                <td>
                         <table>

                                <tr>
                                    <td>
                                       <asp:DropDownList ID="ddlTemplate" runat="server" 
                                             AutoPostBack="true">
                                        <asp:ListItem Value="Dear Parents, ">Dear Parents, </asp:ListItem>
                                        <asp:ListItem Value="Dear Staff, ">Dear Staff, </asp:ListItem>
                                        <asp:ListItem Value="Dear Students, ">Dear Students, </asp:ListItem>
                                        <asp:ListItem Value="Dear Teachers, ">Dear Teachers, </asp:ListItem>
                                        <asp:ListItem Value="प्रिय अभिभावक,">प्रिय अभिभावक,</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        Word Count: <input readonly="readonly" type="text" name="remLen" size="3" maxlength="3" value="15" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblBalance" runat="server">
                                        </asp:Label>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbUnicode" runat="server" Text="Unicode"  />
                                    </td>
                                </tr>
                                    <td id="tranlateTD">
                                        
                                    </td>


                                    <tr>
                                        <td colspan="3">
                                       <asp:TextBox ID="txtMessage" 
                                        BackColor="LightGreen"
                                        Font-Size="Large"
                                        Font-Bold="true"
                                        
                                        onkeyup="textCounter(this, this.form.remLen, 160);" onkeydown="textCounter(this, this.form.remLen, 160);"
                                         
                                
                                         runat="server" Rows="12"  width="400px"   TextMode="MultiLine" >
                                       </asp:TextBox>
                                       </td>



                                        <td colspan="3">
                                        <p>
                                        <br>■ Click "Send SMS" button only once. Wait for 10-20 Mins for delivery else conatct 9219484030.
                                        <br>■ Pressing enter key will count 2 characters. 
                                        <br>■ Copying any text from any rich text editor can also deduct extra characters.
                                        <br>■ If any special character like %, +, &, #, = and many more will also consume extra characters.
                                        <br>■ Best way to copy the content from the notepad only.
                                        <br>■ Before executing any big campaign try 1 sms on your number.
                                        </p>
                                       
                                       </td>





                            </tr>
                         </table>
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
                    <asp:GridView ID="gridView1" 
                        runat="server" 
                        AutoGenerateColumns="false" 
                        Width="70%"
                        AllowPaging="true" 
                        CssClass="mGrid" 
                        PagerStyle-CssClass="pgr"
                        GridLines="None" 
                        AlternatingRowStyle-CssClass="alt" 
                        EnableModelValidation="True"
                        OnSelectedIndexChanged="gridView1_SelectedIndexChanged" 
                        OnPageIndexChanging="grid1_PageIndexChanging"
                        onrowdatabound="gridView1_RowDataBound" 
                    PageSize="5000">
                                               
                        
                        <Columns>

                            <asp:TemplateField HeaderText="Select" HeaderStyle-Width="10">
                                 <HeaderTemplate>
                                        <asp:CheckBox ID="allchk"  runat="server" Text=""  />
                                 </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckb" runat="server"   />
                                </ItemTemplate>
                          </asp:TemplateField>


                           <%--<asp:TemplateField HeaderText="Present" HeaderStyle-Width="10">
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckb" runat="server" Checked="true" />
                                     
                                </ItemTemplate>
                            </asp:TemplateField>
                           
                            --%>

                         <asp:TemplateField HeaderText="SrNo" HeaderStyle-Width="10">
                           <HeaderTemplate>
                               <asp:Label ID="srno1"  runat="server" Text="Sr.No."  />
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                            </ItemTemplate>
                         </asp:TemplateField>

                           <asp:BoundField HeaderText="ID" DataField="StudentMasterId"  HeaderStyle-Width="1" />
                           <asp:BoundField HeaderText="Student Name" DataField="StudentName" HeaderStyle-Width="100" />
                           <asp:BoundField HeaderText="Class" DataField="PresentClassName"  HeaderStyle-Width="30" />
                            <asp:BoundField HeaderText="Section" DataField="Section"  HeaderStyle-Width="30" />
                            <asp:BoundField HeaderText="MobileNo" DataField="MobileNoF"  HeaderStyle-Width="30" />
                           
                           
                            
                            
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
   
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="Drivermanager.aspx.cs" Inherits="Admin_Drivermanager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 100%;
    }
    .style13
    {
        color: #800000;
            background-color: #FFFFFF;
        }
        .style14
        {
            width: 99%;
            height: 100%;
            font-size: medium;
        }
        .style15
        {
            color: #000000;
            width: 20px;
            text-decoration: underline;
            font-weight: 700;
        }
        .style16
        {
            color: #FF6666;
            height: 39px;
        }
        .style17
        {
            width: 344px;
            color: #000000;
        }
        .style19
        {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style12">
    <tr>
        <td>
            <table class="style12">
                <tr>
                    <td class="style13">
                        <br />
                        <br />
                        <span class="style11">Driver Manager</span><br />
                        <br />
                        <table class="style14" cellpadding="5" cellspacing="2">
                            <tr>
                                <td class="style11" 
                                    style="font-family: Arial; color: #000000; font-weight: 700;">
                                    id</td>
                                <td class="style19">
                                    <asp:TextBox ID="txtid" runat="server" Enabled="False" Height="30px" 
                                        Width="150px"></asp:TextBox>
                                </td>
                                <td class="style11" style="color: #000000; font-weight: 700">
                                    Name</td>
                                <td class="style17">
                                    <asp:TextBox ID="txtname" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11" 
                                    style="font-family: Arial; color: #000000; font-weight: 700;">
                                    Address</td>
                                <td class="style19">
                                    <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                </td>
                                <td class="style11" style="font-weight: 700; color: #000000">
                                    Contact</td>
                                <td class="style17">
                                    <asp:TextBox ID="txtcontact" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11" 
                                    style="font-family: Arial; color: #000000; font-weight: 700;">
                                    Email</td>
                                <td class="style19">
                                    <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                </td>
                                <td class="style11" style="color: #000000; font-weight: 700">
                                    Experience</td>
                                <td class="style17">
                                    <asp:DropDownList ID="drpexperience" runat="server" Height="30px" Width="150px">
                                        <asp:ListItem>1 Year</asp:ListItem>
                                        <asp:ListItem>2 Year</asp:ListItem>
                                        <asp:ListItem>3 Year</asp:ListItem>
                                        <asp:ListItem>4 Year</asp:ListItem>
                                        <asp:ListItem>5 Year</asp:ListItem>
                                        <asp:ListItem>6 Year</asp:ListItem>
                                        <asp:ListItem>7 Year</asp:ListItem>
                                        <asp:ListItem>8 Year</asp:ListItem>
                                        <asp:ListItem>9 Year</asp:ListItem>
                                        <asp:ListItem>10 Year</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11" 
                                    style="font-family: Arial; color: #000000; font-weight: 700;">
                                    Payment</td>
                                <td class="style19">
                                    <asp:TextBox ID="txtpayment" runat="server" Height="30px" Width="150px"></asp:TextBox>
                                </td>
                                <td class="style11" style="color: #000000; font-weight: 700">
                                    Insurance</td>
                                <td class="style17">
                                    <asp:RadioButton ID="rdyes" runat="server" GroupName="No" 
                                        style="color: #000000" Text="Yes" />
                                    <asp:RadioButton ID="rdno" runat="server" GroupName="No" style="color: #000000" 
                                        Text="No" />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11" 
                                    style="font-family: Arial; color: #000000; font-weight: 700;">
                                    Gender</td>
                                <td class="style19">
                                    <asp:RadioButton ID="rdmale" runat="server" GroupName="Male" 
                                        style="color: #000000" Text="Male" />
                                    <asp:RadioButton ID="rdfemale" runat="server" GroupName="Male" 
                                        style="color: #000000" Text="Female" />
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style11" style="font-weight: 700; color: #000000">
                                    Licence</td>
                                <td class="style19">
                                    <asp:DropDownList ID="drplicence" runat="server" Height="30px" Width="150px">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style11" style="color: #000000; font-weight: 700">
                                    Document</td>
                                <td class="style17">
                                    <asp:TextBox ID="txtdocument" runat="server" Height="30px" Width="150px">Adhar Card OR Voter id</asp:TextBox>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style16" colspan="4">
                                    <br />
                                    <asp:Button ID="btnnew" runat="server" Height="30px" onclick="btnnew_Click" 
                                        Text="New" Width="150px" style="background-color: #3399FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnsave" runat="server" Height="30px" onclick="btnsave_Click" 
                                        Text="Save" Width="150px" style="background-color: #3399FF" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnupdate" runat="server" Height="30px" 
                                        onclick="btnupdate_Click" Text="Update" Width="150px" 
                                        style="background-color: #3399FF" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btndelete" runat="server" Height="30px" Text="Delete" 
                                        Width="150px" onclick="btndelete_Click" 
                                        style="background-color: #3399FF" />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style16" colspan="4">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [Driver]" 
                                        onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="style10" style="background-color: #FFFFFF">
                        <asp:Image ID="Image1" runat="server" Height="196px" />
                        <br />
                        <br />
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" 
                            style="background-color: #FFFFFF" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnupload" runat="server" Height="30px" 
                            onclick="btnupload_Click" Text="Upload" Width="150px" 
                            style="background-color: #3399FF" />
                    </td>
                </tr>
                <tr>
                    <td class="style13" colspan="2">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                        GridLines="Vertical" 
                                        onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                                        CellSpacing="4" Height="81px" Width="82%" PageSize="4" 
                            style="font-size: medium">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="driver_id" HeaderText="id" 
                                                SortExpression="driver_id" />
                                            <asp:BoundField DataField="driver_name" HeaderText="name" 
                                                SortExpression="driver_name" />
                                            <asp:BoundField DataField="driver_address" HeaderText="address" 
                                                SortExpression="driver_address" />
                                            <asp:BoundField DataField="driver_contact" HeaderText="contact" 
                                                SortExpression="driver_contact" />
                                            <asp:BoundField DataField="driver_email" HeaderText="email" 
                                                SortExpression="driver_email" />
                                            <asp:BoundField DataField="driver_experience" HeaderText="experience" 
                                                SortExpression="driver_experience" />
                                            <asp:BoundField DataField="driver_payment" HeaderText="payment" 
                                                SortExpression="driver_payment" />
                                            <asp:BoundField DataField="driver_insurance" HeaderText="insurance" 
                                                SortExpression="driver_insurance" />
                                            <asp:BoundField DataField="driver_gender" HeaderText="gender" 
                                                SortExpression="driver_gender" />
                                            <asp:BoundField DataField="driver_photo" HeaderText="photo" 
                                                SortExpression="driver_photo" />
                                            <asp:BoundField DataField="driver_licence" HeaderText="licence" 
                                                SortExpression="driver_licence" />
                                            <asp:BoundField DataField="driver_document" HeaderText="document" 
                                                SortExpression="driver_document" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>


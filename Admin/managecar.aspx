<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="managecar.aspx.cs" Inherits="Admin_adminmanagecar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
            height: 0;
        font-size: medium;
    }
        .style10
        {
            height: 32px;
            font-weight: bold;
            font-size: large;
            width: 173px;
        }
        .style11
        {
            height: 34px;
            font-weight: 700;
            font-size: large;
        text-align: justify;
    }
        .style14
        {
            width: 100%;
            height: 0;
        }
        .style25
        {
            color: #009933;
        }
        .style34
        {
        font-weight: 700;
        font-size: large;
        width: 437px;
    }
        .style35
        {
            width: 2740px;
            background-color: #FFFFFF;
        }
        .style43
        {
        background-color: #FFFFFF;
    }
        .style44
        {
            background-color: #C0C0C0;
        }
        .style45
        {
            color: #660033;
        }
    .style46
    {
        color: #000000;
    }
    .style47
    {
        color: #000000;
    }
    .style49
    {
        font-size: large;
        font-weight: bold;
        color: #000000;
    }
    .style50
    {
        background-color: #FFFFFF;
        text-align: justify;
    }
    .style52
    {
        text-align: justify;
    }
    .style54
    {
        color: #000000;
        text-decoration: underline;
        font-size: x-large;
    }
    .style56
    {
        height: 31px;
    }
    .style57
    {
        height: 42px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style7">
        <tr>
            <td class="style50">
                        <table class="style7">
                            <tr>
                                <td style="font-weight: 700; text-align: center; font-size: x-large" 
                                    class="style43">
                                    <table class="style7">
                                        <tr>
                                            <td class="style52">
                                                <span class="style45">
                                                &nbsp;
                                                <br />
                                                </span><span class="style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </span><span class="style54">MANAGE CAR</span><span class="style25"><br />
                                                </span><br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style43">
                                    <table class="style7" cellpadding="5" cellspacing="1">
                                        <tr>
                                            <td>
                                                <span class="style47">Car_id</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                            <td>
                                                <asp:TextBox ID="txtcarid" runat="server" Height="30px" Width="250px" 
                                                    Enabled="False" ontextchanged="txtcarid_TextChanged"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;<span class="style47">Company_Name</span></td>
                                            <td>
                                                <asp:TextBox ID="txtcompanyname" runat="server" Height="30px" 
                                                     Width="250px"></asp:TextBox>
                                            </td>
                                            <td class="style34" rowspan="4" valign="top">
                                                <br />
                                                <asp:Image ID="Image1" runat="server" Height="197px" Width="302px" />
                                                <br />
                                                <br />
                                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <br />
                                                <br />
                                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnupload" runat="server" Height="30px" 
                                                    onclick="btnupload_Click" Text="Upload" Width="150px" 
                                                    BorderStyle="Solid" style="background-color: #3399FF" />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style56" style="color: #000000" width="400px">
                                                Model_Name</td>
                                            <td class="style56" width="400px">
                                                <asp:TextBox ID="txtmodelname" runat="server" Height="30px" Width="250px"></asp:TextBox>
                                            </td>
                                            <td class="style56" style="color: #000000" width="400px">
                                                Car_Type</td>
                                            <td class="style56" width="400px">
                                                <asp:DropDownList ID="drpcartype" runat="server" Height="40px" Width="200px">
                                                    <asp:ListItem>Hatchback</asp:ListItem>
                                                    <asp:ListItem>SUV</asp:ListItem>
                                                    <asp:ListItem>Sedan</asp:ListItem>
                                                    <asp:ListItem>Luxury</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style57" style="color: #000000">
                                                Plate_No</td>
                                            <td class="style57">
                                                <asp:TextBox ID="txtplateno" runat="server" Height="30px" Width="250px" 
                                                    ontextchanged="txtplateno_TextChanged"></asp:TextBox>
                                            </td>
                                            <td class="style57" style="color: #000000">
                                                Insurance</td>
                                            <td class="style57">
                                                <asp:RadioButton ID="rdyes" runat="server" Text="Yes" GroupName="A" 
                                                    ForeColor="#006666" oncheckedchanged="rdyes_CheckedChanged" 
                                                    style="color: #000000" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RadioButton ID="rdno" runat="server" Text="No" GroupName="A" 
                                                    ForeColor="#006666" oncheckedchanged="rdno_CheckedChanged" 
                                                    style="color: #000000" />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #000000">
                                                Colors</td>
                                            <td>
                                                <asp:DropDownList ID="drpcolors" runat="server" 
                                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="40px" 
                                                    Width="200px" style="margin-left: 0px">
                                                    <asp:ListItem>Red</asp:ListItem>
                                                    <asp:ListItem>Black</asp:ListItem>
                                                    <asp:ListItem>Blue</asp:ListItem>
                                                    <asp:ListItem>White</asp:ListItem>
                                                    <asp:ListItem>Grey</asp:ListItem>
                                                    <asp:ListItem>Orange</asp:ListItem>
                                                    <asp:ListItem>Brown</asp:ListItem>
                                                    <asp:ListItem>Green</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <span style="color: #000000">Seats</span> <span style="color: #000000">Available</span></td>
                                            <td>
                                                <asp:TextBox ID="txtseatsavailable" runat="server" Height="30px" Width="250px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #000000">
                                                Car_Price</td>
                                            <td>
                                                <asp:TextBox ID="txtcarprice" runat="server" Height="30px" 
                                                   Width="250px"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                            <td style="color: #000000">
                                                Car_Status</td>
                                            <td>
                                                <asp:TextBox ID="txtcarstatus" runat="server" Height="30px" Width="250px" 
                                                    Enabled="False"
                                                    >Available</asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #000000">
                                                Milage</td>
                                            <td>
                                                <asp:TextBox ID="txtmilage" runat="server" Height="30px" Width="250px"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                            <td style="color: #000000">
                                                Fuel_Type</td>
                                            <td>
                                                <asp:DropDownList ID="drpfueltype" runat="server" Height="40px" Width="200px">
                                                    <asp:ListItem>Petrol</asp:ListItem>
                                                    <asp:ListItem>Diesel</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #000000">
                                                Charges1(Per KM)</td>
                                            <td>
                                                <asp:TextBox ID="txtcharges1" runat="server" Height="30px" Width="250px" 
                                                    ></asp:TextBox>
                                            </td>
                                            <td style="color: #000000">
                                                Charges2(Per Day)</td>
                                            <td>
                                                <asp:TextBox ID="txtcharges2" runat="server" Height="30px" Width="250px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49" colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        </table>
                                </td>
                            </tr>
                        </table>
                    </td>
        </tr>
        <tr>
            <td class="style50">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnnew" runat="server" Height="30px" onclick="btnnew_Click" 
                    Text="New" Width="150px" BorderStyle="Solid" 
                    style="background-color: #3399FF" BackColor="#003366" ForeColor="Black" 
                    BorderColor="Black" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Height="30px" Text="Save" 
                    Width="150px" onclick="btnsave_Click" BorderStyle="Solid" 
                    style="color: #000000; background-color: #3399FF" BackColor="#3399FF" 
                    ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Height="30px" 
                    onclick="btnupdate_Click" Text="Update" Width="150px" BorderStyle="Solid" 
                    style="background-color: #3399FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Height="30px" 
                    onclick="btndelete_Click" Text="Delete" Width="150px" BorderStyle="Solid" 
                    style="color: #000000; background-color: #3399FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                &nbsp;&nbsp;
                <table class="style14">
                    <tr>
                        <td align="center" class="style35">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" 
                                AutoGenerateColumns="False" CellPadding="4" CellSpacing="4" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                AllowPaging="True" ForeColor="Black" Height="100px" PageSize="5" 
                                style="font-size: medium" Width="90%" CssClass="style44" 
                                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="car_id" HeaderText="Id" 
                                        SortExpression="car_id" />
                                    <asp:BoundField DataField="car_company_name" HeaderText="Company Name" 
                                        SortExpression="car_company_name" />
                                    <asp:BoundField DataField="car_model_name" HeaderText="Model Name" 
                                        SortExpression="car_model_name" />
                                    <asp:BoundField DataField="car_status" HeaderText="Status" 
                                        SortExpression="car_status" />
                                    <asp:BoundField DataField="car_type" HeaderText="Type" 
                                        SortExpression="car_type" />
                                    <asp:BoundField DataField="car_plate_no" HeaderText="Plate No" 
                                        SortExpression="car_plate_no" />
                                    <asp:BoundField DataField="car_insurance" HeaderText="Insurance" 
                                        SortExpression="car_insurance" />
                                    <asp:BoundField DataField="car_photo" HeaderText="Photo" 
                                        SortExpression="car_photo" />
                                    <asp:BoundField DataField="car_seater" HeaderText="Seater" 
                                        SortExpression="car_seater" />
                                    <asp:BoundField DataField="car_colors" HeaderText="Colors" 
                                        SortExpression="car_colors" />
                                    <asp:BoundField DataField="car_price" HeaderText="Price" 
                                        SortExpression="car_price" />
                                    <asp:BoundField DataField="car_milage" HeaderText="Milage" 
                                        SortExpression="car_milage" />
                                    <asp:BoundField DataField="car_fuel_type" HeaderText="Fuel Type" 
                                        SortExpression="car_fuel_type" />
                                    <asp:BoundField DataField="car_charge1" HeaderText="Charge1" 
                                        SortExpression="car_charge1" />
                                    <asp:BoundField DataField="car_charge2" HeaderText="Charge2" 
                                        SortExpression="car_charge2" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Cars]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Cars]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


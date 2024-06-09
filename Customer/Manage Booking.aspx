<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customermaster.master" AutoEventWireup="true" CodeFile="Manage Booking.aspx.cs" Inherits="Customer_Manage_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style4" 
        style="border-right-style: solid; border-left-style: solid; border-width: thin; border-color: #000000">
        <tr>
            <td colspan="2" 
                style="text-align: center; font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-weight: 700">
                <br />
                Manage Booking<br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td align="center" style="text-align: center">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="booking_id" 
                            DataSourceID="SqlDataSource2" GridLines="Vertical" Height="500px" 
                            style="font-family: Arial, Helvetica, sans-serif; font-size: medium;" 
                            Width="1000px">
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" 
                                    SortExpression="booking_id" />
                                <asp:BoundField DataField="customer_name" HeaderText="customer_name" 
                                    SortExpression="customer_name" />
                                <asp:BoundField DataField="car_id" HeaderText="car_id" 
                                    SortExpression="car_id" />
                                <asp:BoundField DataField="pick_up_date" HeaderText="pick_up_date" 
                                    SortExpression="pick_up_date" />
                                <asp:BoundField DataField="drop_off_date" HeaderText="drop_off_date" 
                                    SortExpression="drop_off_date" />
                                <asp:BoundField DataField="pick_up_time" HeaderText="pick_up_time" 
                                    SortExpression="pick_up_time" />
                                <asp:BoundField DataField="drop_off_time" HeaderText="drop_off_time" 
                                    SortExpression="drop_off_time" />
                                <asp:BoundField DataField="pick_up_location" HeaderText="pick_up_location" 
                                    SortExpression="pick_up_location" />
                                <asp:BoundField DataField="drop_off_location" HeaderText="drop_off_location" 
                                    SortExpression="drop_off_location" />
                                <asp:BoundField DataField="driver_required" HeaderText="driver_required" 
                                    SortExpression="driver_required" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                    SelectCommand="SELECT * FROM [Booking] WHERE ([customer_name] LIKE '%' + @customer_name + '%')"
                     DeleteCommand ="delete from [Booking] where [booking_id]=@booking_id">
                            <SelectParameters>
                                <asp:SessionParameter Name="customer_name" SessionField="user" Type="String" />
                            </SelectParameters>
                </asp:SqlDataSource>
                
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


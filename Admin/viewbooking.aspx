<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="viewbooking.aspx.cs" Inherits="Admin_viewbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
        {
            width: 100%;
            height: 100%;
        }
        .style5
        {
            text-align: center;
            font-weight: bold;
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #3366CC;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" class="style4">
    <tr>
        <td class="style5">
            View Booking</td>
    </tr>
    <tr>
        <td align="center">
            <table align="center" cellpadding="5" cellspacing="5" class="style4">
                <tr>
                    <td align="center">
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
                            SelectCommand="SELECT * FROM [Booking]"
                             DeleteCommand="delete from [Booking] where [booking_id]=@booking_id"></asp:SqlDataSource>
                                            </td>
                </tr>
            </table>
           
        </td>
    </tr>
</table>
</asp:Content>


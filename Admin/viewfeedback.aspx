<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="Admin_viewfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 1000px;
            height: 100%;
        }
    .style5
    {
        font-size: x-large;
        font-family: Arial, Helvetica, sans-serif;
        font-weight: bold;
        text-align: center;
            color: #FFFFFF;
            background-color: #3366CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow:auto">
        <table align="center" cellpadding="5" cellspacing="5" class="style4">
            <tr>
                <td class="style5">
                    View Feedback</td>
            </tr>
            <tr>
                <td style="font-size: medium; font-family: Arial, Helvetica, sans-serif">
                    <div style="overflow:auto">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            Height="450px" Width="1000px">
                            <RowStyle BackColor="#F7F7DE" ForeColor="Black" />
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" 
                                    SortExpression="mobile_no" />
                                <asp:BoundField DataField="email_id" HeaderText="email_id" 
                                    SortExpression="email_id" />
                                <asp:BoundField DataField="date_of_travel" HeaderText="date_of_travel" 
                                    SortExpression="date_of_travel" />
                                <asp:BoundField DataField="feedback_message" HeaderText="feedback_message" 
                                    SortExpression="feedback_message" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="#E7E7FF" />
                            <AlternatingRowStyle BackColor="Gainsboro" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                    </div>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/hireme.mdb" SelectCommand="SELECT * FROM [Feedback]">
                    </asp:AccessDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


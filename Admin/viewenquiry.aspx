<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="viewenquiry.aspx.cs" Inherits="Admin_viewenquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 1000px;
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
    <div style="overflow:auto">
        <table align="center" cellpadding="5" cellspacing="5" class="style4">
            <tr>
                <td class="style5">
                    View Enquiry</td>
            </tr>
            <tr>
                <td align="center" style="font-size: medium">
                    <div style="overflow:auto">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
                            Height="450px" 
                            style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF;" 
                            Width="1000px">
                            <RowStyle BackColor="#F7F7DE" ForeColor="Black" />
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" 
                                    SortExpression="Mobile_no" />
                                <asp:BoundField DataField="Email_id" HeaderText="Email_id" 
                                    SortExpression="Email_id" />
                                <asp:BoundField DataField="Query_message" HeaderText="Query_message" 
                                    SortExpression="Query_message" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="#E7E7FF" />
                            <AlternatingRowStyle BackColor="Gainsboro" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Helpdesk]"></asp:SqlDataSource>
                    </div>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/hireme.mdb" SelectCommand="SELECT * FROM [contact]">
                    </asp:AccessDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


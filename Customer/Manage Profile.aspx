<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customermaster.master" AutoEventWireup="true" CodeFile="Manage Profile.aspx.cs" Inherits="Customer_Manage_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 70%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" class="style4">
        <tr>
            <td colspan="2" 
                style="text-align: center; font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-weight: 700">
                <br />
                Manage Profile</td>
        </tr>
        <tr>
            <td align="center" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td align="center" style="text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Inset" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" 
                    Height="417px" 
                    style="font-family: Arial, Helvetica, sans-serif; text-align: left" 
                    Width="608px" AutoGenerateEditButton="True">
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="r_name" HeaderText="r_name" 
                            SortExpression="r_name" />
                        <asp:BoundField DataField="r_age" HeaderText="r_age" SortExpression="r_age" />
                    
                        <asp:BoundField DataField="r_licence_no" HeaderText="r_licence_no" 
                            SortExpression="r_licence_no" />
                        <asp:BoundField DataField="r_city" HeaderText="r_city" 
                            SortExpression="r_city" />
                        <asp:BoundField DataField="r_mob" HeaderText="r_mob" 
                            SortExpression="r_mob" />
                        <asp:BoundField DataField="r_email" HeaderText="r_email" 
                            SortExpression="r_email" />
                     
                        <asp:BoundField DataField="r_password" HeaderText="r_password" 
                            SortExpression="r_password" />
                    </Fields>
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Register] WHERE ([r_name] LIKE '%' + @r_name + '%')"
                     UpdateCommand ="update [Register] set [r_name]=@r_name,[r_age]=@r_age,[r_licence_no]=@r_licence_no,[r_city]=@r_city,[r_mob]=r_mob,[r_email]=@r_email,[r_password]=@r_password where [r_name]=@r_name">
                    <SelectParameters>
                        <asp:SessionParameter Name="r_name" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Register] WHERE ([r_name] LIKE '%' + @r_name + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="r_name" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


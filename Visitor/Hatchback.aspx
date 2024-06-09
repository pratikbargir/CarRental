<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="Hatchback.aspx.cs" Inherits="Visitor_Hatchback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 100%;
        }
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="style5" 
            align="center">
            <tr>
                <td align="center" 
                    style="text-align: left; font-size: x-large; font-weight: 700">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HatchBack 
                    Cars&nbsp;<hr noshade="noshade" size="1" 
                        style="color: #660033; background-color: #660033" width="90%" />
                </td>
            </tr>
            <tr>
                <td rowspan="1" align="center">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="car_id" 
                        DataSourceID="SqlDataSource2" RepeatColumns="4" 
                        RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5" 
                        onselectedindexchanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <table align="center" cellpadding="5" class="style4" 
                                style="border: thin solid #999999; border-radius:10px" cellspacing="1">
                                <tr>
                                    <td style="background-color: #999999">
                                        &nbsp;<asp:Label ID="Label2" runat="server" 
                                            Text='<%# Eval("car_model_name") %>' style="font-weight: 700; color: #003366"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image3" runat="server" Height="150px" 
                                            ImageUrl='<%# Eval("car_photo") %>' Width="300px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("car_seater") %>'></asp:Label>
                                        &nbsp;Seater</td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Fuel Type:</strong>&nbsp;
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("car_fuel_type") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>Charges(per Day):</strong>&nbsp;Rs.<asp:Label ID="Label5" runat="server" Text='<%# Eval("car_charge1") %>' 
                                            style="color: #FF0000"></asp:Label>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnbooknow" runat="server" Height="30px" Text="Book Now" 
                                            Width="180px" BorderStyle="None" 
                                            style="font-weight: 700; background-color: #FF9900" 
                                            onclick="btnbooknow_Click" 
                                            CommandArgument='<%# Eval("car_id", "{0}") %>' />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Cars] WHERE ([car_type] LIKE '%' + @car_type + '%')">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Hatchback" Name="car_type" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
&nbsp;<table class="style4">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [car_type] FROM [Cars] WHERE ([car_type] LIKE '%' + @car_type + '%')">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Hatchback" Name="car_type" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        &nbsp;</p>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="Luxury.aspx.cs" Inherits="Visitor_Luxury" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            font-size: x-large;
        }
        .style6
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style4">
        <tr>
            <td align="left">
                <span class="style5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                Luxury Cars </strong></span>
                <br />
                <hr noshade="noshade" size="1" 
                    style="color: #800000; background-color: #800000;" width="90%" />
            </td>
        </tr>
        <tr>
            <td rowspan="1" align="center">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="car_id" 
                    DataSourceID="SqlDataSource1" RepeatColumns="4" 
                    RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5">
                    <ItemTemplate>
                        <table class="style4" cellpadding="5" cellspacing="1" align="center" style="border: thin solid #C0C0C0; border-radius:10px">
                            <tr>
                                <td style="color: #003366; background-color: #999999;" class="style6">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("car_model_name") %>' 
                                        style="color: #003366;  background-color: #999999"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Image ID="Image3" runat="server" Height="150px" 
                                        ImageUrl='<%# Eval("car_photo") %>' Width="300px" />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("car_seater") %>'></asp:Label>
                                    &nbsp;Seater<br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <strong>Fuel Type:</strong>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("car_fuel_type") %>'></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <strong>Charges(per Day):</strong>
                                    Rs.<asp:Label ID="Label5" runat="server" Text='<%# Eval("car_charge1") %>' 
                                        style="color: #FF0000"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Button ID="btnbooknow" runat="server" Height="30px" Text="Book Now" 
                                        Width="180px" BorderStyle="None" style="background-color: #FF9900" 
                                        onclick="btnbooknow_Click" CommandArgument='<%# Eval("car_id") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Cars] WHERE ([car_type] LIKE '%' + @car_type + '%')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Luxury" Name="car_type" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


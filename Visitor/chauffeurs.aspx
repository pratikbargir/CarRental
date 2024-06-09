<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="chauffeurs.aspx.cs" Inherits="Visitor_chauffeurs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
    .style5
    {
        font-size: medium;
        text-decoration: underline;
    }
    .style6
    {
        text-decoration: underline;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td>
                <table class="style4">
                    <tr>
                        <td style="font-weight: 700; text-decoration: underline; font-size: xx-large; text-align: center" 
                            colspan="2">
                            CHAUFFEUES</td>
                    </tr>
                    <tr>
                        <td>
                            <span class="style6"><strong>OUR CHAUFFEURS</strong></span><br />
                            Our chauffeurs are professional. Full-time drivers who have been trained and 
                            licensed beyound industry standards. They have driving experience ranging from 5 
                            to 10 years and median experience of 5 years.<br />
                            <br />
                            <strong><span class="style5">Well-groomed and courteous</span></strong>
                            <br />
                            Whether you need a long distance transfer or a shuttle transfer to the city 
                            center,you can put your trust in our well-groomed and courteous chauffeurs. They 
                            are available to help you get around afely and conveniently. Our chaufferes 
                            maintain a professional demeanor and follow proper usiness etiquette.</td>
                        <td>
                            <asp:Image ID="Image3" runat="server" Height="257px" 
                                ImageUrl="~/images/euro-mens.png" Width="491px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                GridLines="Both" RepeatColumns="4" Width="1372px">
                                <ItemTemplate>
                                    <table align="center" cellpadding="5" cellspacing="5" class="style1" 
                                        style="font-family: Arial, Helvetica, sans-serif; font-size: medium">
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image4" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                    Height="109px" ImageUrl='<%# Eval("driver_photo") %>' Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                                                    Text='<%# Eval("driver_name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Experience:<asp:Label ID="Label2" runat="server" 
                                                    Text='<%# Eval("driver_experience") %>'></asp:Label>
                                                &nbsp;years</td>
                                        </tr>
                                    </table>
                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Driver]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


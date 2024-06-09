<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Visitor_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 775px;
        }
        .style5
        {
            width: 36%;
            height: 279px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" 
    style="background-image: url('../Image/speedometer_speed_car_109989_3840x2160.jpg')">
        <tr>
            <td style="text-align: center; background-image: url('../Image/103924760-speed-motion-line-vector-abstract-tech-background-with-car-racing-speedometer.jpg');">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table align="right" class="style5" cellpadding="5" cellspacing="1" 
                    
                    style="border-style: solid; border-width: thin; background-color: #CCCCCC;">
                    <tr>
                        <td style="text-align: center; font-size: x-large; font-weight: 700; background-color: #FF6600;">
                            Login</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <br />
                            <strong style="color: #000000">Name: </strong>&nbsp;<asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <br />
                            <strong>Password: </strong>&nbsp;<asp:TextBox ID="txtpassword" runat="server" 
                                Height="30px" Width="250px" TextMode="Password"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" align="right">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnregister" runat="server" Height="40px" 
                                style="background-color: #0099FF" Text="Register" Width="150px" 
                                onclick="btnregister_Click" PostBackUrl="~/Visitor/register.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnlogin" runat="server" Height="40px" 
                                style="background-color: #9966FF" Text="Login" Width="150px" 
                                onclick="btnlogin_Click" />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>


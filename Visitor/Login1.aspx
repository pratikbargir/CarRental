<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="Login1.aspx.cs" Inherits="Visitor_Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 60%;
            height: 270px;
        }
        .style5
        {
            width: 1355px;
            text-align: center;
            height: 545px;
        }
        .style7
        {
            width: 1413px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style5">
        <tr>
            <td style="background-image: url('../Image/12-39-08-f02fdc05-166d-4da4-b2ff-197d09e60d1c.gif')">
                <table class="style4" align="center" 
                    style="border-style: solid; border-width: thin">
                    <tr>
                        <td align="center" style="background-color: #FF9933">
                            <strong>
                            <br />
                            Login<br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <br />
                            <asp:TextBox ID="txtusername" runat="server" placeholder="Username" 
                                Height="30px" Width="200px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <br />
                            <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" 
                                Height="30px" Width="200px" TextMode="Password"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <br />
                            <asp:Button ID="btnregister" runat="server" Text="Register" Height="30px" 
                                Width="150px" onclick="btnregister_Click" 
                                PostBackUrl="~/Visitor/Register1.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnlogin" runat="server" Text="Login" Height="30px" 
                                Width="150px" onclick="btnlogin_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Visitor_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 29px;
        }
    .style6
    {
        color: #000000;
    }
    .style12
    {
        color: #FF6600;
    }
    .style13
    {
        color: #FF0066;
        text-decoration: underline;
    }
    .style14
    {
        color: #000000;
        text-decoration: underline;
    }
        .style15
        {
            height: 36px;
        }
        .style16
        {
            font-size: medium;
        }
        .style17
        {
            height: 29px;
            font-size: medium;
            width: 223px;
            text-align: center;
        }
        .style18
        {
            height: 36px;
            font-size: medium;
            width: 223px;
            text-align: center;
        }
        .style19
        {
            font-size: x-large;
        }
        .style20
        {
            font-size: medium;
            text-align: center;
        }
        .style21
        {
            width: 223px;
        }
        .style22
        {
            font-size: medium;
            text-align: center;
            width: 223px;
        }
        .style24
        {
            width: 425px;
        }
        .style25
        {
            height: 36px;
            width: 425px;
        }
        .style26
        {
            font-size: medium;
            text-align: center;
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" align="center" cellpadding="5" cellspacing="1" 
        style="border: thin solid #808080">
        <tr>
            <td style="text-align: center; font-weight: 700" colspan="4">
                <span class="style14"><span class="style19">
                <br />
                REGISTER&nbsp; FORM&nbsp;<br />
                </span></span><span class="style13"><span 
                    class="style19"><br />
                </span>
                </span></td>
        </tr>
        <tr>
            <td class="style26">
                <span class="style6"> <strong>
                Name </strong>&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style24">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px" 
                    CssClass="style16"></asp:TextBox>
                <br />
            </td>
            <td class="style18">
                <strong><span class="style6"> Age</span></strong><span 
                    class="style6">&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtage" runat="server" Height="30px" Width="200px" 
                    CssClass="style16"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <strong><span 
                    class="style6">License no&nbsp; </span><span 
                    class="style12">&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style25">
                <br />
                <asp:TextBox ID="txtlicenseno" runat="server" 
                    ontextchanged="TextBox4_TextChanged" Height="30px" Width="200px" 
                    CssClass="style16"></asp:TextBox>
            </td>
            <td class="style22">
                <strong><span class="style6">City&nbsp;</span></strong><span 
                    class="style6">&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style15">
                <asp:TextBox 
                    ID="txtcity" runat="server" Height="30px" Width="200px" CssClass="style16"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <strong><span class="style6">Mobile&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style24">
                <asp:TextBox ID="txtmobile" 
                    runat="server" Height="30px" Width="200px" CssClass="style16"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="Incorrect Mob No" 
                    style="color: #FF0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <br />
            </td>
            <td class="style17">
                <strong>&nbsp;<span 
                    class="style6">Email</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px" 
                    CssClass="style16"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Incorrect Email ID" 
                    style="color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <strong><span class="style6">Password&nbsp;&nbsp;</span></strong><span 
                    class="style6">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style24">
                <br />
                <asp:TextBox ID="txtpassword" runat="server" 
                    ontextchanged="txtpassword_TextChanged" TextMode="Password" Height="30px" 
                    Width="200px" CssClass="style16"></asp:TextBox>
            </td>
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20" colspan="4">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnregisternow" runat="server" Text="RegisterNow" Height="33px" 
                   Width="222px" BorderStyle="None" onclick="btnregisternow_Click" 
                    style="background-color: #0099FF; color: #000000;" />
                <br />
                <asp:Label ID="Label2" runat="server" style="color: #FF0000"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        </table>
</asp:Content>


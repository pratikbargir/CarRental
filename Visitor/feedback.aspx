<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Visitor_feedback" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: left;
            background-color: #999966;
        }
        .style6
        {
        background-color: #C0C0C0;
    }
        .style7
        {
            text-align: center;
            text-decoration: underline;
            color: #000000;
        }
        .style8
    {
        font-size: large;
        background-color: #000000;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="5" width="80%">
        <tr>
            <td class="style7">
                <asp:Image ID="Image3" runat="server" Height="142px" 
                    ImageUrl="~/Image/shutterstock_695711272.png" style="margin-left: 0px" 
                    Width="64%" />
            </td>
        </tr>
        <tr>
            <td>
                <strong>Your feedback is important to us.</strong></td>
        </tr>
        <tr>
            <td style="color: #333333">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It is our constant endever to 
                improve our services and overall customer experience. Please fill out the form 
                below with your details and valuable suggestion to help&nbsp;serve your better.<br />
                <table cellpadding="5" cellspacing="1" bgcolor="#0099FF" width="100%" 
                    style="background-color: #C0C0C0">
                    <tr>
                        <td colspan="2" 
                            
                            style="font-weight: 700; font-size: xx-large; text-align: left; color: #FFFFFF" 
                            class="style6">
                            <strong style="text-align: center"><span class="style8">PLEASE FILL THE FORM</span></strong></td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:TextBox ID="txtname" runat="server" ontextchanged="TextBox1_TextChanged" 
                                placeholder="Enter Your Name" Width="500px" Height="35px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="style6">
                            <asp:TextBox ID="txtmobileno" runat="server" 
                                ontextchanged="txtmobno_TextChanged" placeholder="Enter Mobile number"
                                Width="500px" Height="35px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtmobileno" ErrorMessage="Invalid Mob No" style="color: #FF0000" 
                                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:TextBox ID="txtemailid" runat="server" placeholder="Enter Email Id" 
                                Width="500px" Height="35px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtemailid" ErrorMessage="Incorrect E-Mail" style="color: #FF0000" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                        <td class="style6">
                            <asp:TextBox ID="txtdateoftravel" runat="server" 
                                ontextchanged="TextBox4_TextChanged" placeholder="Enter date of travel" 
                                Width="500px" Height="35px"></asp:TextBox>
                            <cc1:CalendarExtender ID="txtdateoftravel_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="txtdateoftravel">
                            </cc1:CalendarExtender>
                        </td>s
                    </tr>
                    <tr>
                        <td colspan="2" class="style6">
                            <asp:TextBox ID="txtfeedbackmsg" runat="server" 
                                 Width="1100px" Height="60px" placeholder="Feedback Message"
                                ontextchanged="txtfeedbackmsg_TextChanged"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2" class="style6">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit Now" Width="300px" 
                                Height="38px" BorderStyle="None" onclick="btnsubmit_Click1" 
                                BackColor="#006600" Font-Bold="True" ForeColor="White" 
                                style="background-color: #0033CC" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table><br />
</asp:Content>


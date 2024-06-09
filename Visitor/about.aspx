<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Visitor_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            color: #CC0066;
            text-decoration: underline;
        }
        .style5
        {
            text-align: center;
            background-color: #FFFFFF;
        }
        .style6
        {
            font-size: x-large;
            text-decoration: underline;
            background-color: #FFFFFF;
        }
    .style8
    {
        color: #000000;
    }
        .style9
        {
        background-color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="10" cellspacing="5" width="90%" 
    style="background-color: #FFFFFF">
    <tr>
        <td align="center" class="style9">
            <strong><span class="style8"><span class="style6">ABOUT COMPANY</span></span></strong></td>
    </tr>
    <tr>
        <td style="text-align: justify" class="style9">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Take to the roads in the vehicle you love from HIRE ME, India&#39;s first Self-Drive 
            service. Be in control of the wheels and spin stories on the roads. We have the 
            keys for you to unlock happiness as you drive away with your loved ones. Choose 
            from mover than 38+ car models and rent by the hour,&nbsp; day , week or month. 
            Find us in your neighborhood with our fleet spread over in 5 cities. So whenever 
            you find the roads calling, HIRE ME will always be near with 5 pick-up locatins.
            Ready to drive yourself to your next adventure in a HIRE ME car?</td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Image ID="Image3" runat="server" Height="170px" 
                ImageUrl="~/images/company1.jpg" Width="850px" BorderStyle="Solid" />
            <br />
            <br />
            <asp:Image ID="Image4" runat="server" Height="170px" 
                ImageUrl="~/images/company2.jpg" Width="850px" BorderStyle="Solid" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>


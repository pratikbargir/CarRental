<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Visitor_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 60%;
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style7
    {
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="1" class="style1">
    <tr>
        <td>
            <br />
            <br />
            <br />
            &nbsp;
            <asp:Label ID="lblpaymentid" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblbookingid" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <br />
            <br />
            <table align="center" border="1" cellpadding="5" cellspacing="5" class="style6" 
                rules="all">
                <tr>
                    <td class="style7" colspan="2" 
                        style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #0099CC">
                        &nbsp;Payment Details&nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        Customer Name</td>
                    <td class="style7">
                        <asp:Label ID="lblcustomer" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Payment Date</td>
                    <td class="style7">
                        <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Payment Amount</td>
                    <td class="style7">
                        <asp:Label ID="lblpay" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Bank Name</td>
                    <td class="style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="109px">
                            <asp:ListItem>ICICI Bank</asp:ListItem>
                            <asp:ListItem>HDFC Bank</asp:ListItem>
                            <asp:ListItem>SBI Bank</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Card Number</td>
                    <td class="style7">
                        <asp:TextBox ID="txtaccountno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                            style="font-weight: 700; font-size: large; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; background-color: #003399" 
                            Text="Submit" Width="217px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


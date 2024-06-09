<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 500px;
            height: 300px;
        }
        .style3
        {
           
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
  
  <asp:Panel ID="Panel1" runat="server" 
        BackImageUrl="~/Image/bg2.png" 
        Height="900px" style="text-align: center" HorizontalAlign="Center">
      <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
      <br />
      <br />
      <table align="center" class="style2" 
          style="border-style: solid; border-radius:10px; border-width: thin">
          <tr>
              <td class="">
                  <asp:Label ID="txtadminpanel" runat="server" ForeColor="White" 
                      style="font-size: xx-large; background-color: #FF9933; color: #000000;" 
                      Text="Admin Panel" Width="280px"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:TextBox ID="txtusername" runat="server" Height="30px" 
                      ontextchanged="txtusername_TextChanged" placeholder="User Name" Width="275px"></asp:TextBox>
                  <br />
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:TextBox ID="txtpassword" runat="server" Height="30px" 
                      placeholder="Password" TextMode="Password" Width="275px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3">
                  <asp:Button ID="btnlogin" runat="server" Height="40px" onclick="btnlogin_Click" 
                      style="color: #FFFFFF; background-color: #CC0000" Text="Login" Width="200px" />
              </td>
          </tr>
      </table>
    </form>
    </asp:Panel>
</body>
</html>

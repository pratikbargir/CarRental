<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Visitor_Booking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style18
        {
            width: 80%;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td>
                <table class="style4">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="car_id" 
                                DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <table cellpadding="5" class="style4">
                                        <tr>
                                            <td colspan="2">
                                                <asp:Image ID="Image3" runat="server" Height="140px" 
                                                    ImageUrl='<%# Eval("car_photo") %>' Width="246px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Model:</td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("car_model_name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Type:</td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("car_type") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Plate No:</td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("car_plate_no") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Insurnce:</td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("car_insurance") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                seater:</td>
                                            <td style="margin-left: 40px">
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("car_seater") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Colour:</td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("car_colors") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                milage:</td>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("car_milage") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Fuel type:</td>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("car_fuel_type") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Charges(per Day):</td>
                                            <td>
                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("car_charge1") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Cars] WHERE ([car_id] = @car_id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="car_id" SessionField="carid" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td valign="top">
                            <table style="border-right-style: solid; border-left-style: solid; border-width: thin; border-color: #000000" 
                                width="100%">
                                <tr>
                                    <td>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lblbookingid" runat="server" Text="Label"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lblcustomer" runat="server" Text="Label"></asp:Label>
                                        &nbsp;
                                        <table align="center" cellpadding="5" cellspacing="5" class="style18" 
                                            frame="box" rules="all">
                                            <tr>
                                                <td style="font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; background-color: #0099CC">
                                                    Booking Detail</td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <table cellpadding="5" class="style1">
                                                        <tr>
                                                            <td class="style9">
                                                                Pick Up Date</td>
                                                            <td class="style9">
                                                                <asp:TextBox ID="txtbpickdate0" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                                                
                                                                <cc1:CalendarExtender ID="txtbpickdate0_CalendarExtender" runat="server" 
                                                                    Enabled="True" TargetControlID="txtbpickdate0">
                                                                </cc1:CalendarExtender>
                                                                
                                                            </td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style9">
                                                                Drop Off Date</td>
                                                            <td class="style9">
                                                                <asp:TextBox ID="txtdropdate0" runat="server" AutoPostBack="True" Height="30px" 
                                                                    Width="200px" ontextchanged="txtdropdate0_TextChanged"></asp:TextBox>
                                                               
                                                                <cc1:CalendarExtender ID="txtdropdate0_CalendarExtender" runat="server" 
                                                                    Enabled="True" TargetControlID="txtdropdate0">
                                                                </cc1:CalendarExtender>
                                                               
                                                            </td>
                                                            <td class="style9">
                                                                <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style9">
                                                                Pick Up Time</td>
                                                            <td class="style9">
                                                                <asp:DropDownList ID="dlbpicktime0" runat="server" Height="30px" Width="200px">
                                                                    <asp:ListItem>1</asp:ListItem>
                                                                    <asp:ListItem>2</asp:ListItem>
                                                                    <asp:ListItem>3</asp:ListItem>
                                                                    <asp:ListItem>4</asp:ListItem>
                                                                    <asp:ListItem>5</asp:ListItem>
                                                                    <asp:ListItem>6</asp:ListItem>
                                                                    <asp:ListItem>7</asp:ListItem>
                                                                    <asp:ListItem>8</asp:ListItem>
                                                                    <asp:ListItem>9</asp:ListItem>
                                                                    <asp:ListItem>10</asp:ListItem>
                                                                    <asp:ListItem>11</asp:ListItem>
                                                                    <asp:ListItem>12</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style9">
                                                                Drop Off Time</td>
                                                            <td class="style9">
                                                                <asp:DropDownList ID="dlbdroptime0" runat="server" Height="30px" Width="200px">
                                                                    <asp:ListItem>1</asp:ListItem>
                                                                    <asp:ListItem>2</asp:ListItem>
                                                                    <asp:ListItem>3</asp:ListItem>
                                                                    <asp:ListItem>4</asp:ListItem>
                                                                    <asp:ListItem>5</asp:ListItem>
                                                                    <asp:ListItem>6</asp:ListItem>
                                                                    <asp:ListItem>7</asp:ListItem>
                                                                    <asp:ListItem>8</asp:ListItem>
                                                                    <asp:ListItem>9</asp:ListItem>
                                                                    <asp:ListItem>10</asp:ListItem>
                                                                    <asp:ListItem>11</asp:ListItem>
                                                                    <asp:ListItem>12</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style9">
                                                                Pick Up Address</td>
                                                            <td class="style9">
                                                                <asp:TextBox ID="txtpicklocation" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style9">
                                                                Drop Off Address</td>
                                                            <td class="style9" height="30" width="200">
                                                                <asp:TextBox ID="txtdroplocation" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                            <td class="style9" height="30" width="200">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style9">
                                                                Driver Required<br />
                                                                (* 400/Day Extra)</td>
                                                            <td class="style9">
                                                                <asp:RadioButton ID="rdbyes0" runat="server" GroupName="y" Text="YES" />
                                                                &nbsp;
                                                                <asp:RadioButton ID="rdbno0" runat="server" GroupName="y" Text="NO" />
                                                            </td>
                                                            <td class="style9">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:Button ID="Button1" runat="server" Height="35px" 
                                                        style="color: #FFFFFF; font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif; background-color: #333333" 
                                                        Text="Proceed For Payments" onclick="Button1_Click" />
                                                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                                        DataFile="~/hireme.mdb" 
                                                        SelectCommand="SELECT [car_id], [car_company_name], [car_model_name], [car_type], [car_plate_no], [car_insurance], [car_photo], [car_seater], [car_color], [car_milage], [car_fuel_type], [car_charge1], [car_charge2] FROM [cars] WHERE ([car_id] = ?)">
                                                        <SelectParameters>
                                                            <asp:SessionParameter Name="car_id" SessionField="cid" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:AccessDataSource>
                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitormaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Visitor_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
        height: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style4">
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="../data1/images/hatchback.png" alt="" title="" id="wows1_0"/></li>
		<li><img src="../data1/images/luxury.png" alt="" title="" id="wows1_1"/></li>
		<li><a href="http://wowslider.com"><img src="../data1/images/sedan.png" alt="http://wowslider.com/" title="" id="wows1_2"/></a></li>
		<li><img src="../data1/images/suv.png" alt="" title="" id="wows1_3"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span><img src="../data1/tooltips/hatchback.png" alt=""/>1</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/luxury.png" alt=""/>2</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/sedan.png" alt=""/>3</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/suv.png" alt=""/>4</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">wow slider</a> by WOWSlider.com v8.7</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="../engine1/wowslider.js"></script>
<script type="text/javascript" src="../engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
    <tr>
        <td>
           </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/13.jpg" Width="100%" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/serv2.png" 
                Width="100%" style="background-color: #CCFF99" BorderStyle="Groove" />
        </td>
    </tr>
</table>
</asp:Content>


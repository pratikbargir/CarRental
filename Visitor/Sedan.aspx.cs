using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Sedan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnbooknow_Click(object sender, EventArgs e)
    {
        string a;
        Button btn = sender as Button;
        a= Convert.ToString(btn.CommandArgument);
        Session["carid"] = a;
        Response.Redirect("~/Visitor/Login1.aspx");
    }
}
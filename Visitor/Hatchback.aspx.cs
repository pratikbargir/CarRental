using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Hatchback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnbooknow_Click(object sender, EventArgs e)
    {
        int a;
        Button btn = sender as Button;
        a = Convert.ToInt32(btn.CommandArgument);
        Session["carid"] = a;
        Response.Redirect("~/Visitor/Login1.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
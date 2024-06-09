using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Visitor_Help_Desk : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["pranali"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Helpdesk values('" +txtname.Text+ "'," +txtmobileno.Text+ ",'" + txtemailid.Text + "','" +txtquery.Text+ "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alter('Data save successfully')</script>");
    }
}
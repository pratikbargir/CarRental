using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Visitor_Register1 : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CarRental\\App_Data\\carrental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
     SqlCommand cmd= new SqlCommand();
     SqlDataReader dr;
     DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregisternow_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(*) from Register where r_name='" + txtname.Text + "'";
        cmd.Connection = cn;
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();

        if (count > 0)
        {
            //ClientScript.RegisterStartupScript(Page.GetType(), "Register", "<script language ='javascript'> alter ('Already Exist') </script>");
            Label2.Text = "Already Exist";
        }
        else
        {
            Label2.Text = "";
            cn.Open();
            cmd.CommandText = "insert into Register values('" + txtname.Text + "', " + txtage.Text + ", '" + txtlicenseno.Text + "', '" + txtcity.Text + "', " + txtmobile.Text + ", '" + txtemail.Text + "', '" + txtpassword.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        txtname.Text = "";
        txtage.Text = "";
        txtlicenseno.Text = "";
        txtcity.Text = "";
        txtmobile.Text = "";
        txtemail.Text = "";
        txtpassword.Text = "";
        Response.Redirect("~/Visitor/Login1.aspx");
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtage_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtmobile_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtemail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Visitor_Login1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CarRental\\App_Data\\carrental.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        //cn.Open();
        //cmd.CommandText = "select count(*) from Register where r_name='" +txtusername.Text+ "'";
        //cmd.Connection = cn;
        //int count = Convert.ToInt32(cmd.ExecuteScalar());
        //cn.Close();

        //if (count > 0)
        //{
        //    //ClientScript.RegisterStartupScript(Page.GetType(), "Register", "<script language ='javascript'> alter ('Already Exist') </script>");
        //    //Label2.Text = "Already Exist";
        //}
        //else
        //{
        //    cn.Open();
        //    cmd.CommandText = "insert into Register values('" + txtusername.Text + "','" + txtpassword.Text + "')";
        //    cmd.Connection = cn;
        //    cmd.ExecuteNonQuery();
        //    cn.Close();
        //}
        //    txtusername.Text = "";
        //    txtpassword.Text = "";
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CarRental\\App_Data\\carrental.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        cn.Open();
        cmd.CommandText = "Select r_name,r_password from Register where r_name ='" + txtusername.Text + "'and r_password='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        int count = dt.Rows.Count;
        if (count > 0)
        {
            Session["user"] = txtusername.Text;
            Response.Redirect("~/Visitor/Booking.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Login", "<Script language='javasript',alter('Invalid username and password'> </sript>)");
        }
        cn.Close();
    }
}
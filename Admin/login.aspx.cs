using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
              
     }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CarRental\\App_Data\\carrental.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        cn.Open();
        cmd.CommandText = "Select name,password from Admin where name ='" + txtusername.Text + "'and password='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        int count = dt.Rows.Count;
        if (count > 0)
        {
            Response.Redirect("~/Admin/home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Login", "<Script language='javasript',alter('Invalid username and password'> </sript>)");
        }
        cn.Close();

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
}
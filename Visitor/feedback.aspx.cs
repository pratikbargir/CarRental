using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Visitor_feedback : System.Web.UI.Page
{
    SqlConnection cn= new SqlConnection(ConfigurationManager.ConnectionStrings["pranali"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtmobno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtfeedback_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtfeedbackmsg_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //cn.Open();
        //cmd.CommandText = "insert into feedback values('" + txtname.Text + "'," + txtmobileno + ",'" + txtdateoftravel + "','" + txtfeedbackmsg + "')";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alter('Data save successfully')</script>");
        
    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into feedback values('" + txtname.Text + "'," + txtmobileno.Text + ",'"+txtemailid.Text+"','" + txtdateoftravel.Text + "','" + txtfeedbackmsg.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alter('Data save successfully')</script>");
    }
}
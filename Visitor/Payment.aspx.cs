using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Visitor_Payment : System.Web.UI.Page
{
    String str, cname;
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CarRental\\App_Data\\carrental.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    
    protected void Page_Load(object sender, EventArgs e)
    {
         lbldate.Text = System.DateTime.Now.ToString();
        cname = Session["user"].ToString();
        lblcustomer.Text = cname;

        lblbookingid.Text = Session["bid"].ToString ();
        lblpay.Text = Session["pay"].ToString ();
        cn.Open();
        int k;
        cmd.CommandText = "select max(payment_id)from Payment";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        if(dr.Read()) 
        {
            String str;
            str = dr[0].ToString();
            if(str == "")
                lblpaymentid.Text = "1";
            else
            {
                k = Convert.ToInt32(dr[0].ToString());
                k = k + 1;
                lblpaymentid.Text = k.ToString();
            }

            
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Payment values(" + lblpaymentid.Text + ",'" + lblcustomer.Text + "'," + lblbookingid.Text + ",'" + lbldate.Text + "'," + lblpay.Text + ",'" + DropDownList1.Text + "'," + txtaccountno.Text + ")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();

        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('successfully booked a car')</script>");

    }
}
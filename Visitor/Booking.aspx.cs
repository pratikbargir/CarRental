using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Visitor_Booking : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CarRental\\App_Data\\carrental.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    int n,m,k;
    String cname;
    protected void Page_Load(object sender, EventArgs e)
    {
         cname = Session["user"].ToString();
        lblcustomer.Text = cname;
        cn.Open();
       
        cmd.CommandText = "select max(booking_id)from Booking";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        if((dr.Read())) 
        {
            String str;
            str = dr[0].ToString();
            if (str == "") 
                lblbookingid.Text = "1";
            else
                k = Convert.ToInt32(dr[0].ToString());
                k = k + 1;
                lblbookingid.Text = k.ToString();

        }

        cn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         int charge;
        int dcharge=0;
        int count = DataList1.Items.Count;

        for(int i=0;i<=count-1;i++) 
        {
            Label lbl = DataList1.Items[i].FindControl("Label10") as Label;
          //  Label lbl = TryCast(DataList1.Items[i].FindControl("car_charge2Label"), Label);
           n =Convert.ToInt32 (lbl.Text);
           // string str = (DataList1.Items[i].FindControl("Label10"));
        }

        charge = (n);
        int x = Convert.ToInt32(Label2.Text);
        if (x == 0)
            charge = n;
        
        if (rdbyes0.Checked==true) 
            dcharge = 400;
        
        int total = Convert.ToInt32 (Label2.Text) * charge + dcharge;
        Label3.Text = total.ToString ();



        int cid  = DataList1.Items.Count;
       
        for(int i=0;i<=cid-1;i++) 
        {
            //Label   = TryCast(DataList1.Items(i).FindControl("car_idLabel"), Label)
            //m = lbl.Text

                 m=Convert.ToInt32 (DataList1.Items[i].FindControl("car_idLabel"));
         }

        //charge = Integer.Parse(n)

        
        cn.Open();
        cmd.CommandText = "insert into Booking values(" + lblbookingid.Text + ",'" + lblcustomer.Text + "'," + cid + ",'" + txtbpickdate0.Text +"','" + txtdropdate0.Text + "'," + dlbpicktime0.Text + "," + dlbdroptime0.Text + ",'" + txtpicklocation.Text + "','" + txtdroplocation.Text + "',@d1)";
        if(rdbyes0.Checked==true)
            cmd.Parameters.AddWithValue("@d1", rdbyes0.Text);
        else
            cmd.Parameters.AddWithValue("@d1", rdbno0.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();


        String status = "Reserved";
        cn.Open();
        cmd.CommandText = "update Cars set car_status='" + status + "'where car_id=" + m + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();

        cn.Close();






        Session["bid"] = lblbookingid.Text;
        Session["pay"] = Label3.Text;
        Response.Redirect("~\\Visitor\\Payment.aspx");

    }
    protected void txtdropdate0_TextChanged(object sender, EventArgs e)
    {
        DateTime  d1  =Convert.ToDateTime (txtbpickdate0.Text);
        DateTime  d2  =Convert.ToDateTime (txtdropdate0.Text);
       TimeSpan  diff  = d2.Subtract(d1);
       Label2.Text = diff.TotalDays.ToString();
       // int a = d1 - d2;

       // int a=
      // int a = DateDiff(DateInterval.Day, d1, d2);
       // Label2.Text = a.ToString ();
    }
}
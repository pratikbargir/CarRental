using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Drivermanager : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["pranali"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    void clear()
    {
        txtid.Text = "";
        txtname.Text = "";
        txtaddress.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
        drpexperience.Text = "";
        txtpayment.Text = "";
        Image1.ImageUrl = "";
        drplicence.Text = "";
        txtdocument.Text = "";
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (driver_id) from Driver";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        cn.Close();
        
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Driver values(" +txtid.Text+ ", '" +txtname.Text+ "','" +txtaddress.Text+ "'," +txtcontact.Text+ ", '" +txtemail.Text+ "','" +drpexperience.Text+ "',"+txtpayment.Text+", @p1,@p2,'" + Image1.ImageUrl + "', '" +drplicence.Text+ "' , '" +txtdocument.Text+"')";
        if (rdyes.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdyes.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdno.Text);
        if (rdmale.Checked == true)
            cmd.Parameters.AddWithValue("@p2", rdmale.Text);
        else
            cmd.Parameters.AddWithValue("@p2", rdfemale.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtaddress.Text = GridView1.SelectedRow.Cells[3].Text;
        txtcontact.Text = GridView1.SelectedRow.Cells[4].Text;
        txtemail.Text = GridView1.SelectedRow.Cells[5].Text;
        drpexperience.Text = GridView1.SelectedRow.Cells[6].Text;
        txtpayment.Text = GridView1.SelectedRow.Cells[7].Text;
        string ins = GridView1.SelectedRow.Cells[8].Text;
        if (ins == "Yes")
            rdyes.Checked = true;
        else
            rdno.Checked =true;
        string Driver = GridView1.SelectedRow.Cells[9].Text;
        if (Driver == "Male")
            rdmale.Checked = true;
        else
            rdfemale.Checked = true;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[10].Text;
        drplicence.Text= GridView1.SelectedRow.Cells[11].Text;
        txtdocument.Text = GridView1.SelectedRow.Cells[12].Text;

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Driver set driver_id=" + txtid.Text + ",driver_name='" + txtname.Text + "',driver_address='" + txtaddress.Text + "',driver_contact="+txtcontact.Text+",driver_email='"+txtemail.Text+"',driver_experience='" + drpexperience.Text + "',driver_payment=" + txtpayment.Text + ",driver_insurance=@p1,driver_gender=@p2,driver_photo='" +Image1.ImageUrl+ "',driver_licence='" + drplicence.Text + "',driver_document='" +txtdocument.Text+"' where driver_id="+txtid.Text+"";
        if (rdyes.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdyes.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdno.Text);
        if (rdmale.Checked == true)
            cmd.Parameters.AddWithValue("@p2", rdmale.Text);
        else
            cmd.Parameters.AddWithValue("@p2", rdfemale.Text);

        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Driver where Driver_id=" +txtid.Text+ "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_adminmanagecar : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["pranali"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtcarstatus.Text = "Available";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Image\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Image\\" + FileUpload1.FileName;
        }
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(car_id) from cars";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtcarid.Text = i.ToString();
        cn.Close();
    }



    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    void clear()
    {
        txtcarid.Text = "";
        Image1.ImageUrl = "";
        txtcarprice.Text = "";
        txtcompanyname.Text = "";
        txtmodelname.Text = "";
        drpcartype.Text = "";
        txtplateno.Text = "";
        txtseatsavailable.Text = "";
        txtmilage.Text = "";
        drpfueltype.Text = "";
        txtcharges1.Text = "";
        txtcharges2.Text = "";

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into cars values(" + txtcarid.Text + ", '" + txtcompanyname.Text + "','" + txtmodelname.Text + "','" + txtcarstatus.Text + "', '" + drpcartype.Text + "', '" + txtplateno.Text + "', @p1,'" + Image1.ImageUrl + "', " + txtseatsavailable.Text + " , '" + drpcolors.Text + "','" + txtcarprice.Text + "','" + txtmilage.Text + "','" + drpfueltype.Text + "'," + txtcharges1.Text + "," + txtcharges2.Text + ")";
        if (rdyes.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdyes.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdno.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcarid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtcompanyname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtmodelname.Text = GridView1.SelectedRow.Cells[3].Text;
        txtcarstatus.Text = GridView1.SelectedRow.Cells[4].Text;
        drpcartype.Text = GridView1.SelectedRow.Cells[5].Text;
        txtplateno.Text = GridView1.SelectedRow.Cells[6].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[8].Text;
        txtseatsavailable.Text = GridView1.SelectedRow.Cells[9].Text;
        drpcolors.Text = GridView1.SelectedRow.Cells[10].Text;
        txtcarprice.Text = GridView1.SelectedRow.Cells[11].Text;
        txtmilage.Text = GridView1.SelectedRow.Cells[12].Text;
        drpfueltype.Text = GridView1.SelectedRow.Cells[13].Text;
        txtcharges1.Text = GridView1.SelectedRow.Cells[14].Text;
        txtcharges2.Text = GridView1.SelectedRow.Cells[15].Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update cars set car_id=" + txtcarid.Text + ",car_company_name='" + txtcompanyname.Text + "',car_model_name='" + txtmodelname.Text + "',car_status='" + txtcarstatus.Text + "',car_type='" + drpcartype.Text + "',car_plate_no='" + txtplateno.Text + "',car_insurance=@p1,car_photo='" + Image1.ImageUrl + "',car_seater=" + txtseatsavailable.Text + ",car_price='" + txtcarprice.Text + "',car_milage='" + txtmilage.Text + "',car_fuel_type='" + drpfueltype.Text + "',car_charge1=" + txtcharges1.Text + ",car_charge2=" + txtcharges2.Text + "where car_id=" + txtcarid.Text + "";
        if (rdyes.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdyes.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdno.Text);

        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from cars where car_id=" + txtcarid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();


    }
    protected void txtcarid_TextChanged(object sender, EventArgs e)
    {

    }

    protected void rdno_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void rdyes_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void txtplateno_TextChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class RatingForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["ResId"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        string rate = DropDownList1.SelectedValue.ToString();
        double rating = Convert.ToDouble(rate);

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        DBconnect.Open();
        string sql = "select * from review";
        da = new MySqlDataAdapter(sql, ConnectString);
        ds = new DataSet();
        da.Fill(ds);
        builder = new MySqlCommandBuilder(da);
        int counting = ds.Tables[0].Rows.Count + 1;
        string index = counting.ToString();

        MySqlCommand createCmd = DBconnect.CreateCommand();
        createCmd.CommandType = CommandType.Text;
        createCmd.CommandText = "insert into review values('" + index + "','" + Label1.Text + "','" + name + "','" + rate + "','" + TextBox2.Text + "')";
        createCmd.ExecuteNonQuery();

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Succesfully Inserted');</script>");
        DBconnect.Close();



        string sqling = "select * from rate where resid = '" + Label1.Text + "' ";
        DBconnect.Open();
        MySqlCommand command = new MySqlCommand(sqling, DBconnect);
        MySqlDataReader dr;
        dr = command.ExecuteReader();


        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string r = dr["avgrate"].ToString();
                double ra = Convert.ToDouble(r);
                double f = (ra + rating) / 2;
                DBconnect.Close();
                DBconnection(f);
            }

        }

        else
        {
            DBconnect.Close();
            InsertData(rating);
        }

       

      
    }

    private void DBconnection(double rating)
    {
        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        DBconnect.Open();
        MySqlCommand creatingCmd = DBconnect.CreateCommand();
        creatingCmd.CommandType = CommandType.Text;
        creatingCmd.CommandText = "update isddb.rate set avgrate = '" + rating + "' where resid ='" + Label1.Text + "'";
        creatingCmd.ExecuteNonQuery();

       
        DBconnect.Close();
        Response.Redirect("~/Details.aspx?ResId=" + Label1.Text);

    }
    private void InsertData(double rating)
    {
        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        DBconnect.Open();
        string sql = "select * from rate";
        da = new MySqlDataAdapter(sql, ConnectString);
        ds = new DataSet();
        da.Fill(ds);
        builder = new MySqlCommandBuilder(da);
        int counting = ds.Tables[0].Rows.Count + 1;
        string index = counting.ToString();

        MySqlCommand createCmd = DBconnect.CreateCommand();
        createCmd.CommandType = CommandType.Text;
        createCmd.CommandText = "insert into rate values('" + index + "','" + Label1.Text + "','" + rating + "')";
        createCmd.ExecuteNonQuery();

        //Response.Redirect("~/DefaultHome.aspx");
        Response.Redirect("~/Details.aspx?ResId=" + Label1.Text);
        DBconnect.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Details.aspx?ResId=" + Label1.Text);
    }
}
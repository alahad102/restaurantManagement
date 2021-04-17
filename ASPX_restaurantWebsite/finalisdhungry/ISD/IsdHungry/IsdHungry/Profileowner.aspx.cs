using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class ProfileUpdating : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Session["userId"].ToString();
        Label1.Text = userid;
        string user;

        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        MySqlConnection con = new MySqlConnection("datasource= localhost; username=root; password=; database=isddb");
        string insertQuery = "select * from restbl where userid='" + Label1.Text + "' ";
        MySqlCommand command = new MySqlCommand(insertQuery, con);
        con.Open();
        MySqlDataReader dr;
        dr = command.ExecuteReader();

        while (dr.Read())
        {
            user = dr["resid"].ToString();
            Label5.Text = user;
        }
        con.Close();

        DBconnect.Open();

        da = new MySqlDataAdapter(insertQuery, ConnectString);
        DataTable dt = new DataTable();
        //ds = new DataSet();
        da.Fill(dt);

        DataList1.DataSource = dt;
        DataList1.DataBind();

        DBconnect.Close();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "reserve")
        {
            string v = e.CommandArgument.ToString();
            Response.Redirect("~/ReservationShow.aspx?ResId=" + v);
        }

        else if (e.CommandName == "menu")
        {
            string v = e.CommandArgument.ToString();
            Response.Redirect("~/Menushow.aspx?ResId=" + v);
        }

        else if (e.CommandName == "profile")
        {
            string v = e.CommandArgument.ToString();
            Response.Redirect("~/UpdateProfile.aspx?ResId=" + v);
        }
        else if (e.CommandName == "rate")
        {
            string v = e.CommandArgument.ToString();
            Response.Redirect("~/RatingShow.aspx?ResId=" + v);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class ReservationShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Session["userId"].ToString();

        Label6.Text = userid;
        string user;

        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        MySqlConnection con = new MySqlConnection("datasource= localhost; username=root; password=; database=isddb");
        string insertQuery = "select resid from restbl where userid='" + Label6.Text + "' ";
        MySqlCommand command = new MySqlCommand(insertQuery, con);
        con.Open();
        MySqlDataReader dr;
        dr = command.ExecuteReader();

        if (dr.Read() != null)
        {
            user = dr["resid"].ToString();
            Label6.Text = user;
        }
        con.Close();

        DBconnect.Open();

        string insertingQuery = "Select resid,name,contact,date,time,people from rsvtable where resid = '" + Label6.Text + "' ";

        da = new MySqlDataAdapter(insertingQuery, ConnectString);
        DataTable dt = new DataTable();
        //ds = new DataSet();
        da.Fill(dt);

        DataList1.DataSource = dt;
        DataList1.DataBind();

        DBconnect.Close();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "home")
        {
           
            Response.Redirect("~/Profileowner.aspx?");
        }
    }
}

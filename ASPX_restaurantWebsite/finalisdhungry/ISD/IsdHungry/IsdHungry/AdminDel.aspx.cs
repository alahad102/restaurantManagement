using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class AdminDel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = Request.QueryString["ResId"];

        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        MySqlConnection con = new MySqlConnection("datasource= localhost; username=root; password=; database=isddb");


        DBconnect.Open();

        string insertingQuery = "Select * from restbl where resid = '" + Label4.Text + "' ";

        da = new MySqlDataAdapter(insertingQuery, ConnectString);
        DataTable dt = new DataTable();
        //ds = new DataSet();
        da.Fill(dt);

        DataList1.DataSource = dt;
        DataList1.DataBind();

        DBconnect.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        //DBconnect.Open();
       // MySqlCommand cmd1 = new MySqlCommand("DELETE FROM restbl WHERE resid = '" + Label4.Text + "'", DBconnect);
       // cmd1.ExecuteNonQuery();
        //MySqlCommand createCmd = DBconnect.DeleteCommand();
       // createCmd.CommandType = CommandType.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        DBconnect.Open();
        MySqlCommand cmd1 = new MySqlCommand("DELETE FROM restbl WHERE resid = '" + Label4.Text + "'", DBconnect);
        cmd1.ExecuteNonQuery();
    }
}
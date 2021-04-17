using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;


public partial class RatingShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label18.Text = Request.QueryString["ResId"];


        string location = Label18.Text.ToString();

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);
        DBconnect.Open();

        string insertQuery = "Select * from review where resid = '" + location + "' ";

        MySqlDataAdapter dy = new MySqlDataAdapter(insertQuery, ConnectString);
        DataTable dx = new DataTable();
        dy.Fill(dx);

        DataList2.DataSource = dx;
        DataList2.DataBind();

        DBconnect.Close();
    }
}
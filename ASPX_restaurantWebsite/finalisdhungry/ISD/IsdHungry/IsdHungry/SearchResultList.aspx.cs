using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;


public partial class SearchResultList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["ResId"];

        string location=Label1.Text.ToString();

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);
        DBconnect.Open();

        MySqlDataAdapter da;
        MySqlCommandBuilder builder;

        MySqlCommand command;
        string insertQuery = "Select resid,resname,address from restbl where location = '" + location + "' ";

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
        if (e.CommandName == "ViewDetails")
        {
            string v = e.CommandArgument.ToString();
            Response.Redirect("~/Details.aspx?ResId=" + v);
        }
    }
}
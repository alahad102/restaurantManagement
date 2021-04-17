using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class AdminView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        MySqlConnection con = new MySqlConnection("datasource= localhost; username=root; password=; database=isddb");
       

        DBconnect.Open();

        string insertingQuery = "Select * from restbl";

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
        if(e.CommandName=="delete")
        {
            string v = e.CommandArgument.ToString();

            string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
            MySqlConnection DBconnect = new MySqlConnection(ConnectString);

            DBconnect.Open();
            MySqlCommand createCmd = DBconnect.CreateCommand();
            createCmd.CommandType = CommandType.Text;
            Response.Redirect("~/AdminDel.aspx?ResId=" + v);
            //createCmd.CommandText = "DELETE * from restbl where resid=' "  v " ' ";
            //createCmd.ExecuteNonQuery();

            //string insertingQuery;


            // Response.Redirect("~/AdminView.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class DetailsReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Request.QueryString["ResId"];


        string location = Label6.Text.ToString();

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);
        DBconnect.Open();

        MySqlDataAdapter da;
        MySqlCommandBuilder builder;

        MySqlCommand command;
        string sql = "Select resid,resname,address,location from restbl where resid = '" + location + "' ";

        da = new MySqlDataAdapter(sql, ConnectString);
        DataTable dt = new DataTable();
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
            Response.Redirect("~/ReservationForm.aspx?ResId=" + v);
        }

        else if (e.CommandName == "menu")
        {
            string v = e.CommandArgument.ToString();
            Response.Redirect("~/Menushow.aspx?ResId=" + v);
        }
        else if (e.CommandName == "rate")
        {
            string v = e.CommandArgument.ToString();
            Response.Redirect("~/RatingForm.aspx?ResId=" + v);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    string userid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logBttn_Click(object sender, EventArgs e)
    {
        DbConnection();
    }

  
    private void DbConnection()
    {
        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        try
        {

            string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
            MySqlConnection DBconnect = new MySqlConnection(ConnectString);

            DBconnect.Open();
            string insertQuery = "select * from user where username='" + usernameText.Text + "' and password='" + passwordText.Text + "'";
            MySqlCommand cmd = new MySqlCommand(); 
             da = new MySqlDataAdapter(insertQuery, ConnectString);
             ds = new DataSet();
             DataTable dt = new DataTable();
             da.Fill(ds);
             builder = new MySqlCommandBuilder(da);
             int counting = ds.Tables[0].Rows.Count;
            



            if (counting > 0)
             {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {

                userid = ds.Tables[0].Rows[i]["userid"].ToString();
                Session["userId"] = userid;

                }
                Response.Redirect("~/Home.aspx?userId=" + userid + "&resName=" + usernameText.Text);
                 
      

             }
             

            

            else
            {
                DBconnect.Close();
                //DbConnection();

                Label4.Text = "username and password doesn't exsist";
                usernameText.Text = "";
                passwordText.Text = "";


            }
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('ex.ToString()');</script>");
        }
    }


    protected void adminlog_Click(object sender, EventArgs e)
    {
        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        try
        {

            string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
            MySqlConnection DBconnect = new MySqlConnection(ConnectString);

            DBconnect.Open();
            string insertQuery = "select * from admin where aname='" + usernameText.Text + "' and password='" + passwordText.Text + "'";
            MySqlCommand cmd = new MySqlCommand();
            da = new MySqlDataAdapter(insertQuery, ConnectString);
            ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds);
            builder = new MySqlCommandBuilder(da);
            int counting = ds.Tables[0].Rows.Count;




            if (counting > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {

                   // userid = ds.Tables[0].Rows[i]["userid"].ToString();
                   // Session["userId"] = userid;

                }
                Response.Redirect("~/AdminView.aspx");



            }




            else
            {
                DBconnect.Close();
                //DbConnection();

                Label4.Text = "username and password doesn't exsist";
                usernameText.Text = "";
                passwordText.Text = "";


            }
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('ex.ToString()');</script>");
        }
    }

    protected void passwordText_TextChanged(object sender, EventArgs e)
    {

    }
}


    

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void regbttn_Click(object sender, EventArgs e)
    {
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";

        string user = userText.Text.ToString();
        string email = emailText.Text.ToString();
        string password = passwordText.Text.ToString();
        string conpass = conpassText.Text.ToString();

        if (user.Equals(""))
        {
            Label6.Text = "username is required";
            userText.Text = "";
           
            
        }

        if( email.Equals(""))
        {
            Label7.Text = "email is required";
            emailText.Text = "";
           
           
        }

        if (!password.Equals(conpass))
        {
            Label8.Text = "Passwords don't match";
            passwordText.Text = "";
            conpassText.Text = "";
            

        }

        else
        {
            DBconnection();
        }

        

    }

    private void DBconnection()
    {
        MySqlDataAdapter da;
        DataSet ds;
        MySqlCommandBuilder builder;

        string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
        MySqlConnection DBconnect = new MySqlConnection(ConnectString);

        try
        {
            DBconnect.Open();

            string sqling = "select * from user";
            da = new MySqlDataAdapter(sqling, ConnectString);
            ds = new DataSet();
            da.Fill(ds);
            builder = new MySqlCommandBuilder(da);
            int counting = ds.Tables[0].Rows.Count + 1;
            string index = counting.ToString();

            MySqlCommand createCmd = DBconnect.CreateCommand();
            createCmd.CommandType = CommandType.Text;
            createCmd.CommandText = "insert into user values('" + index + "','" + userText.Text + "','" + emailText.Text + "','" + passwordText.Text + "')";
            createCmd.ExecuteNonQuery();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Succesfully Registred');</script>");


            DBconnect.Close();
            Response.Redirect("~/ProfileAdd.aspx?userId=" + index + "&userName=" + userText.Text);

        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('ex.ToString()');</script>");
        }

        // Response.Redirect("Login.aspx");
    }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class ReservationForm : System.Web.UI.Page
{
   
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection("datasource= localhost; username=root; password=; database=isddb");


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text  = Request.QueryString["ResId"];
       // Label4.Text  = Request.QueryString["ResId"];
     
    }

    protected void reserveBttn_Click(object sender, EventArgs e)
    {
      

        bool f=DbConnection();
        bool flag = true;


        if (!f)
        {
            if (rName.Text.Equals(""))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('fillup the fields');</script>");
                Label7.Text = "this is required";



            }
            if (rContact.Text.Equals(""))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('fillup the fields');</script>");
                Label8.Text = "this is required";
                
            }

            if (pplText.Text.Equals(""))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('fillup the fields');</script>");
                Label9.Text = "this is required";
            }

            else
            {
                Label7.Text = "";
                Label8.Text = "";
                Label9.Text = "";

                string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
                MySqlConnection DBconnect = new MySqlConnection(ConnectString);
                DBconnect.Open();

                MySqlDataAdapter da;
                DataSet ds;
                MySqlCommandBuilder builder;
                con.Open();
                MySqlCommand command;
                string insertQuery = "Select * from rsvtable";

                da = new MySqlDataAdapter(insertQuery, con);
                ds = new DataSet();
                da.Fill(ds);
                builder = new MySqlCommandBuilder(da);
                int counting = ds.Tables[0].Rows.Count + 2;
                string index = counting.ToString();

                MySqlCommand createCmd = DBconnect.CreateCommand();
                createCmd.CommandType = CommandType.Text;
                createCmd.CommandText = "insert into rsvtable values('" + index + "','" + Label1.Text + "', '" + rName.Text + "','" + rContact.Text + "','" + DateText.Text + "', '" + DropDownList1.SelectedItem.Text + "', '" + pplText.Text + "')";
                createCmd.ExecuteNonQuery();

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Succesfully Reserved');</script>");

                rName.Text = "";
                rContact.Text = "";
                DateText.Text = "";
                pplText.Text = "";
            }
        }
        else
        {
            MsgLabel.Text = "already taken";
            //ds.Clear();
            //flag = false;
            DateText.Text = "";

            rName.Text = "";
            rContact.Text = "";
            DateText.Text = "";
            pplText.Text = "";

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('already taken');</script>");

            //  Response.Redirect("~/ReservationForm.aspx?ResId=" + Label1.Text);
        }


    }

    public bool DbConnection()
    {
       
        
            bool flag = false;
            MySqlDataAdapter da;
            DataSet ds;
            MySqlCommandBuilder builder;
            con.Open();
            MySqlCommand command;

            string insertQuery = "SELECT * FROM  rsvtable where resid ='" + Label1.Text + "'and date ='" + DateText.Text + "'and time='" + DropDownList1.SelectedItem.Text + "' ";


            da = new MySqlDataAdapter(insertQuery, con);
            ds = new DataSet();
            da.Fill(ds);
            builder = new MySqlCommandBuilder(da);
            int counting = ds.Tables[0].Rows.Count;

            if (counting > 0)
            {
                flag = true;
                return true;

            }
            if (flag)
            {
                MsgLabel.Text = "already taken";
                ds.Clear();
                flag = false;
                DateText.Text = "";

                rName.Text = "";
                rContact.Text = "";
                DateText.Text = "";
                pplText.Text = "";

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('already taken');</script>");
                //Response.Redirect("~/Details.aspx?ResId=" + Label1.Text);


            }
        

            con.Close();
            return false;
        
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        DateText.Text = Calendar1.SelectedDate.ToString("dd -MM -yyyy");
        
    }
}
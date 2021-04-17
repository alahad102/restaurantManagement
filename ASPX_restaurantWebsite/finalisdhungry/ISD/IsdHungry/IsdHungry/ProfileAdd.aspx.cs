using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class ProfileAdd : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection("datasource= localhost; username=root; password=; database=isddb");
    string userid;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Label9.Text = "null";
        Label9.Text = Request.QueryString["userId"];
        userid = Request.QueryString["userId"].ToString();
        Session["userId"] = userid;
    }

    protected void uploadBttn_Click(object sender, EventArgs e)
    {
        string resname = resnameText.Text;
        string address = addText.Text;
        string location = LocationDropDown.SelectedItem.Text;

        if(resname.Equals(""))
        {
            Label3.Text = "Name is required";
        }

        if (resname.Equals(""))
        {
            Label5.Text = "Address is required";
        }

        if (!FileUpload1.HasFile)
        {
            Label8.Text = "please upload a validfile";
        }

        else
        {

           MySqlDataAdapter da;
            DataSet ds;
            MySqlCommandBuilder builder;

            string ConnectString = "datasource= localhost; username=root; password=; database=isddb";
            MySqlConnection DBconnect = new MySqlConnection(ConnectString);
            DBconnect.Open();

            string sqler = "select * from restbl where resname LIKE '" + resname + "' and location = '" + location +"'";
            da = new MySqlDataAdapter(sqler, ConnectString);
            ds = new DataSet();
            da.Fill(ds);
            builder = new MySqlCommandBuilder(da);
            int count = ds.Tables[0].Rows.Count ;

            if (count > 0)
            {
                Label10.Text = " sorry already exsists";
                DBconnect.Close();

                resnameText.Text = "";
                addText.Text = "";
            }

            else
            {
                string sqling = "select * from restbl";
                da = new MySqlDataAdapter(sqling, ConnectString);
                ds = new DataSet();
                da.Fill(ds);
                builder = new MySqlCommandBuilder(da);
                int counting = ds.Tables[0].Rows.Count + 1;
                string index = counting.ToString();
                string userindex = userid;

                string path;
                if (FileUpload1.HasFile)
                    FileUpload1.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload1.FileName));
                path = "img/" + Path.GetFileName(FileUpload1.FileName);
                //string insertQuery = "insert into inag values ('" + index + "','" + path + "')";
                //MySqlCommand cmd = new MySqlCommand(insertQuery, con);


                MySqlCommand createCmd = DBconnect.CreateCommand();
                createCmd.CommandType = CommandType.Text;
                createCmd.CommandText = "insert into restbl values('" + userindex + "','" + index + "','" + resname + "','" + address + "','" + location + "','" + path + "')";
                //createCmd.ExecuteNonQuery();

                if (createCmd.ExecuteNonQuery() == 1)
                {
                    Label10.Text = "inserted";
                    Response.Redirect("~/Home.aspx?userId=" + userid + "&resName=" + resname);
                }

                else
                {
                    Label10.Text = "not instered";
                }
                DBconnect.Close();
            }
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Succesfully Registred');</script>");

        }
    }
}
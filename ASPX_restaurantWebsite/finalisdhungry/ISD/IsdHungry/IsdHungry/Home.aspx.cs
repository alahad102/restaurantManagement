using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["resName"];
        string userid= Session["userId"].ToString();
        //string userId = Request.QueryString["userId"].ToString();
        //Session["userId"] = userId;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Error.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecretFiles_Secret : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        usernameLbl.Text = User.Identity.Name;
        logoutBtn.Text = "Logout " + User.Identity.Name;
    }
    protected void logoutBtn_Click(object sender, EventArgs e)
    {
        System.Web.Security.FormsAuthentication.SignOut();
        // redirect to the Login request
        Response.Redirect("../adminlogin.aspx?ReturnUrl=" + Server.UrlEncode(Request.Path ));

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
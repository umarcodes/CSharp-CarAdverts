using System;

public partial class SecretFiles_Secret : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {// if there is no session, redirect to the login page
        if (Session["name"] == null)
        {
            Response.Redirect("../login.aspx");
        }
            /* otherwise, username Label should show the username
            and the logout button should say logout followed by the username
             e.g. if the username is "Umar", the logout button should say "Logout Umar" */ 
        else
        {
            usernameLbl.Text = User.Identity.Name;
            logoutBtn.Text = "Logout " + User.Identity.Name;
        }
    }
    
    protected void logoutBtn_Click(object sender, EventArgs e)
    {/* if the user clicks the logout button, destroy the session */
        Session.Abandon();
        /* End the Authentication that began when the user logged in */
        System.Web.Security.FormsAuthentication.SignOut();
        // redirect to the Login page
        Response.Redirect("../login.aspx");
    }
}
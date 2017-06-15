using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        
         if   (System.Web.Security.FormsAuthentication.Authenticate(UsernameTB.Text, PasswordTB.Text))
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(UsernameTB.Text, false);
        else
            failLbl.Text = "Invalid Username/Password";
        
    }
}
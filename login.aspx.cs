using System;
using System.Web.UI;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void loginBtn_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            

            UsersTableAdapters.UsersTableAdapter pass = new UsersTableAdapters.UsersTableAdapter();
            Users.UsersDataTable passtable = pass.GetData();
            foreach (System.Data.DataRow row in passtable.Rows)
                if (UsernameTB.Text == System.Convert.ToString(row["username"]) &&
                    PasswordTB.Text == System.Convert.ToString(row["password"]))
                {//create a session from the username textbox
                    Session["name"] = UsernameTB.Text;
                    Response.Cookies["name"].Value = UsernameTB.Text;
                    Response.Cookies["userinfo"]["lastvisit"] = DateTime.Now.ToString();
                    Response.Cookies["userinfo"].Expires = DateTime.Now.AddDays(5);
                FormsAuthentication.RedirectFromLoginPage(UsernameTB.Text, false);}
                    
        
            
        }
    }
}
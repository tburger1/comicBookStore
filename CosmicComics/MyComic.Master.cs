using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CosmicComics
{
    public partial class MyComic : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Changes the text of the labels
            if (!IsPostBack)
            {
                if (Session["Username"] == null)
                {
                    lblCurrentUser.Text = "";
                    lbtnLogin.Text = "<i class=\"fa fa-fw fa-user\"></i>" + "Login";
                }

                else
                {
                    lblCurrentUser.Text = "Welcome " + Session["Username"].ToString();
                    lbtnLogin.Text = "<i class=\"fa fa-fw fa-user\"></i>" + "Logout";
                }
            }
        }

        protected void lbtnLogin_Click(object sender, EventArgs e)
        {
            //Redirects the user depending on login status
            if (lbtnLogin.Text == "<i class=\"fa fa-fw fa-user\"></i>" + "Login")
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }

            else
            {
                Session.Abandon();
                Response.Redirect("Home.aspx");
            }
        }

        protected void lbtnLogin_Click1(object sender, EventArgs e)
        {

        }
    }
}
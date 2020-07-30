using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CosmicComics
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //UserID and Password validation
            try
            {
                if (Session["Username"].ToString() == txtUserID.Text && Session["Password"].ToString() == txtPassword.Text)
                {
                    Response.Redirect("Home.aspx");
                }

                else
                {
                    lblMessage.Visible = true;
                }
            }
            catch
            {
                lblMessage.Visible = true;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CosmicComics
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Sets the current sessions login information
            Session["Username"] = txtUserID.Text;
            Session["Password"] = txtPassword.Text;
            Response.Redirect("Login.aspx");
        }
    }
}
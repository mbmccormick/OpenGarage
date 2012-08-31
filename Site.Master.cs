using OpenGarage.Common;
using OpenGarage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenGarage
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            User user = SecurityProvider.Login(this.txtEmailAddress.Text, this.txtPassword.Text);

            if (user != null)
            {
                Session["CurrentUser"] = user;

                // redirect to dashboard
            }
            else
            {
                Response.Redirect("~/Account/SignIn.aspx?result=failed");
            }
        }
    }
}
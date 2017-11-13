using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo_Native_PBI_Embedded.Account
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            if (_validaUser())
            {
                _entrar();
            }
        }

        private void _entrar()
        {
            if (String.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
            {
                FormsAuthentication.SetAuthCookie(txtUsr.Text, false);
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsr.Text, false);
            }
        }

        private bool _validaUser()
        {
            return txtUsr.Text == "demo" && txtpass.Text == "12345";
        }
    }
}
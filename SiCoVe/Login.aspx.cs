using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;


namespace SiCoVe
{
    public partial class Login : System.Web.UI.Page
    {
        sicoveEntities sicove = new sicoveEntities();
        usuario usu = new usuario();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblMensaje.Visible = false;
            if (!VerificarLogin())
            {
                lblMensaje.Visible = true;
            }
            else
            {
                lblMensaje.Visible = false;




                FormsAuthentication.SetAuthCookie(usu.id.ToString(), false);
                Session["Usuario"] = usu;

              
                Response.Redirect("~/Index", false);
                Context.ApplicationInstance.CompleteRequest();
              

            }
        }

        private bool VerificarLogin()
        {
            try
            {
                string mail = txtEmail.Text;
                string pass = txtPass.Text;
                var user = (from u in sicove.usuarios where u.contraseña == pass && u.email == mail select u).FirstOrDefault();

                if (user != null)
                {
                    usu = user;

                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }


        }
    }
}
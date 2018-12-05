using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiCoVe
{
    public partial class FormularioContacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviarFormulario_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                try
                {
                    bool result = EnviarCorreo();

                    //if (result)
                    //    Response.Redirect("~/Login.aspx", false);

                    //Response.Redirect("~/Login.aspx", false);
                }
                catch (System.Net.Mail.SmtpException msj)
                {
                    Response.Write(msj.Message);
                    //Aquí gestionamos los errores al intentar enviar el correo
                    // return false;
                }
            }
        }

        public bool EnviarCorreo()
        {
            bool result = true;

            try
            {
                /*-------------------------MENSAJE DE CORREO----------------------*/

                //Creamos un nuevo Objeto de mensaje
                System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

                //Direccion de correo electronico a la que queremos enviar el mensaje
                mmsg.To.Add("sicoveunlam@outlook.com");

                //Asunto
                mmsg.Subject = "Formulario de contacto";
                mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

                //Cuerpo del Mensaje
                string body = txtDetalle.Text;

                mmsg.Body = body;
                mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML

                //Correo electronico desde la que enviamos el mensaje
                mmsg.From = new System.Net.Mail.MailAddress("sicoveunlam@outlook.com");

                /*-------------------------CLIENTE DE CORREO----------------------*/

                //Creamos un objeto de cliente de correo
                System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

                //Hay que crear las credenciales del correo emisor
                cliente.Credentials = new System.Net.NetworkCredential("sicoveunlam@outlook.com", "fantasma1");

                //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail

                cliente.Port = 587;
                cliente.EnableSsl = true;
                cliente.Host = "smtp-mail.outlook.com"; //"smtp.live.com";// "smtp-mail.outlook.com";
                                                        //"smtp.live.com"

                /*-------------------------ENVIO DE CORREO----------------------*/

                //Enviamos el mensaje      
                cliente.Send(mmsg);
                cliente.Dispose();

                lblMensaje.Text = "Formulario enviado con exito.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$( document ).ready(function() { $('#myModal').modal('show');});", true);
                CleanControl(this.Controls);
            }
            catch (Exception ex)
            {
                result = false;
                LblError.Text = Convert.ToString(ex);
            }

            return result;
        }

        public void CleanControl(ControlCollection controles)
        {
            foreach (Control control in controles)
            {
                if (control is TextBox)
                    ((TextBox)control).Text = string.Empty;
                else if (control is DropDownList)
                    ((DropDownList)control).ClearSelection();
                else if (control is RadioButtonList)
                    ((RadioButtonList)control).ClearSelection();
                else if (control is CheckBoxList)
                    ((CheckBoxList)control).ClearSelection();
                else if (control is RadioButton)
                    ((RadioButton)control).Checked = false;
                else if (control is CheckBox)
                    ((CheckBox)control).Checked = false;
                else if (control.HasControls())
                    //Esta linea detécta un Control que contenga otros Controles
                    //Así ningún control se quedará sin ser limpiado.
                    CleanControl(control.Controls);
            }
        }
    }
}
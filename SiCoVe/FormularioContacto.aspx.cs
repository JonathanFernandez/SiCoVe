﻿using System;
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
            /*-------------------------MENSAJE DE CORREO----------------------*/

            //Creamos un nuevo Objeto de mensaje
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add("sicoveunlam@outlook.com");
            //mmsg.To.Add("jonathan.fernandez.ex@pirelli.com");
            //mmsg.To.Add("walter.santucho.it@gmail.com ");
            //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

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

            // cliente.Host = "smtp.gmail.com"; //Para Gmail "smtp.gmail.com";


            /*-------------------------ENVIO DE CORREO----------------------*/

            try
            {
                //Enviamos el mensaje      
                cliente.Send(mmsg);
                cliente.Dispose();
                lblMensaje.Text = "Formulario enviado con exito.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$( document ).ready(function() { $('#myModal').modal('show');});", true);
                CleanControl(this.Controls);

            }
            catch (System.Net.Mail.SmtpException msj)
            {
                Response.Write(msj.Message);
                //Aquí gestionamos los errores al intentar enviar el correo
                // return false;
            }
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataBaseSiCoVe;
using System.Net.Mail;

namespace SiCoVe
{
    public partial class SolicitarModificacionDatos : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void EnviarMail(string email, string email_asunto, string email_cuerpo, string FileUpload1, string FileUpload2, string FileUpload3, string FileUpload4)
        {
            /*-------------------------MENSAJE DE CORREO----------------------*/

            //Creamos un nuevo Objeto de mensaje
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add(email);
            //mmsg.To.Add("jonathan.fernandez.ex@pirelli.com");
            //mmsg.To.Add("walter.santucho.it@gmail.com ");
            //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

            //Asunto
            mmsg.Subject = email_asunto;
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;


            //Cuerpo del Mensaje


            string body = email_cuerpo;

            mmsg.Body = body;
            mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML

            mmsg.Attachments.Add(new Attachment(FileUpload1));
            mmsg.Attachments.Add(new Attachment(FileUpload2));
            mmsg.Attachments.Add(new Attachment(FileUpload3));
            mmsg.Attachments.Add(new Attachment(FileUpload4));


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

            }
            catch (System.Net.Mail.SmtpException msj)
            {
                Response.Write(msj.Message);
                //Aquí gestionamos los errores al intentar enviar el correo
                // return false;
            }
        }

        protected void btnRegistrarACNC_Click(object sender, EventArgs e)
        {


            var email = UserSession.email;
            var email_asunto = "Modificacion de datos de usuario";
            var email_cuerpo = txtObservaciones.Text;
            var FileUploads1 = Convert.ToString(FileUpload1.FileContent);
            var FileUploads2 = Convert.ToString(FileUpload1.FileContent);
            var FileUploads3 = Convert.ToString(FileUpload1.FileContent);
            var FileUploads4 = Convert.ToString(FileUpload1.FileContent);

            EnviarMail(email, email_asunto, email_cuerpo, FileUploads1, FileUploads2, FileUploads3, FileUploads4);
        }
    }
}
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

        private void EnviarMail(string email, string email_asunto, string email_cuerpo, string fotoDNI, string fotoCedula, string fotoSeguro, string fotoLicencia)
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
            mmsg.Subject = email_asunto;
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;


            //Cuerpo del Mensaje


            string body = email_cuerpo;

            mmsg.Body = body;
            mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML
            if (!string.IsNullOrEmpty(fotoDNI))
                mmsg.Attachments.Add(new Attachment(fotoDNI));
            if (!string.IsNullOrEmpty(fotoCedula))
                mmsg.Attachments.Add(new Attachment(fotoCedula));
            if (!string.IsNullOrEmpty(fotoSeguro))
                mmsg.Attachments.Add(new Attachment(fotoSeguro));
            if (!string.IsNullOrEmpty(fotoLicencia))
                mmsg.Attachments.Add(new Attachment(fotoLicencia));


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
            var fotoDNI = "";
            var fotoCedula = "";
            var fotoSeguro = "";
            var fotoLicencia = "";

            if (!string.IsNullOrEmpty(FileUploadDNI.FileName))
            {
                FileUploadDNI.SaveAs(Server.MapPath("FotosDenuncias//" + FileUploadDNI.FileName));
                fotoDNI = Server.MapPath("FotosDenuncias//" + FileUploadDNI.FileName);

            }
           
            if (!string.IsNullOrEmpty(FileUploadLIC.FileName))
            {
                FileUploadLIC.SaveAs(Server.MapPath("FotosDenuncias//" + FileUploadLIC.FileName));
                fotoLicencia = Server.MapPath("FotosDenuncias//" + FileUploadLIC.FileName);

            }

            //if (!string.IsNullOrEmpty(FileUploadCedula.FileName))
            //{
            //    FileUploadCedula.SaveAs(Server.MapPath("FotosDenuncias//" + FileUploadCedula.FileName));
            //    fotoCedula = Server.MapPath("FotosDenuncias//" + FileUploadCedula.FileName);

            //}

            //if (!string.IsNullOrEmpty(FileUploadSeguro.FileName))
            //{
            //    FileUploadSeguro.SaveAs(Server.MapPath("FotosDenuncias//" + FileUploadSeguro.FileName));
            //    fotoSeguro = Server.MapPath("FotosDenuncias//" + FileUploadSeguro.FileName);

            //}


            EnviarMail(email, email_asunto, email_cuerpo, fotoDNI, fotoCedula, fotoSeguro, fotoLicencia);
        }
    }
}
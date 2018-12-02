using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class RealizarDenuncia : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               CargarLocalidades();
            }
        }
        private void CargarLocalidades()
        {
            var loc = sicove.localidads.ToList();

            ddlLocalidad.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));

            foreach (localidad p in loc)
            {
                ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                ddlLocalidad.Items.Add(item);

            }

            ddlLocalidad.SelectedIndex = 0;
        }

        protected void btnGenerarDenuncia_Click(object sender, EventArgs e)
        {
         try
           {
            denuncia den = new denuncia();
            den.usuario_id = UserSession.id;
            den.estado_id = 1;
            den.dominio = txtPatente.Text;

            if (!string.IsNullOrEmpty(FileUploadFoto.FileName))
            {   
                FileUploadFoto.SaveAs(Server.MapPath("FotosDenuncias//" + FileUploadFoto.FileName));

                imgFoto.ImageUrl = "FotosDenuncias/" + FileUploadFoto.FileName;
                den.ruta_adjunto = Server.MapPath("FotosDenuncias//" + FileUploadFoto.FileName);

            }
            den.fecha_hora = Convert.ToDateTime(txtFecha.Text);
            den.observaciones = txtDetalleDenuncia.Text;
            den.localidad_id = Convert.ToInt32(ddlLocalidad.SelectedValue);

            sicove.denuncias.Add(den);

            sicove.SaveChanges();

            int loc = Convert.ToInt32(ddlLocalidad.SelectedValue);


            den = (from d in sicove.denuncias
                   where
                   d.dominio == txtPatente.Text &&
                   d.usuario_id == UserSession.id &&
                   d.estado_id == 1 &&
                   d.localidad_id == loc
                   orderby d.id descending
                   select d

                   ).FirstOrDefault();


            var mail = sicove.SP_GENERAR_EMAIL_DENUNCIA(den.id).FirstOrDefault();

                EnviarMail(mail.email, mail.email_asunto, mail.email_cuerpo , mail.ruta_adjunto);
                lblMensaje.Text = "Denuncia realizada con exito.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$( document ).ready(function() { $('#myModal').modal('show');});", true);

            }
            catch (Exception ex)
          {
                lblMensaje.Text = "No se pudo registrar la denuncia.";
                LblError.Text = "No se pudo registrar la denuncia, verifique los datos ingresados.";
                //LblError.Text = Convert.ToString(ex);
          }
        }

        private void EnviarMail(string email, string email_asunto, string email_cuerpo, string ruta_adjunto)
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

            mmsg.Attachments.Add(new Attachment(ruta_adjunto));


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
    }
}
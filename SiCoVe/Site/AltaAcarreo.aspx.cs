using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class AltaAcarreo : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["dominio"]))
                    txtPatente.Text = Request.QueryString["dominio"];
                CargarPlaya();
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

        

        private void CargarPlaya()
        {
            var playa = sicove.playa_acarreo.ToList();

            ddlPlaya.Items.Insert(0, new ListItem("Seleccione Playa...", "0"));

            foreach (playa_acarreo p in playa)
            {
                ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                ddlPlaya.Items.Add(item);

            }

            ddlPlaya.SelectedIndex = 0;
            //var playa= sicove.playa_acarreo.ToList();

            //ddlPlaya.DataTextField = "descripcion";
            //ddlPlaya.DataValueField = "id";
            //ddlPlaya.DataSource = playa;
            //ddlPlaya.DataBind();
        }

        protected void btnGuardarAcarreo_Click(object sender, EventArgs e)
        {
            string dominio = txtPatente.Text;
            remolque remol = new remolque();
            remol.detalle_infraccion = txtDetalleInfraccion.Text;
            remol.dominio = dominio;
            remol.fecha_hora = DateTime.Now;
            remol.playa_acarreo_id = Convert.ToInt32(ddlPlaya.SelectedValue);
            remol.localidad_id = Convert.ToInt32(ddlLocalidad.SelectedValue);

            var auto = (from au in sicove.vehiculoes where au.dominio == dominio select au).FirstOrDefault();

            
            if (auto != null)
                remol.vehiculo_id = auto.id;
            //remol.personal_remolque_id == UserSession.id
            //else
            //    remol.vehiculo_id

            var personal = (from r in sicove.personal_remolque where r.usuario_id == UserSession.id select r).FirstOrDefault();
            remol.personal_remolque_id = personal.id;


            sicove.remolques.Add(remol);

            sicove.SaveChanges();


            if (auto != null)
            {
                remol = (from r in sicove.remolques where r.dominio == auto.dominio orderby r.fecha_hora descending select r).FirstOrDefault();

                var mail = sicove.SP_GENERAR_EMAIL_ACARREO(auto.dominio, remol.id).FirstOrDefault();
                if(mail != null)
                    EnviarMail(mail.email, mail.email_asunto, mail.email_cuerpo);
            }





        }

        private void EnviarMail(string email, string email_asunto, string email_cuerpo)
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

        
            }
            catch (System.Net.Mail.SmtpException msj)
            {
                Response.Write(msj.Message);
                //Aquí gestionamos los errores al intentar enviar el correo
               // return false;
            }
        }

        public bool EnviarCorreo(string mail)
        {
            /*-------------------------MENSAJE DE CORREO----------------------*/

            //Creamos un nuevo Objeto de mensaje
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add(mail);
            //mmsg.To.Add("jonathan.fernandez.ex@pirelli.com");
            //mmsg.To.Add("walter.santucho.it@gmail.com ");
            //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

            //Asunto
            mmsg.Subject = "Reestrabler contraseña PIRELLI";
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;


            //Cuerpo del Mensaje


            string body = "Solicitud de Contraseña, ingrese al siguiente <a href=\"http://localhost:58935/ReestablecerPass.aspx?mail=" + mail + "\">link</a>";
            //"Solicitud de Contraseña, ingrese al siguiente link <a href='localhost:58935/ReestablecerPass.aspx?mail='" + mail + ">link</a>";
            mmsg.Body = body;
            mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML

            //Correo electronico desde la que enviamos el mensaje
            mmsg.From = new System.Net.Mail.MailAddress("jonathan_28_05@hotmail.com");


            /*-------------------------CLIENTE DE CORREO----------------------*/

            //Creamos un objeto de cliente de correo
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

            //Hay que crear las credenciales del correo emisor
            cliente.Credentials = new System.Net.NetworkCredential("jonathan_28_05@hotmail.com", "pass");

            //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail

            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.live.com";// "smtp-mail.outlook.com";
                                           //"smtp.live.com"

            // cliente.Host = "smtp.gmail.com"; //Para Gmail "smtp.gmail.com";


            /*-------------------------ENVIO DE CORREO----------------------*/

            try
            {
                //Enviamos el mensaje      
                cliente.Send(mmsg);

                return true;
            }
            catch (System.Net.Mail.SmtpException)
            {
                //Aquí gestionamos los errores al intentar enviar el correo
                return false;
            }
        }
    }
}
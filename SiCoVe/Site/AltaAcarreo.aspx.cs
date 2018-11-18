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
            }
        }

        private void CargarPlaya()
        {
            var localidad = sicove.localidads.ToList();

            ddlPlaya.DataTextField = "descripcion";
            ddlPlaya.DataValueField = "id";
            ddlPlaya.DataSource = localidad;
            ddlPlaya.DataBind();
        }

        protected void btnGuardarAcarreo_Click(object sender, EventArgs e)
        {
            string dominio = txtPatente.Text;
            remolque remol = new remolque();
            remol.detalle_infraccion = txtDetalleInfraccion.Text;
            remol.dominio = dominio;
            remol.fecha_hora = DateTime.Now;
            remol.playa_acarreo_id = Convert.ToInt32(ddlPlaya.SelectedValue);

            var auto = (from au in sicove.vehiculoes where au.dominio == dominio select au).FirstOrDefault();

            if (auto != null)
                remol.vehiculo_id = auto.id;
            remol.personal_remolque_id == UserSession.id



        }
    }
}
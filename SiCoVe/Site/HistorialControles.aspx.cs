using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class HistorialControles : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CargarLocalidades();
                listadoControles();
            }

        }

        public void listadoControles()
        {
            var agente = (from a in sicove.agente_transito where a.usuario_id == UserSession.id select a.id).FirstOrDefault();
            GvHistorialControles.DataSource = sicove.SP_LISTADO_CONTROLES(Convert.ToInt32(ddlLocalidad.SelectedValue), Convert.ToInt32(agente)).ToList();
            GvHistorialControles.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            listadoControles();
        }
        private void CargarLocalidades()
        {
            var loc = sicove.localidads.ToList();

            //ddlLocalidad.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));

            foreach (localidad p in loc)
            {
                ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                ddlLocalidad.Items.Add(item);

            }

            //ddlLocalidad.SelectedIndex = 0;
        }

        protected void ddlLocalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            listadoControles();

        }
    }
}
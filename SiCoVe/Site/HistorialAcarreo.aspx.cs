using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class HistorialAcarreo : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                
                CargarLocalidades();
                listadoAcarreo();
            }
                
        }

        public void listadoAcarreo()
        {
            var acarreador = (from r in sicove.personal_remolque where r.usuario_id == UserSession.id select r.id).FirstOrDefault();
              
            GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO(Convert.ToInt32(ddlLocalidad.SelectedValue), Convert.ToInt32(acarreador)).ToList();
            // GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO_X_REMOLCADOR(UserSession.id).ToList();
            GvHistorialAcarreo.DataBind();
                       
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO(Convert.ToInt32(ddlLocalidad.SelectedValue)).ToList();
            //GvHistorialAcarreo.DataBind();
            listadoAcarreo();

        }

        protected void ddlLocalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            listadoAcarreo();

        }
    }
}
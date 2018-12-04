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
                listadoAcarreo();
                CargarLocalidades();
            }
                
        }

        public void listadoAcarreo()
        {
            GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO_X_REMOLCADOR(UserSession.id).ToList();
            GvHistorialAcarreo.DataBind();
                       
                //GvHistorialAcarreo.DataSource = 
                //(from r in sicove.remolques
                // join pr in sicove.personal_remolque on r.personal_remolque_id = pr.id
                //     join p in sicove.playa_acarreo on r.playa_acarreo_id = p.id
                //     join v in sicove.vehiculoes on r.vehiculo_id = v.id
                //     join l in sicove.localidads on r.localidad_id = l.id

                // where pr.usuario_id == UserSession.id
                // select new
                // {
                //     REMOLCADOR = pr.nro_legajo,
                //     PLAYA = p.descripcion,
                //     FECHA = r.fecha_hora,
                //     UBICACION = r.ubicacion,
                //     DETALLE_INFRACCION = r.detalle_infraccion,
                //     DOMINIO = r.dominio,
                //     LOCALIDAD = l.descripcion
                // }).ToList();
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
    //        if(UserSession.perfil_usuario_id != 1)
                GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO( Convert.ToInt32(ddlLocalidad.SelectedValue)).ToList();
//            else
  //              GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO(null, null).ToList();
            GvHistorialAcarreo.DataBind();

        }

        /*protected void ddlLocalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            listadoAcarreo();

        }*/
    }
}
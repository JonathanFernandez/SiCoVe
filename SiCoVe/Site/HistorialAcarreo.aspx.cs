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
            if (!Page.IsPostBack)
                listadoAcarreo();
        }

        public void listadoAcarreo()
        {
            GvHistorialAcarreo.DataSource =
                (from r in sicove.remolques
                     join pr in sicove.personal_remolque on r.personal_remolque_id == pr.id
                     join p in sicove.playa_acarreo on r.playa_acarreo_id == p.id
                     join v in sicove.vehiculoes on r.vehiculo_id == v.id
                     join l in sicove.localidads on r.localidad_id == l.id
                 where pr.usuario_id == UserSession.id
                 select new
                 {
                     REMOLCADOR = pr.nro_legajo,
                     PLAYA = p.descripcion,
                     FECHA = r.fecha_hora,
                     UBICACION = r.ubicacion,
                     DETALLE_INFRACCION = r.detalle_infraccion,
                     DOMINIO = r.dominio,
                     LOCALIDAD = l.descripcion
                 }).ToList();


        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if(UserSession.perfil_usuario_id != 1)
                GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO(txtLocalidad.Text, txtDominio.Text).ToList();
            else
                GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO(null, null).ToList();
            GvHistorialAcarreo.DataBind();

        }
    }
}
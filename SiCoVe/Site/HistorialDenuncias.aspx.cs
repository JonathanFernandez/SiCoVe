using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;
namespace SiCoVe.Site
{
    public partial class HistorialDenuncias : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CargarLocalidades();
                listadoDenuncias();

            }
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

        public void listadoDenuncias()
        {

            GvHistorialDenuncias.DataSource = sicove.SP_LISTADO_DENUNCIA(Convert.ToInt32(ddlLocalidad.SelectedValue)).ToList();

            GvHistorialDenuncias.DataBind();
        }

        protected void GvHistorialDenuncias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            int idDenuncia = Convert.ToInt32(GvHistorialDenuncias.Rows[rowIndex].Cells[0].Text);

            var denuncia = (from d in sicove.denuncias where d.id == idDenuncia select d).FirstOrDefault();

            switch (e.CommandName)
            {

                case "Confirmar":
                    denuncia.estado_id = 2; 
                    break;
                case "Anular":
                    denuncia.estado_id = 3;
                    break;
              
            }

            sicove.SaveChanges();
            listadoDenuncias();
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            GvHistorialDenuncias.DataSource = sicove.SP_LISTADO_DENUNCIA(Convert.ToInt32(ddlLocalidad.SelectedValue)).ToList();

            GvHistorialDenuncias.DataBind();
        }
        protected void ddlLocalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            listadoDenuncias();

        }
    }
}
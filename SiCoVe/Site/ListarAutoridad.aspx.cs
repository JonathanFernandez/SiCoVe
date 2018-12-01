using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public partial class ListarAutoridad : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                ListadoAutoridad();
            }
        }

        protected void ListadoAutoridad() {
            GvAutoridad.DataSource = sicove.SP_LISTADO_AGENTE_TRANSITO(null, null, null).ToList();
            GvAutoridad.DataBind();
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            int legajo = 0; 
            if(txtLegajo.Text != "")
                legajo = Convert.ToInt32(txtLegajo.Text);
            

            GvAutoridad.DataSource = sicove.SP_LISTADO_AGENTE_TRANSITO(legajo, txtApellido.Text, txtNombre.Text).ToList();

            GvAutoridad.DataBind();
        }

        protected void GvAutoridad_edit(object sender, GridViewEditEventArgs e)
        {
            int id = (int)GvAutoridad.DataKeys[e.NewEditIndex].Values["id"];

            Session["id"] = id;

            Response.Redirect("ModificarAutoridad.aspx");
        }

        protected void GvAutoridad_delete(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GvAutoridad.DataKeys[e.RowIndex].Values["id"];

            persona per = (from p in sicove.personas where p.id == id select p).FirstOrDefault();
            //borro los usuarios relacionados a la persona
            foreach (var u in sicove.usuarios.Where(u => u.persona_id == per.id))
            {
                //borro los agentes de transito relacionados a la persona
                foreach (var a in sicove.agente_transito.Where(a => a.usuario_id == u.id))
                {
                    sicove.agente_transito.Remove(a);
                }
                sicove.usuarios.Remove(u);

            }
           
            sicove.personas.Remove(per);
            sicove.SaveChanges();
            ListadoAutoridad();
        }

        protected void GvAutoridad_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GvAutoridad.DataKeys[index].Value);

            }
        }

    }
}
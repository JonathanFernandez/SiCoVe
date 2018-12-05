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
    public partial class ListarRemolque : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                ListadoRemolque();
            }
        }

        protected void ListadoRemolque(){
            GvRemolque.DataSource = sicove.SP_LISTADO_PERSONAL_REMOLQUE(null, null, null).ToList();
            GvRemolque.DataBind();
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            int legajo = 0;
            if (txtLegajo.Text == "")
                ListadoRemolque();
            else { legajo = Convert.ToInt32(txtLegajo.Text); 
                
            

            GvRemolque.DataSource = sicove.SP_LISTADO_PERSONAL_REMOLQUE(legajo, txtApellido.Text, txtNombre.Text).ToList();
            

            GvRemolque.DataBind();
            }

        }
        protected void GvRemolque_edit(object sender, GridViewEditEventArgs e)
        {
            int id = (int)GvRemolque.DataKeys[e.NewEditIndex].Values["id"];

            Session["id"] = id;

            Response.Redirect("ModificarRemolque.aspx");
        }

        protected void GvRemolque_delete(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GvRemolque.DataKeys[e.RowIndex].Values["id"];

            persona per = (from p in sicove.personas where p.id == id select p).FirstOrDefault();
            //borro los usuarios relacionados a la persona
            foreach (var u in sicove.usuarios.Where(u => u.persona_id == per.id))
            {
                //borro los agentes de transito relacionados a la persona
                foreach (var a in sicove.personal_remolque.Where(a => a.usuario_id == u.id))
                {
                    sicove.personal_remolque.Remove(a);
                }
                sicove.usuarios.Remove(u);

            }

            sicove.personas.Remove(per);
            sicove.SaveChanges();
            ListadoRemolque();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('Usuario dado de baja con éxito');", true);
        }

        protected void GvRemolque_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GvRemolque.DataKeys[index].Value);

            }
        }
}
}
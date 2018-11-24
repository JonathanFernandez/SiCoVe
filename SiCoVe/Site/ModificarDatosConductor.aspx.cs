using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class ModificarDatosConductor : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                ListadoDatosConductor();
            }
        }
        protected void ListadoDatosConductor()
        {
            GvConductor.DataSource = (from p in sicove.personas
                                      join s in sicove.sexoes on p.sexo_id equals s.id
                                      join n in sicove.nacionalidads on p.nacionalidad_id equals n.id
                                      where p.flag_conductor == true
                                      select new
                                      {
                                          ID = p.id,
                                          NOMBRE = p.nombre,
                                          APELLIDO = p.apellido,
                                          DNI = p.dni,
                                          SEXO = s.descripcion,
                                          FECHA_NACIMIENTO = p.fecha_nacimiento,
                                          NACIONALIDAD = n.descripcion,
                                          DOMICILIO = p.domicilio
                                      }).ToList();
            GvConductor.DataBind();
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
        protected void GvConductor_edit(object sender, GridViewEditEventArgs e)
        {
            int id = (int)GvConductor.DataKeys[e.NewEditIndex].Values["id"];

            Session["id"] = id;

            Response.Redirect("ModificarConductor.aspx");
        }
        protected void GvConductor_delete(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GvConductor.DataKeys[e.RowIndex].Values["id"];

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

            ListadoDatosConductor();
        }
        protected void GvConductor_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GvConductor.DataKeys[index].Value);

            }
        }

    }
}

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
    public partial class ListarConductor : SiCoVeMaster
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
                                      join u in sicove.usuarios on p.id equals u.persona_id
                                      where u.perfil_usuario_id == 2
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

        protected void GvConductor_edit(object sender, GridViewEditEventArgs e)
        {
            int id = (int)GvConductor.DataKeys[e.NewEditIndex].Values["id"];

            Session["id"] = id;

            Response.Redirect("ModificarDatosConductor.aspx");
        }

        protected void GvConductor_delete(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GvConductor.DataKeys[e.RowIndex].Values["id"];
            

            persona per = (from p in sicove.personas where p.id == id select p).FirstOrDefault();
            //vehiculo vec = (from v in sicove.vehiculoes where v.id == id select v).FirstOrDefault();
            //borro los usuarios relacionados a la persona
            foreach (var u in sicove.usuarios.Where(u => u.persona_id == per.id))
            {
                sicove.usuarios.Remove(u);
            }
            //borro las cedulas relacionados a la persona
            foreach (var a in sicove.cedulas.Where(a => a.persona_id == per.id))
            {
                sicove.cedulas.Remove(a);
            }
            //borro las licencias relacionados a la persona
            foreach (var l in sicove.licencias.Where(l => l.persona_id == per.id))
            {
                sicove.licencias.Remove(l);
            }
            //foreach (var pl in sicove.polizas.Where(pl => pl.vehiculo_id == vec.id))
            //{
            //    sicove.polizas.Remove(pl);
            //}
            //sicove.vehiculoes.Remove(vec);

            sicove.personas.Remove(per);
            sicove.SaveChanges();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('Usuario dado de baja con éxito');", true);
            ListadoDatosConductor();
        }





        protected void Button1_Click(object sender, EventArgs e)
        {
            int documento = 0;
            if (TxtDocumento.Text == "")
                ListadoDatosConductor();
            else
            {
                documento = Convert.ToInt32(TxtDocumento.Text);



                GvConductor.DataSource = (from p in sicove.personas
                                          join s in sicove.sexoes on p.sexo_id equals s.id
                                          join n in sicove.nacionalidads on p.nacionalidad_id equals n.id
                                          join u in sicove.usuarios on p.id equals u.persona_id
                                          where p.dni == documento
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

        }








    }
}
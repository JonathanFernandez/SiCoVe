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
            //GvConductor.DataSource = (from p in sicove.personas
            //                          join s in sicove.sexoes on p.sexo_id equals s.id
            //                          join n in sicove.nacionalidads on p.nacionalidad_id equals n.id
            //                          where p.flag_conductor == true
            //                          select new
            //                          {
            //                              ID = p.id,
            //                              NOMBRE = p.nombre,
            //                              APELLIDO = p.apellido,
            //                              DNI = p.dni,
            //                              SEXO = s.descripcion,
            //                              FECHA_NACIMIENTO = p.fecha_nacimiento,
            //                              NACIONALIDAD = n.descripcion,
            //                              DOMICILIO = p.domicilio
            //                          }).ToList();
            //GvConductor.DataBind();
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
        protected void GvConductor_edit(object sender, GridViewEditEventArgs e)
        {
            //int id = (int)GvConductor.DataKeys[e.NewEditIndex].Values["id"];

            //Session["id"] = id;

            //Response.Redirect("ModificarConductor.aspx");
        }
        protected void GvConductor_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                int index = Convert.ToInt32(e.CommandArgument);
               // int id = Convert.ToInt32(GvConductor.DataKeys[index].Value);

            }
        }















    }
}
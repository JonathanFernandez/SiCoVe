using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public partial class ModificarAutoridad : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack) {

                CargarCombos();

                var id = 0;
                if (Session["id"] != null)
                    id = Convert.ToInt32(Session["id"].ToString());

                persona per = (from a in sicove.personas where a.id == id select a).FirstOrDefault();
                           
                txtApellido.Text = per.apellido;
                txtNombre.Text = per.nombre;
                txtNumDocumento.Text = Convert.ToString(per.dni);
                ddlSexo.SelectedValue = Convert.ToString(per.sexo_id);
                ddlNacionalidad.SelectedValue = Convert.ToString(per.nacionalidad_id);
                ddlProvincia.SelectedValue = Convert.ToString(per.provincia_id);
                ddlLocalidad.SelectedValue = Convert.ToString(per.localidad_id);
                txtDomicilio.Text = per.domicilio;
                txtPiso.Text = Convert.ToString(per.piso);
                txtDepartamento.Text = per.departamento;
                txtNumPuerta.Text = per.nro_puerta;
                txtFechaNacimiento.Text = Convert.ToString(per.fecha_nacimiento);
                txtLugarNacimiento.Text = per.lugar_nacimiento;
                cckrautoridad.Checked = per.flag_conductor;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).FirstOrDefault();
               
                    txtEMail.Text = usu.email;
                    txtContraseña.Text = usu.contraseña;

                agente_transito at = (from t in sicove.agente_transito where t.usuario_id == usu.id select t).FirstOrDefault();
                
                    txtLegajo.Text = Convert.ToString(at.nro_legajo);
            }

        }

        private void CargarCombos()
        {
            CargarSexo();
            CargarNacionalidad();
            CargarProvincia();
            CargarLocalidad();
        }

        private void CargarSexo()
        {

            var sexo = sicove.sexoes.ToList();

            ddlSexo.DataTextField = "descripcion";
            ddlSexo.DataValueField = "id";
            ddlSexo.DataSource = sexo;
            ddlSexo.DataBind();
        }

        private void CargarNacionalidad()
        {
            var nacionalidades = sicove.nacionalidads.ToList();
            ddlNacionalidad.DataTextField = "descripcion";
            ddlNacionalidad.DataValueField = "id";
            ddlNacionalidad.DataSource = nacionalidades;
            ddlNacionalidad.DataBind();

        }
        private void CargarProvincia()
        {
            var provincia = sicove.provincias.ToList();
            ddlProvincia.DataTextField = "descripcion";
            ddlProvincia.DataValueField = "id";
            ddlProvincia.DataSource = provincia;
            ddlProvincia.DataBind();
        }

        private void CargarLocalidad()
        {
            var localidad = sicove.localidads.ToList();
            ddlLocalidad.DataTextField = "descripcion";
            ddlLocalidad.DataValueField = "id";
            ddlLocalidad.DataSource = localidad;
            ddlLocalidad.DataBind();
        }

        protected void btnRegistrarACNC_Click(object sender, EventArgs e)
        {

        }
    }
}
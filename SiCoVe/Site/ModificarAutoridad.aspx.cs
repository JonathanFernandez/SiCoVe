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
            if (!Page.IsPostBack)
            {
                //CargarCombos();

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
                txtFechaNacimiento.Text = string.Format("{0:dd/MM/yyyy}", per.fecha_nacimiento);
                txtLugarNacimiento.Text = per.lugar_nacimiento;
                cckrautoridad.Checked = per.flag_conductor;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).FirstOrDefault();

                txtEMail.Text = usu.email;
                txtContraseña.Text = usu.contraseña;

                agente_transito at = (from t in sicove.agente_transito where t.usuario_id == usu.id select t).FirstOrDefault();

                txtLegajo.Text = Convert.ToString(at.nro_legajo);

                var Sex = sicove.sexoes.ToList();

                ddlSexo.Items.Insert(0, new ListItem("Seleccione Sexo...", "0"));

                foreach (sexo s in Sex)
                {
                    ListItem item = new ListItem(s.descripcion, Convert.ToString(s.id));

                    ddlSexo.Items.Add(item);
                }

                ddlSexo.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var nac = sicove.nacionalidads.ToList();

                ddlNacionalidad.Items.Insert(0, new ListItem("Seleccione Nacionalidad...", "0"));

                foreach (nacionalidad n in nac)
                {
                    ListItem item = new ListItem(n.descripcion, Convert.ToString(n.id));

                    ddlNacionalidad.Items.Add(item);
                }

                ddlNacionalidad.SelectedIndex = 0;
                /*--------------------------------------------------------------------------------*/
                var pro = sicove.provincias.ToList();

                ddlProvincia.Items.Insert(0, new ListItem("Seleccione Provincia...", "0"));

                foreach (provincia p in pro)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlProvincia.Items.Add(item);
                    //ddlProvinciaDNI.Items.Add(item);
                }

                ddlProvincia.SelectedIndex = 0;
                //ddlProvinciaDNI.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var loc = sicove.localidads.ToList();

                ddlLocalidad.Items.Insert(0, new ListItem("Seleccione Localidad...", "0"));

                foreach (localidad p in loc)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlLocalidad.Items.Add(item);
                }

                ddlLocalidad.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

            }
        }

        //private void CargarCombos()
        //{
        //    CargarSexo();
        //    CargarNacionalidad();
        //    CargarProvincia();
        //    CargarLocalidad();
        //}

        //private void CargarSexo()
        //{
        //    var sexo = sicove.sexoes.ToList();

        //    ddlSexo.DataTextField = "descripcion";
        //    ddlSexo.DataValueField = "id";
        //    ddlSexo.DataSource = sexo;
        //    ddlSexo.DataBind();
        //}

        //private void CargarNacionalidad()
        //{
        //    var nacionalidades = sicove.nacionalidads.ToList();
        //    ddlNacionalidad.DataTextField = "descripcion";
        //    ddlNacionalidad.DataValueField = "id";
        //    ddlNacionalidad.DataSource = nacionalidades;
        //    ddlNacionalidad.DataBind();
        //}

        //private void CargarProvincia()
        //{
        //    var provincia = sicove.provincias.ToList();
        //    ddlProvincia.DataTextField = "descripcion";
        //    ddlProvincia.DataValueField = "id";
        //    ddlProvincia.DataSource = provincia;
        //    ddlProvincia.DataBind();
        //}

        //private void CargarLocalidad()
        //{
        //    var localidad = sicove.localidads.ToList();
        //    ddlLocalidad.DataTextField = "descripcion";
        //    ddlLocalidad.DataValueField = "id";
        //    ddlLocalidad.DataSource = localidad;
        //    ddlLocalidad.DataBind();
        //}

        protected void btnRegistrarACNC_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                var id = 0;

                if (Session["id"] != null)
                    id = Convert.ToInt32(Session["id"].ToString());

                bool result = ActualizarAutoridad(id);

                if (result)
                    Response.Redirect("ListarAutoridad.aspx"); //Response.Redirect("~/Site/ListarRemolque.aspx");
            }
        }

        public bool ActualizarAutoridad(int id)
        {
            bool result = false;

            try
            {
                persona per = (from a in sicove.personas where a.id == id select a).First();

                per.apellido = txtApellido.Text;
                per.nombre = txtNombre.Text;
                per.dni = Convert.ToInt32(txtNumDocumento.Text);
                per.sexo_id = Convert.ToInt32(ddlSexo.SelectedValue);
                per.nacionalidad_id = Convert.ToInt32(ddlNacionalidad.SelectedValue);
                per.provincia_id = Convert.ToInt32(ddlProvincia.SelectedValue);
                ddlLocalidad.SelectedValue = Convert.ToString(per.localidad_id);
                per.domicilio = txtDomicilio.Text;
                per.piso = Convert.ToInt16(txtPiso.Text);
                per.departamento = txtDepartamento.Text;
                per.nro_puerta = txtNumPuerta.Text;
                per.fecha_nacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
                per.lugar_nacimiento = txtLugarNacimiento.Text;
                per.flag_conductor = cckrautoridad.Checked;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).First();

                usu.email = txtEMail.Text;
                usu.contraseña = txtContraseña.Text;

                agente_transito at = (from t in sicove.agente_transito where t.usuario_id == usu.id select t).First();

                at.nro_legajo = Convert.ToInt32(txtLegajo.Text);

                sicove.SaveChanges();

                return result = true;
            }
            catch (Exception ex)
            {
                LblError.Text = "No se pudieron actualizar los datos del agente de transito, verifique los datos ingresados.";
            }

            return result;
        }
    }
}
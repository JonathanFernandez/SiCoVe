using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class AltaRemolque : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //CargarCombos();
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


                //private void CargarCombos()
                //{
                //    CargarSexo();ok
                //    CargarNacionalidad();ok
                //    CargarProvincia();ok
                //    CargarLocalidad();ok
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
            }
        }
        protected void btnRegistrarACNC_Click(object sender, EventArgs e)
        {
            try


            {
                persona per = new persona();
                per.apellido = txtApellido.Text;
                per.nombre = txtNombre.Text;
                per.dni = Convert.ToInt32(txtNumDocumento.Text);
                per.sexo_id = Convert.ToInt32(ddlSexo.SelectedValue);
                per.nacionalidad_id = Convert.ToInt32(ddlNacionalidad.SelectedValue);
                per.provincia_id = Convert.ToInt32(ddlProvincia.SelectedValue);
                per.localidad_id = Convert.ToInt32(ddlLocalidad.SelectedValue);
                per.domicilio = txtDomicilio.Text;
                if (txtPiso.Text != "")
                    per.piso = Convert.ToSByte(txtPiso.Text);
                else
                    per.piso = null;
                per.departamento = txtDepartamento.Text;
                per.nro_puerta = txtNumPuerta.Text;
                per.fecha_nacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
                per.lugar_nacimiento = txtLugarNacimiento.Text;
                per.flag_conductor = cckremolque.Checked;

                sicove.personas.Add(per);

                usuario usu = new usuario();
                usu.persona = per;
                usu.perfil_usuario_id = 4;
                usu.email = txtEMail.Text;
                usu.contraseña = txtContraseña.Text;

                sicove.usuarios.Add(usu);

                personal_remolque perrem = new personal_remolque();
                perrem.usuario = usu;
                perrem.nro_legajo = Convert.ToInt32(txtLegajo.Text);

                sicove.personal_remolque.Add(perrem);


                sicove.SaveChanges();
                lblMensaje.Text = "Usuario dado de alta con éxito.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$( document ).ready(function() { $('#myModal').modal('show');});", true);
                CleanControl(this.Controls);

            }
            catch (Exception ex)
            {
                LblError.Text = "No se pudieron registrar los datos del remolque, verifique los datos ingresados.";
                //LblError.Text = Convert.ToString(ex);
            }
        }
        public void CleanControl(ControlCollection controles)
        {
            foreach (Control control in controles)
            {
                if (control is TextBox)
                    ((TextBox)control).Text = string.Empty;
                else if (control is DropDownList)
                    ((DropDownList)control).ClearSelection();
                else if (control is RadioButtonList)
                    ((RadioButtonList)control).ClearSelection();
                else if (control is CheckBoxList)
                    ((CheckBoxList)control).ClearSelection();
                else if (control is RadioButton)
                    ((RadioButton)control).Checked = false;
                else if (control is CheckBox)
                    ((CheckBox)control).Checked = false;
                else if (control.HasControls())
                    //Esta linea detécta un Control que contenga otros Controles
                    //Así ningún control se quedará sin ser limpiado.
                    CleanControl(control.Controls);
            }
        }
    }
}
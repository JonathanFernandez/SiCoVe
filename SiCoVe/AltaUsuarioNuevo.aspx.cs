using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public partial class AltaUsuarioNuevo : System.Web.UI.Page
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var catl = sicove.categoria_licencia.ToList();

                ddlCategoriaLIC.Items.Insert(0, new ListItem("Seleccione Categoría de Licencia...", "0"));

                foreach (categoria_licencia p in catl)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlCategoriaLIC.Items.Add(item);
                }

                ddlCategoriaLIC.SelectedIndex = 0;


                /*--------------------------------------------------------------------------------*/
                var mar = sicove.marca_vehiculo.ToList();

                ddlMarcaCED.Items.Insert(0, new ListItem("Seleccione Marca...", "0"));

                foreach (marca_vehiculo p in mar)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlMarcaCED.Items.Add(item);
                }

                ddlMarcaCED.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var nac = sicove.nacionalidads.ToList();

                ddlNacionalidadDNI.Items.Insert(0, new ListItem("Seleccione Nacionalidad...", "0"));

                foreach (nacionalidad p in nac)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlNacionalidadDNI.Items.Add(item);
                }

                ddlNacionalidadDNI.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var Sex = sicove.sexoes.ToList();

                ddlSexoDNI.Items.Insert(0, new ListItem("Seleccione Sexo...", "0"));

                foreach (sexo p in Sex)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlSexoDNI.Items.Add(item);
                }

                ddlSexoDNI.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var pro = sicove.provincias.ToList();

                ddlProvinciaDNI.Items.Insert(0, new ListItem("Seleccione Provincia...", "0"));

                foreach (provincia p in pro)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlProvinciaDNI.Items.Add(item);
                }

                ddlProvinciaDNI.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var loc = sicove.localidads.ToList();

                ddlLocalidadDNI.Items.Insert(0, new ListItem("Seleccione Localidad...", "0"));

                foreach (localidad p in loc)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlLocalidadDNI.Items.Add(item);
                }

                ddlLocalidadDNI.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var mun = sicove.municipios.ToList();

                ddlMunicipio.Items.Insert(0, new ListItem("Seleccione municipio...", "0"));

                foreach (municipio p in mun)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlMunicipio.Items.Add(item);
                }

                ddlMunicipio.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var Est = sicove.estado_cedula.ToList();

                ddlEstadoCED.Items.Insert(0, new ListItem("Seleccione Estado...", "0"));

                foreach (estado_cedula c in Est)
                {
                    ListItem item = new ListItem(c.descripcion, Convert.ToString(c.id));

                    ddlEstadoCED.Items.Add(item);
                }

                ddlEstadoCED.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var Tip = sicove.tipo_vehiculo.ToList();

                ddlTipoCED.Items.Insert(0, new ListItem("Seleccione Tipo...", "0"));

                foreach (tipo_vehiculo t in Tip)
                {
                    ListItem item = new ListItem(t.descripcion, Convert.ToString(t.id));

                    ddlTipoCED.Items.Add(item);
                }

                ddlTipoCED.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var Uso = sicove.uso_cedula.ToList();

                ddlUsoCED.Items.Insert(0, new ListItem("Seleccione Uso...", "0"));

                foreach (uso_cedula u in Uso)
                {
                    ListItem item = new ListItem(u.descripcion, Convert.ToString(u.id));

                    ddlUsoCED.Items.Add(item);
                }

                ddlUsoCED.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/
                var Ase = sicove.aseguradoras.ToList();

                ddlAseguradoraSEG.Items.Insert(0, new ListItem("Seleccione Aseguradora...", "0"));

                foreach (aseguradora a in Ase)
                {
                    ListItem item = new ListItem(a.descripcion, Convert.ToString(a.id));

                    ddlAseguradoraSEG.Items.Add(item);
                }

                ddlAseguradoraSEG.SelectedIndex = 0;
            }
        }

        protected void btnRegistrarACNC_Click(object sender, EventArgs e)
        {
            try
            {
                persona per = new persona();
                per.apellido = txtApellidoDNI.Text;
                per.nombre = txtNombreDNI.Text;
                per.dni = Convert.ToInt32(txtDocumentoDNI.Text);
                per.sexo_id = Convert.ToInt32(ddlSexoDNI.SelectedValue);
                per.nacionalidad_id = Convert.ToInt32(ddlNacionalidadDNI.SelectedValue);
                per.provincia_id = Convert.ToInt32(ddlProvinciaDNI.SelectedValue);
                per.localidad_id = Convert.ToInt32(ddlLocalidadDNI.SelectedValue);
                per.domicilio = txtDomicilioDNI.Text;
                if (txtPisoDNI.Text != "")
                    per.piso = Convert.ToSByte(txtPisoDNI.Text);
                else
                    per.piso = null;
                per.nro_puerta = txtPuertaDNI.Text;
                per.departamento = txtDepartamentoDNI.Text;
                per.fecha_nacimiento = Convert.ToDateTime(txtFecNacimientoDNI.Text);
                per.lugar_nacimiento = txtLugarNacimientoDNI.Text;
                per.flag_conductor = cckAutorizado.Checked;

                sicove.personas.Add(per);

                usuario usu = new usuario();
                usu.persona = per;
                usu.perfil_usuario_id = 2;
                usu.email = txtMailACNC.Text;
                usu.contraseña = txtContraseñaACNC.Text;

                sicove.usuarios.Add(usu);

                if (cckAutorizado.Checked == true)
                {
                    licencia lic = new licencia();
                    lic.persona = per;
                    lic.nro_licencia = txtNumLicenciaLIC.Text;
                    lic.categoria_id = Convert.ToInt32(ddlCategoriaLIC.SelectedValue);
                    lic.municipio_id = Convert.ToInt32(ddlMunicipio.SelectedValue);
                    lic.clases = txtClasesLIC.Text;
                    lic.otorgamiento = Convert.ToDateTime(txtFecOtorgamientoLIC.Text);
                    lic.vencimiento = Convert.ToDateTime(txtFecVencimientoLIC.Text);
                    lic.observaciones = txtObservaciones.Text;

                    sicove.licencias.Add(lic);

                    vehiculo ve = new vehiculo();
                    ve.tipo_id = Convert.ToInt32(ddlTipoCED.Text);
                    ve.marca_id = Convert.ToInt32(ddlMarcaCED.Text);
                    ve.modelo = txtModeloCED.Text;
                    ve.año = Convert.ToInt32(txtAnioCED.Text);
                    ve.cilindrada = txtCilindradaCED.Text;
                    ve.motor = txtNumMotorCED.Text;
                    ve.chasis_cuadro = txtChasisCED.Text;
                    ve.dominio = txtDominioCED.Text;

                    sicove.vehiculoes.Add(ve);

                    cedula ced = new cedula();
                    ced.nro_cedula = txtNumCedulaCED.Text;
                    ced.persona = per;
                    ced.uso_id = Convert.ToInt32(ddlUsoCED.SelectedValue);
                    ced.estado_id = Convert.ToInt32(ddlEstadoCED.SelectedValue);
                    ced.vehiculo = ve;
                    ced.vencimiento = Convert.ToDateTime(txtFecVencimientoCED.Text);
                    ced.flag_autorizado = cckAutorizado.Checked;

                    sicove.cedulas.Add(ced);

                    poliza pol = new poliza();
                    pol.nro_poliza = txtPolizaSEG.Text;
                    pol.aseguradora_id = Convert.ToInt32(ddlAseguradoraSEG.SelectedValue);
                    pol.vehiculo = ve;
                    pol.vigencia_desde = Convert.ToDateTime(txtFecDesdeSEG.Text);
                    pol.vigencia_hasta = Convert.ToDateTime(txtFecHastaSEG.Text);

                    sicove.polizas.Add(pol);
                }
                sicove.SaveChanges();
                lblMensaje.Text = "Usuario dado de alta con éxito.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$( document ).ready(function() { $('#myModal').modal('show');});", true);
                CleanControl(this.Controls);
            }
            catch (Exception ex)
            {
                //LblError.Text = "No se pudieron registrar los datos del Usuario, verifique los datos ingresados.";
                LblError.Text = Convert.ToString(ex);
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
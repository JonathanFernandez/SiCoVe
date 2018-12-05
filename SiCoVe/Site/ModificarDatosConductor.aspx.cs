using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public partial class ModificarDatosConductor : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //var catl = sicove.categoria_licencia.ToList();

                //ddlCategoriaLIC.Items.Insert(0, new ListItem("Seleccione Categoría de Licencia...", "0"));

                //foreach (categoria_licencia p in catl)
                //{
                //    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                //    ddlCategoriaLIC.Items.Add(item);
                //}

                //ddlCategoriaLIC.SelectedIndex = 0;


                ///*--------------------------------------------------------------------------------*/
                //var mar = sicove.marca_vehiculo.ToList();

                //ddlMarcaCED.Items.Insert(0, new ListItem("Seleccione Marca...", "0"));

                //foreach (marca_vehiculo p in mar)
                //{
                //    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                //    ddlMarcaCED.Items.Add(item);
                //}

                //ddlMarcaCED.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var nac = sicove.nacionalidads.ToList();

                //ddlNacionalidadDNI.Items.Insert(0, new ListItem("Seleccione Nacionalidad...", "0"));

                //foreach (nacionalidad p in nac)
                //{
                //    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                //    ddlNacionalidadDNI.Items.Add(item);
                //}

                //ddlNacionalidadDNI.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var Sex = sicove.sexoes.ToList();

                //ddlSexoDNI.Items.Insert(0, new ListItem("Seleccione Sexo...", "0"));

                //foreach (sexo p in Sex)
                //{
                //    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                //    ddlSexoDNI.Items.Add(item);
                //}

                //ddlSexoDNI.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var pro = sicove.provincias.ToList();

                //ddlProvinciaDNI.Items.Insert(0, new ListItem("Seleccione Provincia...", "0"));

                //foreach (provincia p in pro)
                //{
                //    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                //    ddlProvinciaDNI.Items.Add(item);
                //}

                //ddlProvinciaDNI.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var loc = sicove.localidads.ToList();

                //ddlLocalidadDNI.Items.Insert(0, new ListItem("Seleccione Localidad...", "0"));

                //foreach (localidad p in loc)
                //{
                //    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                //    ddlLocalidadDNI.Items.Add(item);
                //}

                //ddlLocalidadDNI.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var mun = sicove.municipios.ToList();

                //ddlMunicipio.Items.Insert(0, new ListItem("Seleccione municipio...", "0"));

                //foreach (municipio p in mun)
                //{
                //    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                //    ddlMunicipio.Items.Add(item);
                //}

                //ddlMunicipio.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var Est = sicove.estado_cedula.ToList();

                //ddlEstadoCED.Items.Insert(0, new ListItem("Seleccione Estado...", "0"));

                //foreach (estado_cedula c in Est)
                //{
                //    ListItem item = new ListItem(c.descripcion, Convert.ToString(c.id));

                //    ddlEstadoCED.Items.Add(item);
                //}

                //ddlEstadoCED.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var Tip = sicove.tipo_vehiculo.ToList();

                //ddlTipoCED.Items.Insert(0, new ListItem("Seleccione Tipo...", "0"));

                //foreach (tipo_vehiculo t in Tip)
                //{
                //    ListItem item = new ListItem(t.descripcion, Convert.ToString(t.id));

                //    ddlTipoCED.Items.Add(item);
                //}

                //ddlTipoCED.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var Uso = sicove.uso_cedula.ToList();

                //ddlUsoCED.Items.Insert(0, new ListItem("Seleccione Uso...", "0"));

                //foreach (uso_cedula u in Uso)
                //{
                //    ListItem item = new ListItem(u.descripcion, Convert.ToString(u.id));

                //    ddlUsoCED.Items.Add(item);
                //}

                //ddlUsoCED.SelectedIndex = 0;

                ///*--------------------------------------------------------------------------------*/
                //var Ase = sicove.aseguradoras.ToList();

                //ddlAseguradoraSEG.Items.Insert(0, new ListItem("Seleccione Aseguradora...", "0"));

                //foreach (aseguradora a in Ase)
                //{
                //    ListItem item = new ListItem(a.descripcion, Convert.ToString(a.id));

                //    ddlAseguradoraSEG.Items.Add(item);
                //}

                //ddlAseguradoraSEG.SelectedIndex = 0;

                CargarCombos();

                var id = 0;
                if (Session["id"] != null)
                    id = Convert.ToInt32(Session["id"].ToString());

                persona per = (from a in sicove.personas where a.id == id select a).FirstOrDefault();

                txtApellidoDNI.Text = per.apellido;
                txtNombreDNI.Text = per.nombre;
                txtDocumentoDNI.Text = Convert.ToString(per.dni);
                ddlSexoDNI.SelectedValue = Convert.ToString(per.sexo_id);
                ddlNacionalidadDNI.SelectedValue = Convert.ToString(per.nacionalidad_id);
                ddlProvinciaDNI.SelectedValue = Convert.ToString(per.provincia_id);
                ddlLocalidadDNI.SelectedValue = Convert.ToString(per.localidad_id);
                txtDomicilioDNI.Text = per.domicilio;
                txtPisoDNI.Text = Convert.ToString(per.piso);
                txtDepartamentoDNI.Text = per.departamento;
                txtPuertaDNI.Text = per.nro_puerta;
                txtFecNacimientoDNI.Text = string.Format("{0:dd/MM/yyyy}", per.fecha_nacimiento);
                txtLugarNacimientoDNI.Text = per.lugar_nacimiento;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).FirstOrDefault();

                txtMailACNC.Text = usu.email;
                txtContraseñaACNC.Text = usu.contraseña;
                if (per.flag_conductor == true)
                {

                    licencia lic = (from t in sicove.licencias where t.persona_id == per.id select t).FirstOrDefault();
                    txtNumLicenciaLIC.Text = Convert.ToString(lic.nro_licencia);
                    ddlCategoriaLIC.SelectedValue = Convert.ToString(lic.categoria_id);
                    ddlMunicipio.SelectedValue = Convert.ToString(lic.municipio_id);
                    txtClasesLIC.Text = lic.clases;
                    txtFecOtorgamientoLIC.Text = string.Format("{0:dd/MM/yyyy}", lic.otorgamiento);
                    txtFecVencimientoLIC.Text = string.Format("{0:dd/MM/yyyy}", lic.vencimiento);
                    txtObservaciones.Text = lic.observaciones;

                    cedula ced = (from c in sicove.cedulas where c.persona_id == per.id select c).First();
                    txtNumCedulaCED.Text = ced.nro_cedula;
                    ddlUsoCED.SelectedValue = Convert.ToString(ced.uso_id);
                    ddlEstadoCED.SelectedValue = Convert.ToString(ced.estado_id);
                    txtFecVencimientoCED.Text = string.Format("{0:dd/MM/yyyy}", ced.vencimiento);
                    cckAutorizado.Checked = ced.flag_autorizado;
                    txtTitularCED.Text = ced.nom_titular;

                    vehiculo ve = (from v in sicove.vehiculoes where v.id == ced.vehiculo_id select v).First();
                    ddlTipoCED.Text = Convert.ToString(ve.tipo_id);
                    ddlMarcaCED.Text = Convert.ToString(ve.marca_id);
                    txtModeloCED.Text = ve.modelo;
                    txtAnioCED.Text = Convert.ToString(ve.año);
                    txtCilindradaCED.Text = ve.cilindrada;
                    txtNumMotorCED.Text = Convert.ToString(ve.motor);
                    txtChasisCED.Text = ve.chasis_cuadro;
                    txtDominioCED.Text = ve.dominio;

                    poliza pol = (from z in sicove.polizas where z.vehiculo_id == ve.id select z).First();
                    txtPolizaSEG.Text = pol.nro_poliza;
                    ddlAseguradoraSEG.SelectedValue = Convert.ToString(pol.aseguradora_id);
                    txtFecDesdeSEG.Text = string.Format("{0:dd/MM/yyyy}", pol.vigencia_desde);
                    txtFecHastaSEG.Text = string.Format("{0:dd/MM/yyyy}", pol.vigencia_hasta);
                    txtAseguradoSEG.Text = pol.nom_asegurado;
                }
            }
        }

                private void CargarCombos()
                {
                    CargarSexo();
                    CargarNacionalidad();
                    CargarEstado();
                    CargarTipo();
                    CargarUso();
                    CargarAseguradora();
                    CargarMarca();
                    CargarMunicipio();
                    CargarProvincia();
                    CargarLocalidad();
                    CargarCategorias();
                }

                private void CargarCategorias()
                {
                    var categorias = sicove.categoria_licencia.ToList();

                    ddlCategoriaLIC.DataTextField = "descripcion";
                    ddlCategoriaLIC.DataValueField = "id";
                    ddlCategoriaLIC.DataSource = categorias;
                    ddlCategoriaLIC.DataBind();
                }

                private void CargarLocalidad()
                {
                    var localidad = sicove.localidads.ToList();

                    ddlLocalidadDNI.DataTextField = "descripcion";
                    ddlLocalidadDNI.DataValueField = "id";
                    ddlLocalidadDNI.DataSource = localidad;
                    ddlLocalidadDNI.DataBind();
                }

                private void CargarProvincia()
                {
                    var provincia = sicove.provincias.ToList();

                    ddlProvinciaDNI.DataTextField = "descripcion";
                    ddlProvinciaDNI.DataValueField = "id";
                    ddlProvinciaDNI.DataSource = provincia;
                    ddlProvinciaDNI.DataBind();
                }

                private void CargarMunicipio()
                {
                    var municipio = sicove.municipios.ToList();

                    ddlMunicipio.DataTextField = "descripcion";
                    ddlMunicipio.DataValueField = "id";
                    ddlMunicipio.DataSource = municipio;
                    ddlMunicipio.DataBind();

                }

                private void CargarMarca()
                {
                    var marcas = sicove.marca_vehiculo.ToList();

                    ddlMarcaCED.DataTextField = "descripcion";
                    ddlMarcaCED.DataValueField = "id";
                    ddlMarcaCED.DataSource = marcas;
                    ddlMarcaCED.DataBind();
                }

                private void CargarUso()
                {
                    var uso = sicove.uso_cedula.ToList();

                    ddlUsoCED.DataTextField = "descripcion";
                    ddlUsoCED.DataValueField = "id";
                    ddlUsoCED.DataSource = uso;
                    ddlUsoCED.DataBind();
                }

                private void CargarAseguradora()
                {
                    var aseguradora = sicove.aseguradoras.ToList();

                    ddlAseguradoraSEG.DataTextField = "descripcion";
                    ddlAseguradoraSEG.DataValueField = "id";
                    ddlAseguradoraSEG.DataSource = aseguradora;
                    ddlAseguradoraSEG.DataBind();

                }

                private void CargarTipo()
                {
                    var tipo = sicove.tipo_vehiculo.ToList();

                    ddlTipoCED.DataTextField = "descripcion";
                    ddlTipoCED.DataValueField = "id";
                    ddlTipoCED.DataSource = tipo;
                    ddlTipoCED.DataBind();

                }

                private void CargarEstado()
                {

                    var estado = sicove.estado_cedula.ToList();

                    ddlEstadoCED.DataTextField = "descripcion";
                    ddlEstadoCED.DataValueField = "id";
                    ddlEstadoCED.DataSource = estado;
                    ddlEstadoCED.DataBind();
                }

                private void CargarNacionalidad()
                {
                    var nacionalidades = sicove.nacionalidads.ToList();

                    ddlNacionalidadDNI.DataTextField = "descripcion";
                    ddlNacionalidadDNI.DataValueField = "id";

                    ddlNacionalidadDNI.DataSource = nacionalidades;
                    ddlNacionalidadDNI.DataBind();

                }

                private void CargarSexo()
                {
                    var sexo = sicove.sexoes.ToList();

                    ddlSexoDNI.DataTextField = "descripcion";
                    ddlSexoDNI.DataValueField = "id";
                    ddlSexoDNI.DataSource = sexo;
                    ddlSexoDNI.DataBind();

                }



        protected void btnGuardarMDC_Click(object sender, EventArgs e)
        {
            var id = 0;
            if (Session["id"] != null)
                id = Convert.ToInt32(Session["id"].ToString());

            bool result = ActualizarDatosConductor(id);

            if (result)
                Response.Redirect("ListarConductor.aspx");

        }

        public bool ActualizarDatosConductor(int id)
        {
            bool result = false;

            try
            {
                persona per = (from a in sicove.personas where a.id == id select a).First();

                per.apellido = txtApellidoDNI.Text;
                per.nombre = txtNombreDNI.Text;
                per.dni = Convert.ToInt32(txtDocumentoDNI.Text);
                per.sexo_id = Convert.ToInt32(ddlSexoDNI.SelectedValue);
                per.nacionalidad_id = Convert.ToInt32(ddlNacionalidadDNI.SelectedValue);
                per.provincia_id = Convert.ToInt32(ddlProvinciaDNI.SelectedValue);
                ddlLocalidadDNI.SelectedValue = Convert.ToString(per.localidad_id);
                per.domicilio = txtDomicilioDNI.Text;
                per.departamento = txtDepartamentoDNI.Text;
                if (txtPisoDNI.Text != "")
                    per.piso = Convert.ToSByte(txtPisoDNI.Text);
                else
                per.nro_puerta = txtPuertaDNI.Text;
                per.fecha_nacimiento = Convert.ToDateTime(txtFecNacimientoDNI.Text);
                per.lugar_nacimiento = txtLugarNacimientoDNI.Text;
                per.flag_conductor = true;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).First();
                usu.email = txtMailACNC.Text;
                usu.contraseña = txtContraseñaACNC.Text;

                licencia lic = (from t in sicove.licencias where t.persona_id == per.id select t).First();
                lic.nro_licencia = txtNumLicenciaLIC.Text;
                lic.categoria_id = Convert.ToInt32(ddlCategoriaLIC.SelectedValue);
                lic.municipio_id = Convert.ToInt32(ddlMunicipio.SelectedValue);
                lic.clases = txtClasesLIC.Text;
                lic.otorgamiento = Convert.ToDateTime(txtFecOtorgamientoLIC.Text);
                lic.vencimiento = Convert.ToDateTime(txtFecVencimientoLIC.Text);
                lic.observaciones = txtObservaciones.Text;

                cedula ced = (from c in sicove.cedulas where c.persona_id == per.id select c).First();
                ced.nro_cedula = txtNumCedulaCED.Text;
                ced.persona = per;
                ced.uso_id = Convert.ToInt32(ddlUsoCED.SelectedValue);
                ced.estado_id = Convert.ToInt32(ddlEstadoCED.SelectedValue);
                ced.vencimiento = Convert.ToDateTime(txtFecVencimientoCED.Text);
                ced.flag_autorizado = cckAutorizado.Checked;
                ced.nom_titular = txtTitularCED.Text;

                vehiculo ve = (from v in sicove.vehiculoes where v.id == ced.vehiculo_id select v).First();
                ve.tipo_id = Convert.ToInt32(ddlTipoCED.Text);
                ve.marca_id = Convert.ToInt32(ddlMarcaCED.Text);
                ve.modelo = txtModeloCED.Text;
                ve.año = Convert.ToInt32(txtAnioCED.Text);
                ve.cilindrada = txtCilindradaCED.Text;
                ve.motor = txtNumMotorCED.Text;
                ve.chasis_cuadro = txtChasisCED.Text;
                ve.dominio = txtDominioCED.Text;
                ced.vehiculo = ve;

                poliza pol = (from z in sicove.polizas where z.vehiculo_id == ve.id select z).First();
                pol.nro_poliza = txtPolizaSEG.Text;
                pol.aseguradora_id = Convert.ToInt32(ddlAseguradoraSEG.SelectedValue);
                pol.vehiculo = ve;
                pol.vigencia_desde = Convert.ToDateTime(txtFecDesdeSEG.Text);
                pol.vigencia_hasta = Convert.ToDateTime(txtFecHastaSEG.Text);
                pol.nom_asegurado = txtAseguradoSEG.Text;

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

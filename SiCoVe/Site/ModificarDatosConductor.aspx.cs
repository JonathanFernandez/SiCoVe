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

            if (!Page.IsPostBack) {

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
                if (ced.flag_autorizado == false)
                txtTitularCED.Text = string.Format("{0} {1}", per.apellido, per.nombre);

                vehiculo ve = (from v in sicove.vehiculoes where v.id == ced.vehiculo_id select v).First();
                ddlTipoCED.Text = Convert.ToString(ve.tipo_id);
                ddlMarcaCED.Text = Convert.ToString(ve.marca_id);
                txtModeloCED.Text = ve.modelo;
                txtAnioCED.Text = Convert.ToString(ve.año);
                txtCilindradaCED.Text= ve.cilindrada;
                txtNumMotorCED.Text= Convert.ToString(ve.motor);
                txtChasisCED.Text= ve.chasis_cuadro;
                txtDominioCED.Text = ve.dominio;

                poliza pol = (from z in sicove.polizas where z.vehiculo_id == ve.id select z).First();
                txtPolizaSEG.Text = pol.nro_poliza;
                ddlAseguradoraSEG.SelectedValue = Convert.ToString(pol.aseguradora_id );
                txtFecDesdeSEG.Text = string.Format("{0:dd/MM/yyyy}", pol.vigencia_desde);
                txtFecHastaSEG.Text = string.Format("{0:dd/MM/yyyy}", pol.vigencia_hasta);
                txtAseguradoSEG.Text = string.Format("{0} {1}", per.apellido, per.nombre);
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

            //ddlMarcaSEG.DataTextField = "descripcion";
            //ddlMarcaSEG.DataValueField = "id";
            //ddlMarcaSEG.DataSource = marcas;
            //ddlMarcaSEG.DataBind();


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

            //ddlNacionalidadLIC.DataTextField = "descripcion";
            //ddlNacionalidadLIC.DataValueField = "id";

            //ddlNacionalidadLIC.DataSource = nacionalidades;
            //ddlNacionalidadLIC.DataBind();

        }

        private void CargarSexo()
        {
            var sexo = sicove.sexoes.ToList();

            ddlSexoDNI.DataTextField = "descripcion";
            ddlSexoDNI.DataValueField = "id";
            ddlSexoDNI.DataSource = sexo;
            ddlSexoDNI.DataBind();

            //ddlSexoLIC.DataTextField = "descripcion";
            //ddlSexoLIC.DataValueField = "id";
            //ddlSexoLIC.DataSource = sexo;
            //ddlSexoLIC.DataBind();
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
                per.piso = Convert.ToInt16(txtPisoDNI.Text);
                per.departamento = txtDepartamentoDNI.Text;
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

                poliza pol = (from z in sicove.polizas where z.id == ced.vehiculo_id select z).First();
                pol.nro_poliza = txtPolizaSEG.Text;
                pol.aseguradora_id = Convert.ToInt32(ddlAseguradoraSEG.SelectedValue);
                pol.vehiculo = ve;
                pol.vigencia_desde = Convert.ToDateTime(txtFecDesdeSEG.Text);
                pol.vigencia_hasta = Convert.ToDateTime(txtFecHastaSEG.Text);

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
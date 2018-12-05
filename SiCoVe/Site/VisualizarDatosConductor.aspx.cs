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
    public partial class VisualizarDatosConductor : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack) {

                CargarCombos();
                var id = 0;
                id = UserSession.persona_id;
                persona per = (from a in sicove.personas where a.id == id select a).FirstOrDefault();

                txtApellidoDNI.Text = per.apellido;
                txtNombreDNI.Text = per.nombre;
                txtDocumentoDNI.Text = Convert.ToString(per.dni);
                ddlSexoDNI.Text = Convert.ToString(per.sexo_id);
                ddlNacionalidadDNI.Text = Convert.ToString(per.nacionalidad_id);
                ddlProvinciaDNI.Text = Convert.ToString(per.provincia_id);
                ddlLocalidadDNI.Text = Convert.ToString(per.localidad_id);
                txtDomicilioDNI.Text = per.domicilio;
                txtPisoDNI.Text = Convert.ToString(per.piso);
                txtDepartamentoDNI.Text = per.departamento;
                txtPuertaDNI.Text = per.nro_puerta;
                txtFecNacimientoDNI.Text = string.Format("{0:dd/MM/yyyy}", per.fecha_nacimiento);
                txtLugarNacimientoDNI.Text = per.lugar_nacimiento;
                cckConductor.Checked = per.flag_conductor;
                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).FirstOrDefault();

                txtMailACNC.Text = usu.email;
                if (cckConductor.Checked == true)
                {
                    licencia lic = (from t in sicove.licencias where t.persona_id == per.id select t).FirstOrDefault();
                txtNumLicenciaLIC.Text = Convert.ToString(lic.nro_licencia);
                ddlCategoriaLIC.Text = Convert.ToString(lic.categoria_id);
                ddlMunicipio.Text = Convert.ToString(lic.municipio_id);
                txtClasesLIC.Text = lic.clases;
                txtFecOtorgamientoLIC.Text = string.Format("{0:dd/MM/yyyy}", lic.otorgamiento);
                txtFecVencimientoLIC.Text = string.Format("{0:dd/MM/yyyy}", lic.vencimiento);
                txtObservaciones.Text = lic.observaciones;

                cedula ced = (from c in sicove.cedulas where c.persona_id == per.id select c).First();
                txtNumCedulaCED.Text = ced.nro_cedula;
                ddlUsoCED.Text = Convert.ToString(ced.uso_id);
                ddlEstadoCED.Text = Convert.ToString(ced.estado_id);
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
                ddlAseguradoraSEG.Text = Convert.ToString(pol.aseguradora_id);
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








    }
}
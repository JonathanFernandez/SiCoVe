using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class AltaConductorNoConductor : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CargarCombos();
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

        protected void btnRegistrarACNC_Click(object sender, EventArgs e)
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
            per.piso = Convert.ToInt16(txtPisoDNI.Text);
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

            sicove.SaveChanges();















        }
    }
}
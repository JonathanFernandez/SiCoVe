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


                var id = 0;
                id = UserSession.persona_id;
                persona per = (from a in sicove.personas where a.id == id select a).FirstOrDefault();

                txtApellidoDNI.Text = per.apellido;
                txtNombreDNI.Text = per.nombre;
                txtDocumentoDNI.Text = Convert.ToString(per.dni);
                txtSexoDNI.Text = Convert.ToString(per.sexo_id);
                txtNacionalidadDNI.Text = Convert.ToString(per.nacionalidad_id);
                txtProvinciaDNI.Text = Convert.ToString(per.provincia_id);
                txtLocalidadDNI.Text = Convert.ToString(per.localidad_id);
                txtDomicilioDNI.Text = per.domicilio;
                txtPisoDNI.Text = Convert.ToString(per.piso);
                txtDepartamentoDNI.Text = per.departamento;
                txtPuertaDNI.Text = per.nro_puerta;
                txtFecNacimientoDNI.Text = string.Format("{0:dd/MM/yyyy}", per.fecha_nacimiento);
                txtLugarNacimientoDNI.Text = per.lugar_nacimiento;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).FirstOrDefault();

                txtMailACNC.Text = usu.email;

                licencia lic = (from t in sicove.licencias where t.persona_id == per.id select t).FirstOrDefault();
                txtNumLicenciaLIC.Text = Convert.ToString(lic.nro_licencia);
                txtCategoriaLIC.Text = Convert.ToString(lic.categoria_id);
                txtMunicipio.Text = Convert.ToString(lic.municipio_id);
                txtClasesLIC.Text = lic.clases;
                txtFecOtorgamientoLIC.Text = string.Format("{0:dd/MM/yyyy}", lic.otorgamiento);
                txtFecVencimientoLIC.Text = string.Format("{0:dd/MM/yyyy}", lic.vencimiento);
                txtObservaciones.Text = lic.observaciones;

                cedula ced = (from c in sicove.cedulas where c.persona_id == per.id select c).First();
                txtNumCedulaCED.Text = ced.nro_cedula;
                txtUsoCED.Text = Convert.ToString(ced.uso_id);
                txtEstadoCED.Text = Convert.ToString(ced.estado_id);
                txtFecVencimientoCED.Text = string.Format("{0:dd/MM/yyyy}", ced.vencimiento);
                cckAutorizado.Checked = ced.flag_autorizado;

                vehiculo ve = (from v in sicove.vehiculoes where v.id == ced.vehiculo_id select v).First();
                txtTipoCED.Text = Convert.ToString(ve.tipo_id);
                txtMarcaCED.Text = Convert.ToString(ve.marca_id);
                txtModeloCED.Text = ve.modelo;
                txtAnioCED.Text = Convert.ToString(ve.año);
                txtCilindradaCED.Text = ve.cilindrada;
                txtNumMotorCED.Text = Convert.ToString(ve.motor);
                txtChasisCED.Text = ve.chasis_cuadro;
                txtDominioCED.Text = ve.dominio;

                poliza pol = (from z in sicove.polizas where z.id == ced.vehiculo_id select z).First();
                txtPolizaSEG.Text = pol.nro_poliza;
                txtAseguradoraSEG.Text = Convert.ToString(pol.aseguradora_id);
                txtFecDesdeSEG.Text = string.Format("{0:dd/MM/yyyy}", pol.vigencia_desde);
                txtFecHastaSEG.Text = string.Format("{0:dd/MM/yyyy}", pol.vigencia_hasta);

            }

        }











    }
}
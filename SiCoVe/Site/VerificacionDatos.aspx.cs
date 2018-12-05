using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class VerificacionDatos : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string dominio = Convert.ToString(Request.QueryString["dominio"]);

                /*--------------------------------------------------------------------------------*/

                var per = sicove.SP_LISTAR_PERSONAS_AUTORIZADAS(dominio).ToList();

                ddlPersona.Items.Insert(0, new ListItem("Seleccione persona...", "0"));

                foreach (SP_LISTAR_PERSONAS_AUTORIZADAS_Result j in per)
                {
                    ListItem item = new ListItem(String.Concat(j.nombre, ' ', j.apellido), Convert.ToString(j.id));

                    ddlPersona.Items.Add(item);
                }

                ddlPersona.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var nac = sicove.nacionalidads.ToList();

                ddlNacionalidadDNI.Items.Insert(0, new ListItem("Seleccione nacionalidad...", "0"));
                ddlNacionalidadLIC.Items.Insert(0, new ListItem("Seleccione nacionalidad...", "0"));

                foreach (nacionalidad p in nac)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlNacionalidadDNI.Items.Add(item);
                    ddlNacionalidadLIC.Items.Add(item);
                }

                ddlNacionalidadDNI.SelectedIndex = 0;
                ddlNacionalidadLIC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var loc = sicove.municipios.ToList();

                ddlLocalidadFC.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));

                foreach (municipio p in loc)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlLocalidadFC.Items.Add(item);
                }

                ddlLocalidadFC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var pro = sicove.provincias.ToList();

                ddlProvinciaFC.Items.Insert(0, new ListItem("Seleccione provincia...", "0"));

                foreach (provincia p in pro)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlProvinciaFC.Items.Add(item);
                }

                ddlProvinciaFC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var sex = sicove.sexoes.ToList();

                ddlSexoLIC.Items.Insert(0, new ListItem("Seleccione genero...", "0"));
                ddlSexoDNI.Items.Insert(0, new ListItem("Seleccione genero...", "0"));

                foreach (sexo p in sex)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlSexoLIC.Items.Add(item);
                    ddlSexoDNI.Items.Add(item);
                }

                ddlSexoLIC.SelectedIndex = 0;
                ddlSexoDNI.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var est = sicove.estado_cedula.ToList();

                ddlEstadoCED.Items.Insert(0, new ListItem("Seleccione estado...", "0"));

                foreach (estado_cedula p in est)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlEstadoCED.Items.Add(item);
                }

                ddlEstadoCED.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var uso = sicove.uso_cedula.ToList();

                ddlUsoCED.Items.Insert(0, new ListItem("Seleccione uso...", "0"));

                foreach (uso_cedula p in uso)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlUsoCED.Items.Add(item);
                }

                ddlUsoCED.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var seg = sicove.aseguradoras.ToList();

                ddlAseguradoraSEG.Items.Insert(0, new ListItem("Seleccione aseguradora...", "0"));

                foreach (aseguradora p in seg)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlAseguradoraSEG.Items.Add(item);
                }

                ddlAseguradoraSEG.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var mar = sicove.marca_vehiculo.ToList();

                ddlMarcaSEG.Items.Insert(0, new ListItem("Seleccione marca...", "0"));
                ddlMarcaCED.Items.Insert(0, new ListItem("Seleccione marca...", "0"));

                foreach (marca_vehiculo p in mar)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlMarcaSEG.Items.Add(item);
                    ddlMarcaCED.Items.Add(item);
                }

                ddlMarcaSEG.SelectedIndex = 0;
                ddlMarcaCED.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var tip = sicove.tipo_vehiculo.ToList();

                ddlTipoCED.Items.Insert(0, new ListItem("Seleccione tipo de vehiculo...", "0"));

                foreach (tipo_vehiculo p in tip)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlTipoCED.Items.Add(item);
                }

                ddlTipoCED.SelectedIndex = 0; 
            }   
        }

        protected void ddlPersona_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id_persona  = Convert.ToInt16(ddlPersona.SelectedValue);

            var dat = sicove.SP_LISTAR_DATOS_PERSONA(id_persona).ToList();

            foreach (SP_LISTAR_DATOS_PERSONA_Result p in dat)
            {
                txtApellidoDNI.Text = p.apellido.ToString();
                txtNombreDNI.Text = p.nombre.ToString();

                ddlSexoDNI.SelectedIndex = p.sexo_id;
                ddlNacionalidadDNI.SelectedIndex = p.nacionalidad_id;

                txtFecNacimientoDNI.Text = String.Format("{0:dd/MM/yyyy}", p.fecha_nacimiento);
                txtDocumentoDNI.Text = p.dni.ToString();
                txtDomicilioDNI.Text = p.domicilio.ToString();

                txtLugNacimientoDNI.Text = p.lugar_nacimiento;

                txtNumLicenciaLIC.Text = p.nro_licencia.ToString();
                txtApellidoLIC.Text = p.apellido.ToString();
                txtNombresLIC.Text = p.nombre.ToString();
                txtFecNacimientoLIC.Text = String.Format("{0:dd/MM/yyyy}", p.fecha_nacimiento);
                txtDomicilioLIC.Text = p.domicilio.ToString();

                ddlNacionalidadLIC.SelectedIndex = p.nacionalidad_id;
                ddlSexoLIC.SelectedIndex = p.sexo_id;

                txtFecOtorgamientoLIC.Text = String.Format("{0:dd/MM/yyyy}", p.otorgamiento);
                txtFecVencimientoLIC.Text = String.Format("{0:dd/MM/yyyy}", p.vencimiento);
                txtcategoriLIC.Text = p.licencia_categoria_desc.ToString();
                txtClasesLIC.Text = p.clases.ToString();
                txtObservaciones.Text = p.observaciones.ToString();

                txtNumCedulaCED.Text = p.nro_cedula.ToString();
                txtDominioCED.Text = p.dominio.ToString();

                ddlEstadoCED.SelectedIndex = p.cedula_estado_id;
                ddlMarcaCED.SelectedIndex = p.vehiculo_marca_id;

                txtModeloCED.Text = p.modelo.ToString();

                ddlTipoCED.SelectedIndex = p.vehiculo_tipo_id;
                ddlUsoCED.SelectedIndex = p.cedula_uso_id;

                txtChasisCED.Text = p.chasis_cuadro.ToString();
                txtNumMotorCED.Text = p.motor.ToString();
                txtFecVencimientoCED.Text = p.cedula_vencimiento.ToString();
                txtCilindradaCED.Text = p.cilindrada.ToString();
                //txtTitularCED.Text = String.Concat(p.nombre, ' ', p.apellido);
                txtTitularCED.Text = String.Concat(p.nom_titular);

                if (p.flag_autorizado == true)
                    radBEsAutorizado.SelectedValue = "True";
                else
                    radBEsAutorizado.SelectedValue = "False";

                ddlAseguradoraSEG.SelectedIndex = p.aseguradora_id;

                //txtAseguradoSEG.Text = String.Concat(p.nombre, ' ', p.apellido);
                txtAseguradoSEG.Text = String.Concat(p.nom_asegurado);
                txtPolizaSEG.Text = p.nro_poliza.ToString();

                ddlMarcaSEG.SelectedIndex = p.vehiculo_marca_id;

                txtModeloSEG.Text = p.modelo.ToString();
                txtcilindradaSEG.Text = p.cilindrada.ToString();
                txtDominioSEG.Text = p.dominio.ToString();

                txtAnioSEG.Text = p.año.ToString();

                txtNumMotorSEG.Text = p.motor.ToString();
                txtNumChasisSEG.Text = p.chasis_cuadro.ToString();
                txtFecDesdeSEG.Text = String.Format("{0:dd/MM/yyyy}", p.vigencia_desde);
                txtFecHastaSEG.Text = String.Format("{0:dd/MM/yyyy}", p.vigencia_hasta);

                break;
            }
        }

        protected void btnAprobarVD_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                int id_persona_LOG = UserSession.persona_id;
                int id_agente = 0;
                int id_vehiculo = 0;

                control con = new control();

                try
                {
                    id_agente = (from ag in sicove.agente_transito
                                 join us in sicove.usuarios on ag.usuario_id equals us.id
                                 where us.persona_id == id_persona_LOG
                                 select ag.id).First();
                }
                catch (Exception ex)
                {
                    id_persona_LOG = 0;
                }

                try
                {
                    id_vehiculo = (from ve in sicove.vehiculoes
                                   where ve.dominio == txtDominioCED.Text.ToString()
                                   select ve.id).First();
                }
                catch (Exception ex)
                {
                    id_vehiculo = 0;
                }

                try
                {
                    String fecha_hora = DateTime.Now.ToString("g");

                    con.agente_transito_id = id_agente;
                    con.vehiculo_id = id_vehiculo;
                    con.persona_id = Convert.ToInt16(ddlPersona.SelectedValue);
                    con.fecha_hora = DateTime.Parse(fecha_hora);
                    con.provincia_id = Convert.ToInt16(ddlProvinciaFC.SelectedValue);
                    con.localidad_id = Convert.ToInt16(ddlLocalidadFC.SelectedValue);
                    con.locacion = txtLugarControlFC.Text.ToString();
                    con.observaciones = txtObservacionesControlFC.Text.ToString();

                    sicove.controls.Add(con);
                    sicove.SaveChanges();
                    lblMensaje.Text = "Control realizado con éxito.";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$( document ).ready(function() { $('#myModal').modal('show');});", true);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }
        }
    }
}
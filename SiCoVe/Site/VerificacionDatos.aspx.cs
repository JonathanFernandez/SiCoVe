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

                ddlLugNacimientoDNI.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));
                ddlLocalidadFC.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));

                foreach (municipio p in loc)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlLugNacimientoDNI.Items.Add(item);
                    ddlLocalidadFC.Items.Add(item);
                }

                ddlLugNacimientoDNI.SelectedIndex = 0;
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

                /*--------------------------------------------------------------------------------*/

                txtApellidoDNI.Enabled = false;
                //txtNombreDNI.Enabled = false;
                //ddlSexoDNI.Enabled = false;
                //ddlNacionalidadDNI.Enabled = false;
                //txtFecNacimientoDNI.Enabled = false;
                //txtDocumentoDNI.Enabled = false;
                //txtDomicilioDNI.Enabled = false;
                //ddlLugNacimientoDNI.Enabled = false;
            }   
        }

        protected void ddlPersona_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id_persona = Convert.ToInt16(ddlPersona.SelectedValue);

            var dat = sicove.SP_LISTAR_DATOS_PERSONA(id_persona).ToList();

            foreach (SP_LISTAR_DATOS_PERSONA_Result p in dat)
            {
                txtApellidoDNI.Text = p.apellido.ToString();
                txtNombreDNI.Text = p.nombre.ToString();

                ddlSexoDNI.SelectedIndex = 1; //X
                ddlNacionalidadDNI.SelectedIndex = 1; //X

                txtFecNacimientoDNI.Text = p.fecha_nacimiento.ToString();
                txtDocumentoDNI.Text = p.dni.ToString();
                txtDomicilioDNI.Text = p.domicilio.ToString();

                ddlLugNacimientoDNI.SelectedIndex = 1; //X

                txtNumLicenciaLIC.Text = p.nro_licencia.ToString();
                txtApellidoLIC.Text = p.apellido.ToString();
                txtNombresLIC.Text = p.nombre.ToString();
                txtFecNacimientoLIC.Text = p.fecha_nacimiento.ToString();
                txtDomicilioLIC.Text = p.domicilio.ToString();

                ddlNacionalidadLIC.SelectedIndex = 1; //X
                ddlSexoLIC.SelectedIndex = 1; //X

                txtFecOtorgamientoLIC.Text = p.otorgamiento.ToString();
                txtFecVencimientoLIC.Text = p.vencimiento.ToString();
                txtcategoriLIC.Text = p.licencia_categoria.ToString();
                txtClasesLIC.Text = p.clases.ToString();
                txtObservaciones.Text = p.observaciones.ToString();

                txtNumCedulaCED.Text = p.nro_cedula.ToString();
                txtDominioCED.Text = p.dominio.ToString();

                ddlEstadoCED.SelectedIndex = 1; //X
                ddlMarcaCED.SelectedIndex = 1; //X

                txtModeloCED.Text = p.modelo.ToString();

                ddlTipoCED.SelectedIndex = 1; //X
                ddlUsoCED.SelectedIndex = 1; //X

                txtChasisCED.Text = p.chasis_cuadro.ToString();
                txtNumMotorCED.Text = p.motor.ToString();
                txtFecVencimientoCED.Text = p.cedula_vencimiento.ToString();
                txtCilindradaCED.Text = p.cilindrada.ToString();
                txtTitularCED.Text = String.Concat(p.nombre, ' ', p.apellido);

                if (p.flag_autorizado == true)
                    radBEsAutorizado.SelectedValue = "True";
                else
                    radBEsAutorizado.SelectedValue = "False";

                ddlAseguradoraSEG.SelectedIndex = 1; //X

                txtAseguradoSEG.Text = String.Concat(p.nombre, ' ', p.apellido);
                txtPolizaSEG.Text = p.nro_poliza.ToString();

                ddlMarcaSEG.SelectedIndex = 1; //X

                txtModeloSEG.Text = p.modelo.ToString();
                txtcilindradaSEG.Text = p.cilindrada.ToString();
                txtDominioSEG.Text = p.dominio.ToString();

                //txtAnioSEG.Text = 

                txtNumMotorSEG.Text = p.motor.ToString();
                txtNumChasisSEG.Text = p.chasis_cuadro.ToString();
                txtFecDesdeSEG.Text = p.vigencia_desde.ToString();
                txtFecHastaSEG.Text = p.vigencia_hasta.ToString();
            }
        }

        protected void btnAprobarVD_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                int id_persona = UserSession.persona_id;
                int id_agente = 0;
                int id_vehiculo = 0;

                control con = new control();

                try
                {
                    id_agente = (from ag in sicove.agente_transito
                                 join us in sicove.usuarios on ag.usuario_id equals us.id
                                 where us.persona_id == id_persona
                                 select ag.id).First();
                }
                catch (Exception ex)
                {
                    id_persona = 0;
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
                    con.persona_id = id_persona;
                    con.fecha_hora = DateTime.Parse(fecha_hora);
                    con.provincia_id = Convert.ToInt16(ddlProvinciaFC.SelectedValue);
                    con.localidad_id = Convert.ToInt16(ddlLocalidadFC.SelectedValue);
                    con.locacion = txtLugarControlFC.Text.ToString();
                    con.observaciones = txtObservacionesControlFC.Text.ToString();

                    sicove.controls.Add(con);
                    sicove.SaveChanges();
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }
        }
    }
}
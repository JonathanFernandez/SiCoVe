using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class ActaComprobacion : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var tip = sicove.tipo_vehiculo.ToList();
                var id_perosna = UserSession.persona_id;

                persona per = (from a in sicove.personas where a.id == id_perosna select a).FirstOrDefault();

                //agente_transito ag = (from t in sicove.agente_transito where t.usuario_id == per.id select t).FirstOrDefault();

                int ag = ( from u in sicove.usuarios join
                           a in sicove.agente_transito on u.id equals a.usuario_id
                           where u.persona_id == id_perosna
                           select a.nro_legajo).FirstOrDefault();

                //id_agente = (from ag in sicove.agente_transito
                //             where ag.nro_legajo == numAgente
                //             select ag.id).First();

                txtNumAgenteAC.Text = Convert.ToString(ag);

                ddlTipoVehiculoAC.Items.Insert(0, new ListItem("Seleccione tipo de vehiculo...", "0"));

                foreach (tipo_vehiculo j in tip)
                {
                    ListItem item = new ListItem(j.descripcion, Convert.ToString(j.id));

                    ddlTipoVehiculoAC.Items.Add(item);
                }

                ddlTipoVehiculoAC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var mar = sicove.marca_vehiculo.ToList();

                ddlMarcaAC.Items.Insert(0, new ListItem("Seleccione marca...", "0"));

                foreach (marca_vehiculo p in mar)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlMarcaAC.Items.Add(item);
                }

                ddlMarcaAC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var cat = sicove.categoria_infraccion.ToList();

                ddlCatInfraccionAC.Items.Insert(0, new ListItem("Seleccione catagoría de infracción...", "0"));

                foreach (categoria_infraccion p in cat)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlCatInfraccionAC.Items.Add(item);
                }

                ddlCatInfraccionAC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var inf = sicove.codigo_infraccion.ToList();

                ddlInfraccionAC.Items.Insert(0, new ListItem("Seleccione infracción...", "0"));

                foreach (codigo_infraccion p in inf)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlInfraccionAC.Items.Add(item);
                }

                ddlInfraccionAC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var pro = sicove.provincias.ToList();

                ddlProvinciaAC.Items.Insert(0, new ListItem("Seleccione provincia...", "0"));
                ddlProvinciaINF.Items.Insert(0, new ListItem("Seleccione provincia...", "0"));

                foreach (provincia p in pro)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlProvinciaAC.Items.Add(item);
                    ddlProvinciaINF.Items.Add(item);
                }

                ddlProvinciaAC.SelectedIndex = 0;
                ddlProvinciaINF.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var loc = sicove.localidads.ToList();

                ddlLocalidadAC.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));
                ddlLocalidadINF.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));

                foreach (localidad p in loc)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlLocalidadAC.Items.Add(item);
                    ddlLocalidadINF.Items.Add(item);
                }

                ddlLocalidadAC.SelectedIndex = 0;
                ddlLocalidadINF.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var mun = sicove.municipios.ToList();

                ddlMuniLicenciaAC.Items.Insert(0, new ListItem("Seleccione municipio...", "0"));

                foreach (municipio p in mun)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlMuniLicenciaAC.Items.Add(item);
                }

                ddlMuniLicenciaAC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var catl = sicove.categoria_licencia.ToList();

                ddlCatLicencia.Items.Insert(0, new ListItem("Seleccione categoría de licencia...", "0"));

                foreach (categoria_licencia p in catl)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlCatLicencia.Items.Add(item);
                }

                ddlCatLicencia.SelectedIndex = 0;
            }
        }

        protected void btnAceptarAC_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                try
                {
                    int? id_agente = null;
                    int? id_vehiculo = null;
                    int? id_licencia = null;
                    int? id_control = null;
                    int? id_persona = null;
                    int numAgente = Convert.ToInt32(txtNumAgenteAC.Text);
                    int numDocumento = Convert.ToInt32(txtNumDocumentoAC.Text);


                    //id_agente = (from ag in sicove.agente_transito
                    //             where ag.nro_legajo == numAgente
                    //             select ag.id).First();

                    try
                    {
                        id_persona = (from pe in sicove.personas
                                      where pe.dni == numDocumento
                                      select pe.id).First();
                    }
                    catch (Exception ex)
                    {
                        id_persona = null;
                    }

                    try
                    {
                        id_vehiculo = (from ve in sicove.vehiculoes
                                       where ve.dominio == txtDominioAC.Text
                                       select ve.id).First();
                    }
                    catch (Exception ex)
                    {
                        id_vehiculo = null;
                    }

                    try
                    {
                        id_licencia = (from li in sicove.licencias
                                       where li.nro_licencia == txtNumLicenciaAC.Text
                                       select li.id).First();
                    }
                    catch (Exception ex)
                    {
                        id_licencia = null;
                    }

                    try
                    {
                        id_control = (from co in sicove.controls
                                      where co.agente_transito_id == id_agente &&
                                            co.persona_id == id_persona
                                      select co.id).Max();
                    }
                    catch (Exception ex)
                    {
                        id_control = null;
                    }

                    infraccion ac = new infraccion();

                    ac.agente_transito_id = (int)id_agente;

                    if (id_vehiculo != null)
                    {
                        ac.vehiculo_id = (int)id_vehiculo;
                    }
                    else
                    {
                        ac.vehiculo_tipo_id = Convert.ToInt16(ddlTipoVehiculoAC.SelectedValue);
                        //txtOtrosTipVehAC
                        ac.vehiculo_marca_id = Convert.ToInt16(ddlMarcaAC.SelectedValue);
                        ac.vehiculo_modelo = txtModeloAC.Text;
                    }

                    if (id_licencia != null)
                    {
                        ac.licencia_id = (int)id_licencia;
                    }
                    else
                    {
                        ac.imputado_licencia_nro = txtNumLicenciaAC.Text;
                        ac.imputado_licencia_municipio_id = Convert.ToInt16(ddlMuniLicenciaAC.SelectedValue);
                        ac.imputado_licencia_categoria_id = Convert.ToInt16(ddlCatLicencia.SelectedValue);
                    }

                    //ddlCatInfraccionAC
                    ac.codigo_infraccion_id = Convert.ToInt16(ddlInfraccionAC.SelectedValue);

                    if (id_control != null)
                        ac.control_id = (int)id_control;

                    ac.nro_acta = Convert.ToInt64(txtNumActaAC.Text);
                    ac.fecha_hora = DateTime.Parse(txtFecActaAC.Text);
                    ac.provincia_id = Convert.ToInt16(ddlProvinciaINF.SelectedValue);
                    ac.localidad_id = Convert.ToInt16(ddlLocalidadINF.SelectedValue);
                    ac.locacion = txtLugarInfraccionAC.Text;
                    ac.observaciones = txtDescInfraccionAC.Text;
                    ac.documentacion_retenida = txtDocuRetenidaAC.Text;
                    ac.lugar_retencion = txtLugarDetenVehiAC.Text;

                    if (id_persona != null)
                    {
                        ac.persona_id = (int)id_persona;
                    }
                    else
                    {
                        ac.imputado_apellido = txtApellido.Text;
                        ac.imputado_nombre = txtNombre.Text;
                        ac.imputado_dni = Convert.ToInt64(txtNumDocumentoAC.Text);

                        ac.imputado_provincia_id = Convert.ToInt16(ddlProvinciaAC.SelectedValue);
                        ac.imputado_localidad_id = Convert.ToInt16(ddlLocalidadAC.SelectedValue);
                        ac.imputado_domicilio = txtDomicilio.Text;
                        ac.imputado_nropuerta = txtNumPuertaAC.Text;

                        if (txtPisoAC.Text != "")
                            ac.imputado_piso = Convert.ToSByte(txtPisoAC.Text);
                        else
                            ac.imputado_piso = null;

                        ac.imputado_departamento = txtDepartamentoAC.Text;
                    }

                    ac.vehiculo_dominio = txtDominioAC.Text;

                    sicove.infraccions.Add(ac);
                    sicove.SaveChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$( document ).ready(function() { $('#myModal').modal('show');});", true);
                    CleanControl(this.Controls);

                    //this.Page.Response.Write("<script language='JavaScript'>window.alert('Acta generada correctamente');window.location.href = './ActaComprobacion.aspx';</script>");
                }
                catch (Exception ex)
                {
                    //throw new Exception(ex.Message);
                    LblError.Text = Convert.ToString(ex);
                }
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
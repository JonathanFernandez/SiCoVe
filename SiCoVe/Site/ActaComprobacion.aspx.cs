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

                foreach (provincia p in pro)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlProvinciaAC.Items.Add(item);
                }

                ddlProvinciaAC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var loc = sicove.municipios.ToList();

                ddlLocalidadAC.Items.Insert(0, new ListItem("Seleccione localidad...", "0"));

                foreach (municipio p in loc)
                {
                    ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                    ddlLocalidadAC.Items.Add(item);
                }

                ddlLocalidadAC.SelectedIndex = 0;

                /*--------------------------------------------------------------------------------*/

                var mun = sicove.municipios.ToList();

                ddlMuniLicenciaAC.Items.Insert(0, new ListItem("Seleccione municipio...", "0"));

                foreach (municipio p in loc)
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
                    int? id_persona = null;
                    int? id_vehiculo = null;
                    int? id_licencia = null;
                    int? id_control = null;

                    id_agente = (from ag in sicove.agente_transito
                                 where ag.nro_legajo == int.Parse(txtNumAgenteAC.Text)
                                 select ag.id).First();

                    id_persona = (from pe in sicove.personas
                                  where pe.dni == int.Parse(txtNumDocumentoAC.Text)
                                  select pe.id).First();

                    id_vehiculo = (from ve in sicove.vehiculoes
                                   where ve.dominio == txtDominioAC.Text
                                   select ve.id).First();

                    id_licencia = (from li in sicove.licencias
                                   where li.nro_licencia == txtNumLicenciaAC.Text
                                   select li.id).First();

                    id_control = (from co in sicove.controls
                                  where co.agente_transito_id == id_agente &&
                                        co.persona_id == id_persona
                                  select co.id).Max();

                    infraccion ac = new infraccion();

                    ac.agente_transito_id = (int)id_agente;

                    if (id_vehiculo != null)
                    {
                        ac.vehiculo_id = (int)id_vehiculo;
                    }
                    else
                    {
                        //ddlTipoVehiculoAC
                        //txtOtrosTipVehAC
                        //ddlMarcaAC
                        //txtModeloAC
                    }

                    if (id_licencia != null)
                    {
                        ac.licencia_id = (int)id_licencia;
                    }
                    else
                    {
                       //txtNumLicenciaAC
                       //ddlMuniLicenciaAC
                       //ddlCatLicencia
                    }

                    //ddlCatInfraccionAC
                    ac.codigo_infraccion_id = Convert.ToInt16(ddlInfraccionAC.SelectedValue);

                    //    ddlProvinciaAC
                    //    ddlLocalidadAC

                    if (id_control != null)
                        ac.control_id = (int)id_control;

                    //if (id_persona != null)
                    //{
                    //    ac.persona_id = (int)id_persona;
                    //}
                    //else
                    //{
                    //    txtApellido
                    //    txtNombre
                    //    txtNumDocumentoAC

                    //    txtDomicilio
                    //    txtNumPuertaAC
                    //    txtPisoAC
                    //    txtDepartamentoAC
                    //}


                    //txtDocuRetenidaAC
                    //txtLugarDetenVehiAC
                    //txtNumAgenteAC


                    

                    

                    

                    

                    

                    ac.nro_acta = int.Parse(txtNumActaAC.Text);
                    ac.fecha_hora = DateTime.Parse(String.Concat(txtFecActaAC.Text, " ", txtHoraActaAC.Text));
                    ac.locacion = txtLugarInfraccionAC.Text;
                    ac.observaciones = txtDescInfraccionAC.Text;

                    ac.vehiculo_dominio = txtDominioAC.Text;



                    /*
                        txtNumActaAC
                        txtFecActaAC
                        txtHoraActaAC
                        txtDominioAC

                    ddlTipoVehiculoAC
                    txtOtrosTipVehAC
                    ddlMarcaAC
                    txtModeloAC

                        ddlCatInfraccionAC
                        ddlInfraccionAC
                        txtDescInfraccionAC
                        txtLugarInfraccionAC

                    txtApellido
                    txtNombre
                    txtNumDocumentoAC
                    ddlProvinciaAC
                    ddlLocalidadAC
                    txtDomicilio
                    txtNumPuertaAC
                    txtPisoAC
                    txtDepartamentoAC

                    txtNumLicenciaAC
                    ddlMuniLicenciaAC
                    ddlCatLicencia

                    txtDocuRetenidaAC
                    txtLugarDetenVehiAC
                    txtNumAgenteAC 
                    */

                    sicove.infraccions.Add(ac);
                    sicove.SaveChanges();

                    this.Page.Response.Write("<script language='JavaScript'>window.alert('Acta generada correctamente');window.location.href = './ActaComprobacion.aspx';</script>");
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }
        }
    }
}
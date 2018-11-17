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
            string dominio = Convert.ToString(Request.QueryString["dominio"]);

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

            foreach (municipio p in loc)
            {
                ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                ddlLugNacimientoDNI.Items.Add(item);
            }

            ddlLugNacimientoDNI.SelectedIndex = 0;

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

            ddlTipoCED.Items.Insert(0, new ListItem("Seleccione tipo...", "0"));

            foreach ( tipo_vehiculo p in tip)
            {
                ListItem item = new ListItem(p.descripcion, Convert.ToString(p.id));

                ddlTipoCED.Items.Add(item);
            }

            ddlTipoCED.SelectedIndex = 0;

            
        }
    }
}
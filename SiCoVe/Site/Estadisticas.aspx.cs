using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Text;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class Estadisticas : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //ddlGraficos.Items.Insert(0, new ListItem("Seleccione una opción...", "0"));
                ddlGraficos.Items.Insert(0, new ListItem("Acarreos por localidad", "0"));
                ddlGraficos.Items.Insert(1, new ListItem("Acarreos por playa", "1"));
                ddlGraficos.Items.Insert(2, new ListItem("Controles por agente", "2"));
                ddlGraficos.Items.Insert(3, new ListItem("Controles por localidad", "3"));
                ddlGraficos.Items.Insert(4, new ListItem("Denuncias por localidad", "4"));
                ddlGraficos.Items.Insert(4, new ListItem("Infracciones por categoría", "5"));
                ddlGraficos.Items.Insert(4, new ListItem("Infracciones por localidad", "6"));
                ddlGraficos.SelectedIndex = 0;

                /*****************************************************************************/

                llenarPrimerGrafico();
            }
        }

        private void llenarPrimerGrafico()
        {
            lblflot.InnerText = "Acarreos por localidad";
            lblbar.InnerText = "Acarreos por localidad";

            StringBuilder sb;

            int flag = 0;
            var dataContLoc = sicove.SP_LISTAR_ACARREOS_X_LOCALIDAD(null, null).ToList();

            if (dataContLoc.Count > 0)
            {
                sb = new StringBuilder();
                sb.Append("var dataMen = [");

                foreach (SP_LISTAR_ACARREOS_X_LOCALIDAD_Result lo in dataContLoc)
                {
                    if (flag == 0)
                        sb.Append("{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");
                    else
                        sb.Append(",{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");

                    flag = 1;
                }

                sb.Append("];");

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                flag = 0;

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("Morris.Bar({");
                    sb.Append("element: 'morris-bar-chartAnual',");
                    sb.Append(" data: [");

                    foreach (SP_LISTAR_ACARREOS_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                        else
                            sb.Append(",{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                        flag = 1;
                    }

                    sb.Append("],");

                    sb.Append("xkey: 'area',");
                    sb.Append("ykeys: ['cantidad'],");
                    sb.Append("labels: ['cantidad'],");
                    sb.Append("barRatio: 0.4,");
                    sb.Append("xLabelAngle: 35,");
                    sb.Append("hideHover: 'auto',");
                    sb.Append("resize: true");
                    sb.Append("});");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                }
            }
        }

        protected void btnGraficar_Click(object sender, EventArgs e)
        {
            int id_grafico = Convert.ToInt16(ddlGraficos.SelectedValue);

            DateTime? fecDesde;
            DateTime? fecHasta;

            if (txtFecDesde.Text != "" && txtFecHasta.Text != "")
            {
                fecDesde = Convert.ToDateTime(txtFecDesde.Text);
                fecHasta = Convert.ToDateTime(txtFecHasta.Text);
            }
            else
            {
                fecDesde = null;
                fecHasta = null;
            }

            /**********************************************************************************************************/

            if (id_grafico == 0)
            {
                lblflot.InnerText = "Acarreos por localidad";
                lblbar.InnerText = "Acarreos por localidad";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_ACARREOS_X_LOCALIDAD(fecDesde, fecHasta).ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_ACARREOS_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");
                        else
                            sb.Append(",{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");

                        flag = 1;
                    }

                    sb.Append("];");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                    flag = 0;

                    if (dataContLoc.Count > 0)
                    {
                        sb = new StringBuilder();
                        sb.Append("Morris.Bar({");
                        sb.Append("element: 'morris-bar-chartAnual',");
                        sb.Append(" data: [");

                        foreach (SP_LISTAR_ACARREOS_X_LOCALIDAD_Result lo in dataContLoc)
                        {
                            if (flag == 0)
                                sb.Append("{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            else
                                sb.Append(",{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            flag = 1;
                        }

                        sb.Append("],");

                        sb.Append("xkey: 'area',");
                        sb.Append("ykeys: ['cantidad'],");
                        sb.Append("labels: ['cantidad'],");
                        sb.Append("barRatio: 0.4,");
                        sb.Append("xLabelAngle: 35,");
                        sb.Append("hideHover: 'auto',");
                        sb.Append("resize: true");
                        sb.Append("});");

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                    }
                }
            }

            /**********************************************************************************************************/

            if (id_grafico == 1)
            {
                lblflot.InnerText = "Acarreos por playa";
                lblbar.InnerText = "Acarreos por playa";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_ACARREOS_X_PLAYA(fecDesde, fecHasta).ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_ACARREOS_X_PLAYA_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.playa_acarreo.ToString() + "', data: " + lo.cantidad + " }");
                        else
                            sb.Append(",{label: '" + lo.playa_acarreo.ToString() + "', data: " + lo.cantidad + " }");

                        flag = 1;
                    }

                    sb.Append("];");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                    flag = 0;

                    if (dataContLoc.Count > 0)
                    {
                        sb = new StringBuilder();
                        sb.Append("Morris.Bar({");
                        sb.Append("element: 'morris-bar-chartAnual',");
                        sb.Append(" data: [");

                        foreach (SP_LISTAR_ACARREOS_X_PLAYA_Result lo in dataContLoc)
                        {
                            if (flag == 0)
                                sb.Append("{ area: '" + lo.playa_acarreo.ToString() + "', cantidad: " + lo.cantidad + "}");
                            else
                                sb.Append(",{ area: '" + lo.playa_acarreo.ToString() + "', cantidad: " + lo.cantidad + "}");
                            flag = 1;
                        }

                        sb.Append("],");

                        sb.Append("xkey: 'area',");
                        sb.Append("ykeys: ['cantidad'],");
                        sb.Append("labels: ['cantidad'],");
                        sb.Append("barRatio: 0.4,");
                        sb.Append("xLabelAngle: 35,");
                        sb.Append("hideHover: 'auto',");
                        sb.Append("resize: true");
                        sb.Append("});");

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                    }
                }
            }

            /**********************************************************************************************************/

            if (id_grafico == 2)
            {
                lblflot.InnerText = "Controles por agente";
                lblbar.InnerText = "Controles por agente";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_CONTROLES_X_AGENTE(fecDesde, fecHasta).ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_CONTROLES_X_AGENTE_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.nombre_agente.ToString() + "', data: " + lo.cantidad + " }");
                        else
                            sb.Append(",{label: '" + lo.nombre_agente.ToString() + "', data: " + lo.cantidad + " }");

                        flag = 1;
                    }

                    sb.Append("];");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                    flag = 0;

                    if (dataContLoc.Count > 0)
                    {
                        sb = new StringBuilder();
                        sb.Append("Morris.Bar({");
                        sb.Append("element: 'morris-bar-chartAnual',");
                        sb.Append(" data: [");

                        foreach (SP_LISTAR_CONTROLES_X_AGENTE_Result lo in dataContLoc)
                        {
                            if (flag == 0)
                                sb.Append("{ area: '" + lo.nombre_agente.ToString() + "', cantidad: " + lo.cantidad + "}");
                            else
                                sb.Append(",{ area: '" + lo.nombre_agente.ToString() + "', cantidad: " + lo.cantidad + "}");
                            flag = 1;
                        }

                        sb.Append("],");

                        sb.Append("xkey: 'area',");
                        sb.Append("ykeys: ['cantidad'],");
                        sb.Append("labels: ['cantidad'],");
                        sb.Append("barRatio: 0.4,");
                        sb.Append("xLabelAngle: 35,");
                        sb.Append("hideHover: 'auto',");
                        sb.Append("resize: true");
                        sb.Append("});");

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                    }
                }
            }

            /**********************************************************************************************************/

            if (id_grafico == 3)
            {
                lblflot.InnerText = "Controles por localidad";
                lblbar.InnerText = "Controles por localidad";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_CONTROLES_X_LOCALIDAD(fecDesde, fecHasta).ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_CONTROLES_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");
                        else
                            sb.Append(",{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");

                        flag = 1;
                    }

                    sb.Append("];");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                    flag = 0;

                    if (dataContLoc.Count > 0)
                    {
                        sb = new StringBuilder();
                        sb.Append("Morris.Bar({");
                        sb.Append("element: 'morris-bar-chartAnual',");
                        sb.Append(" data: [");

                        foreach (SP_LISTAR_CONTROLES_X_LOCALIDAD_Result lo in dataContLoc)
                        {
                            if (flag == 0)
                                sb.Append("{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            else
                                sb.Append(",{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            flag = 1;
                        }

                        sb.Append("],");

                        sb.Append("xkey: 'area',");
                        sb.Append("ykeys: ['cantidad'],");
                        sb.Append("labels: ['cantidad'],");
                        sb.Append("barRatio: 0.4,");
                        sb.Append("xLabelAngle: 35,");
                        sb.Append("hideHover: 'auto',");
                        sb.Append("resize: true");
                        sb.Append("});");

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                    }
                }
            }

            /**********************************************************************************************************/

            if (id_grafico == 4)
            {
                lblflot.InnerText = "Denuncias por localidad";
                lblbar.InnerText = "Denuncias por localidad";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_DENUNCIAS_X_LOCALIDAD(fecDesde, fecHasta).ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_DENUNCIAS_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");
                        else
                            sb.Append(",{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");

                        flag = 1;
                    }

                    sb.Append("];");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                    flag = 0;

                    if (dataContLoc.Count > 0)
                    {
                        sb = new StringBuilder();
                        sb.Append("Morris.Bar({");
                        sb.Append("element: 'morris-bar-chartAnual',");
                        sb.Append(" data: [");

                        foreach (SP_LISTAR_DENUNCIAS_X_LOCALIDAD_Result lo in dataContLoc)
                        {
                            if (flag == 0)
                                sb.Append("{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            else
                                sb.Append(",{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            flag = 1;
                        }

                        sb.Append("],");

                        sb.Append("xkey: 'area',");
                        sb.Append("ykeys: ['cantidad'],");
                        sb.Append("labels: ['cantidad'],");
                        sb.Append("barRatio: 0.4,");
                        sb.Append("xLabelAngle: 35,");
                        sb.Append("hideHover: 'auto',");
                        sb.Append("resize: true");
                        sb.Append("});");

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                    }
                }
            }

            /**********************************************************************************************************/

            if (id_grafico == 5)
            {
                lblflot.InnerText = "Infracciones por categoría";
                lblbar.InnerText = "Infracciones por categoría";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_INFRACCIONES_X_CATEGORIA(fecDesde, fecHasta).ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_INFRACCIONES_X_CATEGORIA_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.categoria_infraccion.ToString() + "', data: " + lo.cantidad + " }");
                        else
                            sb.Append(",{label: '" + lo.categoria_infraccion.ToString() + "', data: " + lo.cantidad + " }");

                        flag = 1;
                    }

                    sb.Append("];");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                    flag = 0;

                    if (dataContLoc.Count > 0)
                    {
                        sb = new StringBuilder();
                        sb.Append("Morris.Bar({");
                        sb.Append("element: 'morris-bar-chartAnual',");
                        sb.Append(" data: [");

                        foreach (SP_LISTAR_INFRACCIONES_X_CATEGORIA_Result lo in dataContLoc)
                        {
                            if (flag == 0)
                                sb.Append("{ area: '" + lo.categoria_infraccion.ToString() + "', cantidad: " + lo.cantidad + "}");
                            else
                                sb.Append(",{ area: '" + lo.categoria_infraccion.ToString() + "', cantidad: " + lo.cantidad + "}");
                            flag = 1;
                        }

                        sb.Append("],");

                        sb.Append("xkey: 'area',");
                        sb.Append("ykeys: ['cantidad'],");
                        sb.Append("labels: ['cantidad'],");
                        sb.Append("barRatio: 0.4,");
                        sb.Append("xLabelAngle: 35,");
                        sb.Append("hideHover: 'auto',");
                        sb.Append("resize: true");
                        sb.Append("});");

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                    }
                }
            }

            /**********************************************************************************************************/

            if (id_grafico == 6)
            {
                lblflot.InnerText = "Infracciones por localidad";
                lblbar.InnerText = "Infracciones por localidad";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_INFRACCIONES_X_LOCALIDAD(fecDesde, fecHasta).ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_INFRACCIONES_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");
                        else
                            sb.Append(",{label: '" + lo.localidad.ToString() + "', data: " + lo.cantidad + " }");

                        flag = 1;
                    }

                    sb.Append("];");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosPie", "\n llenarFlotPie(dataMen);", true);

                    flag = 0;

                    if (dataContLoc.Count > 0)
                    {
                        sb = new StringBuilder();
                        sb.Append("Morris.Bar({");
                        sb.Append("element: 'morris-bar-chartAnual',");
                        sb.Append(" data: [");

                        foreach (SP_LISTAR_INFRACCIONES_X_LOCALIDAD_Result lo in dataContLoc)
                        {
                            if (flag == 0)
                                sb.Append("{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            else
                                sb.Append(",{ area: '" + lo.localidad.ToString() + "', cantidad: " + lo.cantidad + "}");
                            flag = 1;
                        }

                        sb.Append("],");

                        sb.Append("xkey: 'area',");
                        sb.Append("ykeys: ['cantidad'],");
                        sb.Append("labels: ['cantidad'],");
                        sb.Append("barRatio: 0.4,");
                        sb.Append("xLabelAngle: 35,");
                        sb.Append("hideHover: 'auto',");
                        sb.Append("resize: true");
                        sb.Append("});");

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "bAnual", "\n" + sb.ToString(), true);
                    }
                }
            }
        }
    }
}
 
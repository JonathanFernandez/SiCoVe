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
                ddlGraficos.Items.Insert(0, new ListItem("Controles por Zona", "0"));
                ddlGraficos.Items.Insert(1, new ListItem("Infracciones por Zona", "1"));
                ddlGraficos.Items.Insert(2, new ListItem("Acarreos por Zona", "3"));
                ddlGraficos.Items.Insert(3, new ListItem("Denuncias por Zona", "4"));
                ddlGraficos.Items.Insert(4, new ListItem("Infracciones por Categoría", "5"));
                ddlGraficos.SelectedIndex = 0;

                /**********************************************************************************************************************/

                lblflot.InnerText = "Controles por Zona";
                lblbar.InnerText = "Controles por Zona";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_CONTROLES_X_LOCALIDAD().ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_CONTROLES_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.LOCALIDAD.ToString() + "', data: " + lo.CANTIDAD + " }");
                        else
                            sb.Append(",{label: '" + lo.LOCALIDAD.ToString() + "', data: " + lo.CANTIDAD + " }");

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
                                sb.Append("{ area: '" + lo.LOCALIDAD.ToString() + "', cantidad: " + lo.CANTIDAD + "}");
                            else
                                sb.Append(",{ area: '" + lo.LOCALIDAD.ToString() + "', cantidad: " + lo.CANTIDAD + "}");
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

        protected void ddlGraficos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id_grafico = Convert.ToInt16(ddlGraficos.SelectedValue);

            if (id_grafico == 0)
            {
                lblflot.InnerText = "Controles por Zona";
                lblbar.InnerText = "Controles por Zona";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_CONTROLES_X_LOCALIDAD().ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_CONTROLES_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.LOCALIDAD.ToString() + "', data: " + lo.CANTIDAD + " }");
                        else
                            sb.Append(",{label: '" + lo.LOCALIDAD.ToString() + "', data: " + lo.CANTIDAD + " }");

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
                                sb.Append("{ area: '" + lo.LOCALIDAD.ToString() + "', cantidad: " + lo.CANTIDAD + "}");
                            else
                                sb.Append(",{ area: '" + lo.LOCALIDAD.ToString() + "', cantidad: " + lo.CANTIDAD + "}");
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

            if (id_grafico == 1)
            {
                lblflot.InnerText = "Infracciones por Zona";
                lblbar.InnerText = "Infracciones por Zona";

                StringBuilder sb;

                int flag = 0;
                var dataContLoc = sicove.SP_LISTAR_CONTROLES_X_LOCALIDAD().ToList();

                if (dataContLoc.Count > 0)
                {
                    sb = new StringBuilder();
                    sb.Append("var dataMen = [");

                    foreach (SP_LISTAR_CONTROLES_X_LOCALIDAD_Result lo in dataContLoc)
                    {
                        if (flag == 0)
                            sb.Append("{label: '" + lo.LOCALIDAD.ToString() + "', data: " + lo.CANTIDAD + " }");
                        else
                            sb.Append(",{label: '" + lo.LOCALIDAD.ToString() + "', data: " + lo.CANTIDAD + " }");

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
                                sb.Append("{ area: '" + lo.LOCALIDAD.ToString() + "', cantidad: " + lo.CANTIDAD + "}");
                            else
                                sb.Append(",{ area: '" + lo.LOCALIDAD.ToString() + "', cantidad: " + lo.CANTIDAD + "}");
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
 
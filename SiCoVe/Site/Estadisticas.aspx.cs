using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Text;

namespace SiCoVe.Site
{
    public partial class Estadisticas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            //sb.Append("var dataMen = [");

            //foreach (SP_HSE_INFORME_CANTIDAD_TIPO_OBS_MENSUAL_Result ob in dataMensual)
            //{

            //if (flag == 0)
            //    sb.Append("{label: '" + ob.OBSERVACION + " /" + ob.CANTIDAD.ToString() + "', data: " + ob.CANTIDAD.ToString() + " }");
            //else
            //    sb.Append(",{label: '" + ob.OBSERVACION + " / " + ob.CANTIDAD.ToString() + "', data: " + ob.CANTIDAD.ToString() + " }");
            //flag = 1;

            //}

            //sb.Append("];");

            sb.Append("var dataMen = [");
            sb.Append("{label: '" + "Juan" + "', data: " + "10" + " }");
            sb.Append(",{label: '" + "Sobrile" + "', data: " + "20" + " }");
            sb.Append("];");

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Graficos", "\n" + sb.ToString(), true);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "GraficosFun", "\n llenarFlotPie(dataMen);", true);
        }
    }
}
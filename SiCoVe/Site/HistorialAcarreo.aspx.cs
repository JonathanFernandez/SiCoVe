using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class HistorialAcarreo : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                listadoAcarreo();
        }

        public void listadoAcarreo()
        {
            GvHistorialAcarreo.DataSource = sicove.SP_LISTADO_ACARREO().ToList();
            GvHistorialAcarreo.DataBind();
        }
    }
}
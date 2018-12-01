using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe.Site
{
    public partial class HistorialControles : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
                listadoControles();
        }

        public void listadoControles()
        {
            GvHistorialControles.DataSource = sicove.SP_LISTADO_CONTROLES(null, null, null).ToList();
            GvHistorialControles.DataBind();
        }
    }
}
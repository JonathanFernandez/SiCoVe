using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public partial class ListarAutoridad : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GvAutoridad.DataSource = sicove.SP_LISTADO_AGENTE_TRANSITO(null, null, null).ToList();
                GvAutoridad.DataBind();

                //    DataTable dt = new DataTable();
                //    dt.Columns.Add(new DataColumn("col1"));
                //    dt.Columns.Add(new DataColumn("col2"));
                //    dt.Columns.Add(new DataColumn("col3"));

                //    for (int i = 0; i < 10; i++)
                //    {
                //        DataRow dr = dt.NewRow();
                //        dt.Rows.Add(dr);
                //    }
                //    GvRemolque.DataSource = dt;
                //    GvRemolque.DataBind();
            }
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}
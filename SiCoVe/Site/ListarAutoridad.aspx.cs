using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SiCoVe
{
    public partial class ListarAutoridad : SiCoVeMaster
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //tabla a modo de muestra
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add(new DataColumn("col1"));
                dt.Columns.Add(new DataColumn("col2"));
                dt.Columns.Add(new DataColumn("col3"));

                for (int i = 0; i < 10; i++)
                {
                    DataRow dr = dt.NewRow();
                    dt.Rows.Add(dr);
                }
                GvAutoridad.DataSource = dt;
                GvAutoridad.DataBind();
            }
        }
    }
}
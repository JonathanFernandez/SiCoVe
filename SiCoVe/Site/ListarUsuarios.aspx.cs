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
    public partial class ListarUsuarios : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //tabla a modo de muestra
            if (!IsPostBack)
            {
                listadoUsuarios();
            }
        }
        public void listadoUsuarios()
        {
            GvUsuarios.DataSource = sicove.SP_LISTADO_CONDUCTORES(null, null, null).ToList();
            GvUsuarios.DataBind();
        }
    }
}
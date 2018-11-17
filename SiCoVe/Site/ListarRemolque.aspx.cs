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
    public partial class ListarRemolque : SiCoVeMaster
    {
        public sicoveEntities sicove = new sicoveEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //tabla a modo de muestra
            if (!Page.IsPostBack)
            {
                GvRemolque.DataSource = sicove.SP_LISTADO_PERSONAL_REMOLQUE(null,null,null).ToList();
                GvRemolque.DataBind();

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

        protected void ListadoRemolque()
        {
            GvRemolque.DataSource = sicove.SP_LISTADO_PERSONAL_REMOLQUE(null, null, null).ToList();
            GvRemolque.DataBind();
        }
        protected void GvRemolque_delete(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GvRemolque.DataKeys[e.RowIndex].Values["id"];

            persona per = (from p in sicove.personas where p.id == id select p).FirstOrDefault();
            //borro los usuarios relacionados a la persona
            foreach (var u in sicove.usuarios.Where(u => u.persona_id == per.id))
            {
                //borro los agentes de transito relacionados a la persona
                foreach (var a in sicove.personal_remolque.Where(a => a.usuario_id == u.id))
                {
                    sicove.personal_remolque.Remove(a);
                }
                sicove.usuarios.Remove(u);

            }

            sicove.personas.Remove(per);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertIns", "alert('Usuario eliminado con éxito');", true);
            sicove.SaveChanges();


            ListadoRemolque();
        }

        protected void GvRemolque_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GvRemolque.DataKeys[index].Value);

            }
        }
}
}
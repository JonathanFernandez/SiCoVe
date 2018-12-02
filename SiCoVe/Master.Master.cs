using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public partial class Master : System.Web.UI.MasterPage
    {
        public usuario userLog = new usuario();
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
                Response.Redirect("~/Login.aspx", true);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (((usuario)Session["Usuario"]) != null)
            {
                userLog = ((usuario)Session["Usuario"]);
                //lblUsuario.Text = string.Format("{0} , {1}", userLog.persona.apellido, userLog.persona.nombre);
                LoadStyles();
                LoadScripts();

                
            }
            else
            {
                Response.Redirect("~/Login.aspx", false);
                //Server.Transfer("~/Login.aspx");
            }
        }

        private void LoadStyles()
        {
            HtmlHeaderStyleLink scriptStyle = new HtmlHeaderStyleLink("~/Content/vendor/bootstrap/css/bootstrap.min.css");
            scriptStyle.IncludeOn(Page.Header);

            scriptStyle = new HtmlHeaderStyleLink("~/Content/vendor/metisMenu/metisMenu.min.css");
            scriptStyle.IncludeOn(Page.Header);

            //scriptStyle = new HtmlHeaderStyleLink("~/Content/css/plugins/morris.css");
            //scriptStyle.IncludeOn(Page.Header);

            scriptStyle = new HtmlHeaderStyleLink("~/Content/dist/css/sb-admin-2.css");
            scriptStyle.IncludeOn(Page.Header);

            scriptStyle = new HtmlHeaderStyleLink("~/Content/vendor/morrisjs/morris.css");
            scriptStyle.IncludeOn(Page.Header);

            scriptStyle = new HtmlHeaderStyleLink("~/Content/vendor/font-awesome/css/font-awesome.min.css");
            scriptStyle.IncludeOn(Page.Header);

            scriptStyle = new HtmlHeaderStyleLink("~/Content/jquery-ui.css");
            scriptStyle.IncludeOn(Page.Header);

            scriptStyle = new HtmlHeaderStyleLink("~/Content/bootstrap-datetimepicker.min.css");
            scriptStyle.IncludeOn(Page.Header);
        }

        private void LoadScripts()
        {
            HtmlHeaderJSLink scriptLink = new HtmlHeaderJSLink("~/Content/vendor/jquery/jquery.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Scripts/moment.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Scripts/jquery-3.3.1.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/jquery/jquery.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/bootstrap/js/bootstrap.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Scripts/jquery-ui.js");
            scriptLink.IncludeOn(Page.Header);
            
            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/metisMenu/metisMenu.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/dist/js/sb-admin-2.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/raphael/raphael.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/morrisjs/morris.js");
            scriptLink.IncludeOn(Page.Header);

            //scriptLink = new HtmlHeaderJSLink("~/Content/vendor/morrisjs/morris.min.js");
            //scriptLink.IncludeOn(Page.Header);

            //scriptLink = new HtmlHeaderJSLink("~/Content/data/morris-data.js");
            //scriptLink.IncludeOn(Page.Header); 


            scriptLink = new HtmlHeaderJSLink("~/Scripts/master.js");
            scriptLink.IncludeOn(Page.Header);

            //INI - Agregado para pantalla Estadisticas
            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/flot/excanvas.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/flot/jquery.flot.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/flot/jquery.flot.pie.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/flot/jquery.flot.resize.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/flot/jquery.flot.time.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/flot-tooltip/jquery.flot.tooltip.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/data/flot-data.js");
            scriptLink.IncludeOn(Page.Header);
            //FIN - Agregado para pantalla Estadisticas

            scriptLink = new HtmlHeaderJSLink("~/Scripts/bootstrap-datetimepicker.min.js");
            scriptLink.IncludeOn(Page.Header);

        }
    }
}
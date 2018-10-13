using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiCoVe
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LoadScripts();

            LoadStyles();
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

        }

        private void LoadScripts()
        {
            //imgPirelli.Src = "~/Content/img/logo_pirelli_small.svg";
            //imgPirelli.Src = "~/Content/img/logo_pirelli_chico.jpg";

            HtmlHeaderJSLink scriptLink = new HtmlHeaderJSLink("~/Content/vendor/jquery/jquery.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/bootstrap/js/bootstrap.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/metisMenu/metisMenu.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/raphael/raphael.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/vendor/morrisjs/morris.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/data/morris-data.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/js/plugins/jquery-validation-1.14.0/localization/messages_es.min.js");
            scriptLink.IncludeOn(Page.Header);

            scriptLink = new HtmlHeaderJSLink("~/Content/dist/js/sb-admin-2.js");
            scriptLink.IncludeOn(Page.Header);

            //scriptLink = new HtmlHeaderJSLink("~/Content/js/masterPage.js");
            //scriptLink.IncludeOn(Page.Header);

            //scriptLink = new HtmlHeaderJSLink("~/Content/js/clockface.js");
            //scriptLink.IncludeOn(Page.Header);

            //scriptLink = new HtmlHeaderJSLink("~/Content/js/xtableheaderfixed.js");
            //scriptLink.IncludeOn(Page.Header);
  
        }
    }
}
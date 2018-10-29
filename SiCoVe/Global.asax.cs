using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public class Global : HttpApplication
    {
        public usuario u;
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started
            if (u != null)
                Session["Usuario"] = u;
            if (((usuario)Session["Usuario"]) == null)
            {
                Response.Redirect("~/Login");

            }
        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends. 
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.
            //Response.Redirect("~/Login.aspx",false);
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Session.RemoveAll();


        }
    }
}
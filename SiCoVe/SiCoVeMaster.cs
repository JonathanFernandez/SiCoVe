using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public class SiCoVeMaster : System.Web.UI.Page
    {
        public usuario UserSession
        {
            get
            {
                return (usuario)Session["Usuario"];
            }
        }

    }
}
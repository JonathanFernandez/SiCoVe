using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace SiCoVe
{
    public class HtmlHeaderStyleLink : LiteralControl
    {
        private string url;
        public string Url
        {
            get { return url; }
        }

        public HtmlHeaderStyleLink(string url)
        {
            this.url = url;
            this.Text = url;
        }
        public void IncludeOn(HtmlHead header)
        {
            string includeStr = this.ResolveUrl(this.url);
            bool alreadyExists = false;
            HtmlHeaderStyleLink aHTCIncludeControl;
            if (header != null)
            {
                foreach (Control control in header.Controls)
                {
                    aHTCIncludeControl = control as HtmlHeaderStyleLink;
                    if ((aHTCIncludeControl != null) && (String.Compare(aHTCIncludeControl.Url, includeStr, StringComparison.CurrentCultureIgnoreCase) == 0))
                        alreadyExists = true;
                }
                if (!alreadyExists)
                {
                    var IncludeCssSection = header.FindControl("IncludeCssSection");
                    IncludeCssSection.Controls.Add(this);
                }
            }
        }

        public override void RenderControl(HtmlTextWriter writer)
        {
            this.Render(writer);
        }

        protected override void Render(HtmlTextWriter writer)
        {
            string includeStr = this.ResolveUrl(this.url);
            writer.Write(@"<link rel=""Stylesheet"" type=""text/css"" href=""" + ResolveUrl(this.Url) + "\" >");
        }
    }
}

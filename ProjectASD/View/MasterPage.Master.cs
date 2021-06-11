using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASD.View
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        private String HL_Class = "nav-link ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public String HyperLinkHomeClass { set { HyperLinkHome.CssClass = HL_Class + value; }  }
        public String HyperLinkWeightClass { set { HyperLinkWeight.CssClass = HL_Class + value; } }
        public String HyperLinkDistanceClass { set { HyperLinkDistance.CssClass = HL_Class + value; } }
    }
}
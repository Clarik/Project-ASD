using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASD.View.HomePage
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWeightConverter_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Weight/WeightConverterPage.aspx");
        }

        protected void btnDistanceConverter_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Distance/DistanceConverterPage.aspx");
        }
    }
}
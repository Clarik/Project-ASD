using ProjectASD.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace ProjectASD.View.HomePage
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((MasterPage)Master).HyperLinkHomeClass = "active";
            if (!IsPostBack)
            {
                List<string> unitList = TypeController.getWeightList();
                ddlFrom.DataSource = unitList;
                ddlFrom.DataBind();
                ddlTo.DataSource = unitList;
                ddlTo.DataBind();
            }
        }

        protected void ButtonWeightConverter_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Weight/WeightConverterPage.aspx");
        }

        protected void ButtonDistanceConverter_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Distance/DistanceConverterPage.aspx");
        }
    }
}
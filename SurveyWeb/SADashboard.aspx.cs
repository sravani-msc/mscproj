using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SADashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbluname.Text = Session["username"] + "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SACreateStudy.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SAEditStudy.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("SAViewStudy.aspx");
        }
    }
}
using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public SurveyEntities1 se1 = new SurveyEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usertype"]==null)
            {
                btnsignout.Visible = false;
            }
            else
            {
                btnsignout.Visible = true;
            }
        }

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
        }
    }
}
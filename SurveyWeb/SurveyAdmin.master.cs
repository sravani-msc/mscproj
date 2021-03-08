using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SurveyAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usertype"] == null ||
                Session["usertype"].ToString() != "admin")
            {
                Response.Redirect("home.aspx?msg=illegalaccess");
            }
        }
    }
}
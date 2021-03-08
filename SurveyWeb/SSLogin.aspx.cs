using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SSLogin : System.Web.UI.Page
    {

        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            se1 = (this.Master.Master as Site1).se1;
            if (!IsPostBack)
            {

            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
                if (TextBox1.Text=="admin" &&  TextBox2.Text == "secret")
                {
                    Session["usertype"] = "supervisor";
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("ssdashboard.aspx");
                }
                else
                {
                    lblmsg.Text = "wrong pwd";
                }
        }
    }
}
using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SCLogin : System.Web.UI.Page
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
            SCUser u = se1.SCUsers.Find(TextBox1.Text);
            if (u == null)
            {
                lblmsg.Text = "wrong uid";
            }
            else
            {
                if (TextBox2.Text == u.SCPassword)
                {
                    Session["usertype"] = "client";
                    Session["username"] = TextBox1.Text;
                    Session["scode"] = u.SCode;
                    Session["stype"] = se1.Studies.Find(u.SCode).StudyType;
                    Response.Redirect("scdashboard.aspx");
                }
                else
                {
                    lblmsg.Text = "wrong pwd";
                }
            }
        }
    }
}
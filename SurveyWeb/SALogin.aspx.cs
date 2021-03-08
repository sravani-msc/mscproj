using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SALogin : System.Web.UI.Page
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
            SAUser u = se1.SAUsers.Find(TextBox1.Text);
            if (u == null)
            {
                lblmsg.Text = "wrong uid";
            }
            else
            {
                if (TextBox2.Text == u.SAPassword)
                {
                    Session["usertype"] = "admin";
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("sadashboard.aspx");
                }
                else
                {
                    lblmsg.Text = "wrong pwd";
                }
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
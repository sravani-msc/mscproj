using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SARegister : System.Web.UI.Page
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
            try
            {
                if (TextBox2.Text != TextBox3.Text)
                {
                    lblmsg.Text = "pwds dont match";
                    return;
                }
                SAUser u = new SAUser();
                u.SAEmailid = TextBox1.Text;
                u.SAPassword = TextBox2.Text;
                se1.SAUsers.Add(u);
                se1.SaveChanges();
                Response.Redirect("sadashboard.aspx");
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
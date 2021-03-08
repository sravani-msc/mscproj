using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SCStartSurvey : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            se1 = (this.Master.Master as Site1).se1;
            if (!IsPostBack)
            {
                try
                {
                    int scode = Convert.ToInt32(Session["scode"]);
                    Study study = se1.Studies.Find(scode);
                    TextBox1.Text = study.ConsentForm;
                }

                catch (Exception exp)
                {
                    lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC" + Session["stype"] + ".aspx");
        }
    }
}
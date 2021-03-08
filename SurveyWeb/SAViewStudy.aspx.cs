using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SAViewStudy : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            se1 = (this.Master.Master as Site1).se1;
            if (!IsPostBack)
            {
                try {
                    String saemailid = Session["username"] + "";
                    rbStudyRadios.DataSource =
                         (from row in se1.Studies where row.saemailid == saemailid select row).ToList();
                    rbStudyRadios.DataTextField = "StudyName";
                    rbStudyRadios.DataValueField = "SCode";
                    rbStudyRadios.DataBind();
                }
                catch (Exception exp)
                {
                    lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            Session["scode"] = rbStudyRadios.SelectedItem.Value;
            Response.Redirect("SAShowStudy.aspx");
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }
    }
}
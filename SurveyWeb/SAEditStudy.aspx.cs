using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SAEditStudy : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            try { 
            se1 = (this.Master.Master as Site1).se1;

            if (!IsPostBack)
            {

                String saemailid = Session["username"]+"";
                rbStudyRadios.DataSource = 
                    (from row in se1.Studies where row.saemailid==saemailid select row).ToList();
                rbStudyRadios.DataTextField = "StudyName";
                rbStudyRadios.DataValueField = "SCode";
                rbStudyRadios.DataBind();

                    if (rbStudyRadios.Items.Count == 0)
                    {
                        Button1.Visible = false;
                        lblmsg.Text = "no studies found!";
                    }
            }
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["scode"] = rbStudyRadios.SelectedValue;
            Response.Redirect("SAEditStudyOptions.aspx");
        }
    }
}
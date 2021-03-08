using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SCDashboard : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                se1 = (this.Master.Master as Site1).se1;
                if (!IsPostBack)
                {
                    int scode = Convert.ToInt32(Session["scode"]);
                    string scuser = Session["username"] + "";
                    List<string> studytypessofar = (from row in se1.SCAnswers
                        where
                        row.Scode == scode
                        && row.SCEmailid == scuser
                        select row.studytype).ToList();

                    List<string> studytypes =
                        (from row in se1.StudyQuestions
                         where !(studytypessofar).Contains(row.StudyType)
                         select row.StudyType).Distinct()
                        .ToList();
                    DropDownList1.DataSource = studytypes;
                    DropDownList1.DataBind();
                }
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Session["stype"] = DropDownList1.SelectedItem.Text;
                Response.Redirect("SCStartSurvey.aspx");
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }
    }
}
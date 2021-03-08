using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SCCTEQ : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            se1 = (this.Master.Master as Site1).se1;

            if (!IsPostBack)
            {

                string SCEmailid = Session["username"] + "";
                int scode = Convert.ToInt32(Session["scode"]);

                // check for already answered this survey

                //List<SCAnswer> scans2 = 
                //    (from scans in se1.SCAnswers  select scans).ToList();
                //if(scans2.Count()>0)
                //{
                //    Response.Redirect("scdashboard.aspx");
                //    return;
                //}

                StudyQuestion sq =
                     (from question in se1.StudyQuestions
                      where question.Scode==scode && question.StudyType=="CTEQ"
                      select question).FirstOrDefault();
                if (sq != null)
                {
                    TextBox1.Text = sq.q1;
                    TextBox2.Text = sq.q2;
                    String[] values;
                    values = sq.q3.Split('$');
                    TextBox31.Text = values[0];
                    TextBox32.Text = values[1];
                    TextBox4.Text = sq.q4;
                    TextBox5.Text = sq.q5;
                    values = sq.q6.Split('$');
                    TextBox61.Text = values[0];
                    TextBox62.Text = values[1];
                    values = sq.q7.Split('$');
                    TextBox71.Text = values[0];
                    TextBox72.Text = values[1];

                }
                else
                {
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SCAnswer scans = new SCAnswer();
            scans.SCEmailid = Session["username"] +"";
            scans.Scode = Convert.ToInt32(Session["scode"] );
            scans.studytype = "CTEQ";
            scans.SurveyDate = DateTime.Now;

            se1.SCAnswers.Add(scans);
            se1.SaveChanges();

            SCAnswerDetail scad = new SCAnswerDetail();
            scad.sno = scans.sno;

            //scad.a1 = rb1yes.Checked ? rb1yes.Text : rb1no.Text;
            //scad.a2 = rb2yes.Checked ? rb2yes.Text : rb2no.Text;
            //scad.a3 = TextBox32.Text;
            //scad.a4 = rb4.SelectedItem.Text;
            //scad.a5 = rb5.SelectedItem.Text;
            //scad.a6 = rb6y.Checked ? rb6y.Text : rb6n.Text;
            //scad.a7 = TextBox73.Text;


            scad.a1 = rb1yes.Checked ? "1" : "0";
            scad.a2 = rb2yes.Checked ? "1" : "0";
            scad.a3 = TextBox32.Text;
            scad.a4 = rb4.SelectedItem.Value;
            scad.a5 = rb5.SelectedItem.Value;
            scad.a6 = rb6y.Checked ? "1" : "0";
            scad.a7 = TextBox73.Text;


            se1.SCAnswerDetails.Add(scad);
         
            se1.SaveChanges();

            Response.Redirect("SCDashboard.aspx");
        }

    }
}
﻿using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SACTHQ : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            se1 = (this.Master.Master as Site1).se1;

            if(!IsPostBack)
            {
                int scode= Convert.ToInt32(Session["scode"]);
                String stype = Session["stype"] + "";
                StudyQuestion sq =
                    (from row in se1.StudyQuestions where 
                        row.Scode==scode && row.StudyType==stype
                        select row).FirstOrDefault();
                if(sq!=null)
                {
                    TextBox1.Text= sq.q1;
                    TextBox2.Text= sq.q2;
                    TextBox31.Text = sq.q3;
                    TextBox4.Text= sq.q4;
                    TextBox5.Text= sq.q5;
                    String[] values = sq.q6.Split('$');
                    TextBox61.Text = values[0];
                    TextBox62.Text = values[1];
                    TextBox63.Text = values[2];
                    TextBox64.Text = values[3];
                    TextBox65.Text = values[4];
                    TextBox66.Text = values[5];
                    TextBox67.Text = values[6];
                    TextBox68.Text = values[7];
                    TextBox71.Text = sq.q7;

                    ViewState["mode"] = "edit";
                }
                else
                {
                    ViewState["mode"] = "save";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                StudyQuestion sq = null;
                if (ViewState["mode"] + "" == "save")
                {
                    sq = new StudyQuestion();
                }
                else
                {
                    sq = se1.StudyQuestions.Find(Convert.ToInt32(Session["scode"]));
                }

                sq.q1 = TextBox1.Text;
                sq.q2 = TextBox2.Text;
                sq.q3 = TextBox31.Text;
                sq.q4 = TextBox4.Text;
                sq.q5 = TextBox5.Text;
                sq.q6 = TextBox61.Text + "$" + TextBox62.Text + "$" + TextBox63.Text + "$" + TextBox64.Text
                    + "$" + TextBox65.Text + "$" + TextBox66.Text + "$" + TextBox67.Text + "$" + TextBox68.Text;
                sq.q7 = TextBox71.Text;
                sq.Scode = Convert.ToInt32(Session["scode"]);
                sq.StudyType = Session["stype"] + "";

                if (ViewState["mode"] + "" == "save")
                {
                    se1.StudyQuestions.Add(sq);
                }
                else
                {
                }

                se1.SaveChanges();
                Response.Redirect("SADashboard.aspx?msg=success");
            }
            catch(Exception exp)
            {
                Response.Write("error:"+exp.ToString());
            }
        }
    }
}
using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SAEditStudyOptions : System.Web.UI.Page
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

                    List<string> studytypessofar =
                        (from row in se1.StudyQuestions where row.Scode == scode select row.StudyType).Distinct().ToList();

                    if (studytypessofar.Count() >= 3)
                    {
                        Button2.Visible = true;
                        //Button6.Visible = true;
                        TextBox1.Visible = true;

                        int c = (from row in se1.SCUsers where row.SCode == scode select row.SCEmailid).Count();
                        Study s = se1.Studies.Find(scode);

                        if (c > 0)
                        {
                            Button2.Text += ("Accounts Already Exists");
                        }
                    }
                    else
                    {
                        Button2.Visible = false;
                        //Button6.Visible = false;
                        TextBox1.Visible = false;
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
            try
            {
                Session["stype"] = ddlStudytypes.SelectedItem.Text;
                if (RadioButton1.Checked)
                    Response.Redirect("SAAddClients.aspx");
                else if (RadioButton2.Checked)
                    Response.Redirect("SA" + ddlStudytypes.SelectedItem.Text + ".aspx");
                else if (RadioButton3.Checked)
                {
                    int scode = int.Parse(Session["scode"] + "");
                    Study study = se1.Studies.Find(scode);
                    se1.Studies.Remove(study);
                    lblmsg.Text = "study deleted";
                    se1.SaveChanges();
                    Response.Redirect("SADashboard.aspx");
                }
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int scode = Convert.ToInt32(Session["scode"]);
                List<SCUser> scusers = (from row in se1.SCUsers where row.SCode == scode select row).ToList();
                se1.SCUsers.RemoveRange(scusers);
                se1.SaveChanges();

                Random r = new Random();

                String msg = "";


                Study s = se1.Studies.Find(scode);



                for (int i = 1; i <= s.NumStudents; i++)
                {
                    SCUser u = new SCUser();
                    u.SCode = scode;
                    String rnduid = "";
                    String rndpwd = "";
                    for (int j = 1; j <= 5; j++)
                    {
                        rnduid += (char)(65 + r.Next(26));
                        rndpwd += (char)(65 + r.Next(26));
                    }
                    u.SCEmailid = rnduid;
                    u.SCPassword = rndpwd;
                    msg += rnduid + " , " + rndpwd;
                    msg += "\r\n";

                    se1.SCUsers.Add(u);
                }
                se1.SaveChanges();
                TextBox1.Text = msg;
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                File.WriteAllText(Server.MapPath("logins.csv"), TextBox1.Text);

                Response.ContentType = "application/csv";
                Response.AppendHeader("Content-Disposition", "attachment; filename=logins.csv");
                Response.TransmitFile(Server.MapPath("logins.csv"));
                Response.End();
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }
    }
}
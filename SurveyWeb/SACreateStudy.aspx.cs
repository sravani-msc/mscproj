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
    public partial class SACreateStudy : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            se1 = (this.Master.Master as Site1).se1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SurveyWeb.App_Code.Study s = new SurveyWeb.App_Code.Study();

            Study s = new Study();
            s.StudyName = tbStudyname.Text;
            s.NumStudents = int.Parse(tbNumstudents.Text);
            s.SchoolName = tbClientschoolname.Text;
            s.saemailid = Session["username"]+"";

            se1.Studies.Add(s);
            se1.SaveChanges();

            Session["studypurpose"] = "view";

            lblmsg.Text = "study saved ";
            //Response.Redirect("SAViewStudy.aspx");
            //Response.Redirect("SAEditStudy.aspx");
            hdnstudy.Value = s.SCode + "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Random r = new Random();

            String msg = "";

            for (int i = 1; i <= int.Parse(tbNumstudents.Text); i++)
            {
                SCUser u = new SCUser();
                u.SCode = int.Parse(hdnstudy.Value);
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

        protected void Button6_Click(object sender, EventArgs e)
        {
            File.WriteAllText(Server.MapPath("logins.csv"), TextBox1.Text);

            Response.ContentType = "application/csv";
            Response.AppendHeader("Content-Disposition", "attachment; filename=logins.csv");
            Response.TransmitFile(Server.MapPath("logins.csv"));
            Response.End();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Study study = se1.Studies.Find(int.Parse(hdnstudy.Value));
            study.ConsentForm = TextBox2.Text;
            se1.SaveChanges();
        }
    }
}
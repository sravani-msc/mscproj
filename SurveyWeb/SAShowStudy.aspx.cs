using SurveyWeb.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SurveyWeb
{
    public partial class SAShowStudy : System.Web.UI.Page
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
                int scode = Convert.ToInt32(Session["scode"]);
                var answerdetails1 =
                    (from answerdet in se1.SCAnswerDetails
                     where answerdet.SCAnswer.Scode == scode && answerdet.SCAnswer.studytype == "CTEQ"
                     select new
                     {
                         answerdet.SCAnswer.SCEmailid,
                         answerdet.a1,
                         answerdet.a2,
                         answerdet.a3,
                         answerdet.a4,
                         answerdet.a5,
                         answerdet.a6,
                         answerdet.a7
                     });
                GridView1.DataSource = answerdetails1.ToList();
                GridView1.DataBind();
                var answerdetails2 =
                    (from answerdet in se1.SCAnswerDetails
                     where answerdet.SCAnswer.Scode == scode && answerdet.SCAnswer.studytype == "CTUQ"
                     select new
                     {
                         answerdet.SCAnswer.SCEmailid,
                         answerdet.a1,
                         answerdet.a2,
                         answerdet.a3,
                         answerdet.a4,
                         answerdet.a5,
                         answerdet.a6,
                         answerdet.a7,
                         answerdet.a8,
                         answerdet.a9
                     });
                GridView2.DataSource = answerdetails2.ToList();
                GridView2.DataBind();
                var answerdetails3 =
                    (from answerdet in se1.SCAnswerDetails
                     where answerdet.SCAnswer.Scode == scode && answerdet.SCAnswer.studytype == "CTHQ"
                     select new
                     {
                         answerdet.SCAnswer.SCEmailid,
                         answerdet.a1,
                         answerdet.a2,
                         answerdet.a3,
                         answerdet.a4,
                         answerdet.a5,
                         answerdet.a6,
                         answerdet.a7
                     }
                     );
                GridView3.DataSource = answerdetails3.ToList();
                GridView3.DataBind();
                try
                {
                    var answerdetails4 =
            (from answerdet in se1.SCAnswerDetails
             where answerdet.SCAnswer.Scode == scode && answerdet.SCAnswer.studytype == "Other"
             select new
             {
                 answerdet.SCAnswer.SCEmailid,
                 answerdet.a1, answerdet.a2, answerdet.a3, answerdet.a4, answerdet.a5, answerdet.a6, answerdet.a7
             }
             );
                    GridView4.DataSource = answerdetails4.ToList();
                    GridView4.DataBind();
                }
                catch { }

                try
                {
                    GridView1.HeaderRow.Cells[0].Text = "CTEQ";
                    GridView2.HeaderRow.Cells[0].Text = "CTUQ";
                    GridView3.HeaderRow.Cells[0].Text = "CTHQ";
                    if(GridView4==null || GridView4.HeaderRow==null)
                    { }
                    else
                        GridView4.HeaderRow.Cells[0].Text = "Other";
                }
                catch (Exception exp) { }
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }

        }
        public String Grid2Csv(GridView gridView)
        {
            if (gridView == null || gridView.HeaderRow == null)
                return "";
            try
            {
                int colcount = 8; // gridView.Columns.Count
                StringBuilder sb = new StringBuilder();
                for (int k = 0; k < colcount; k++)
                {
                    //add separator
                    sb.Append(gridView.HeaderRow.Cells[k].Text + ",");
                    //sb.Append(gridView.Columns[k].HeaderText + ',');
                }
                //append new line
                sb.Append("\r\n");
                for (int i = 0; i < gridView.Rows.Count; i++)
                {
                    for (int k = 0; k < colcount; k++)
                    {
                        //add separator
                        sb.Append(gridView.Rows[i].Cells[k].Text + ',');
                    }
                    //append new line
                    sb.Append("\r\n");
                }
                return sb.ToString();
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
                return "";
            }
        }
        public String Grid2CsvPivot(GridView gridView, int rowcount)
        {
            if (gridView == null || gridView.HeaderRow == null)
                return "";
            try
            {
                int colcount = gridView.Rows.Count; // gridView.Columns.Count
                                                    // int rowcount = 7;
                StringBuilder sb = new StringBuilder();
                //sb.Append(gridView.Rows[0].Cells[0].Text + ',');
                //for (int k = 0; k < colcount; k++)
                //{
                //    //add separator
                //    sb.Append(gridView.Rows[k].Cells[0].Text + ',');
                //    //sb.Append(gridView.Columns[k].HeaderText + ',');
                //}
                ////append new line
                //sb.Append("\r\n");
                for (int i = 0; i < rowcount; i++)
                {
                    sb.Append(gridView.HeaderRow.Cells[i].Text + ',');
                    for (int k = 0; k < colcount; k++)
                    {
                        //add separator
                        sb.Append(gridView.Rows[k].Cells[i].Text + ',');
                    }
                    //append new line
                    sb.Append("\r\n");
                }
                return sb.ToString();
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
                return "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int scode = Convert.ToInt32(Session["scode"]);

                Study study = se1.Studies.Find(scode);
                string fn = study.StudyName + "_data.csv";
                //string content = Grid2Csv(GridView1) + Grid2Csv(GridView2) + Grid2Csv(GridView3);
                string content = Grid2CsvPivot(GridView1, 7) +
                    Grid2CsvPivot(GridView2, 9) +
                    Grid2CsvPivot(GridView3, 7) +
                    Grid2CsvPivot(GridView4, 7);
                File.WriteAllText(Server.MapPath(fn), content);
                Response.ContentType = "application/csv";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fn);
                Response.TransmitFile(Server.MapPath(fn));
                Response.End();
            }
            catch (Exception exp)
            {
                lblmsg.Text = "sorry for inconvenience :" + exp.ToString();
            }
        }
    }
}
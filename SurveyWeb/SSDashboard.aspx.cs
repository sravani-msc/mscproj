using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SurveyWeb.Models;
namespace SurveyWeb
{
    public partial class SSDashboard : System.Web.UI.Page
    {
        SurveyEntities1 se1;
        protected void Page_Load(object sender, EventArgs e)
        {
            se1 = (this.Master.Master as Site1).se1;
            if (!IsPostBack)
            {

                GridView1.DataSource = se1.SAUsers.ToList();
                GridView1.DataBind();
                
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
         

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                // Convert the row index stored in the CommandArgument
                // property to an Integer.
                int index = e.RowIndex;

                // Retrieve the row that contains the button clicked 
                // by the user from the Rows collection.
                GridViewRow row = GridView1.Rows[index];


                se1.SAUsers.Remove(se1.SAUsers.Find(row.Cells[1].Text));

                se1.SaveChanges();

                Response.Redirect("SSDashboard.aspx");

                Response.Write(row.Cells[1].Text);
            }
            catch (Exception exp) { Response.Write(exp.ToString()); }
        }
    }
}
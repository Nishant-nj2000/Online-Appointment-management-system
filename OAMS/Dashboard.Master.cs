using System;
using System.Windows.Forms;

namespace OAMS
{
    public partial class Dashboard1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["UTMID"] as string))
            {
                //The code
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void lb13_click(object sender, EventArgs e)
        {
            Response.Redirect("~/update_profiles.aspx");
        }
        protected void lb14_click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_consultants.aspx");
        }
        protected void lb15_click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_users.aspx");
        }
        protected void user_feedback(object sender, EventArgs e)
        {
            Response.Redirect("~/User_feedback.aspx");
        }
        protected void user_complaint(object sender, EventArgs e)
        {
            Response.Redirect("~/User_Complaint.aspx");
        }
        protected void user_appointment(object sender, EventArgs e)
        {
            Response.Redirect("~/User_viewappointment.aspx");
        }
        protected void Consultant_Complaint(object sender, EventArgs e)
        {
            Response.Redirect("~/Consultant_Complaint.aspx");
        }





    }
}
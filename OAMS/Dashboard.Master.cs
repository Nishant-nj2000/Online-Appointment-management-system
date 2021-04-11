using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Button = System.Web.UI.WebControls.Button;
using TextBox = System.Web.UI.WebControls.TextBox;

namespace OAMS
{
    public partial class adminfeedbacks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uid = Server.UrlDecode(Request.QueryString["uid"]);
            MySqlConnectionStringBuilder connBuilder = new MySqlConnectionStringBuilder();

            connBuilder.Add("Database", "OAMS");
            connBuilder.Add("Data Source", "contra.cjrbdmxkv84s.ap-south-1.rds.amazonaws.com");
            connBuilder.Add("User Id", "admin");
            connBuilder.Add("Password", "MiloniMadhav");

            MySqlConnection connection = new MySqlConnection(connBuilder.ConnectionString);
            connection.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("select f.uid,f.ratings,f.comments,f.From_UID,u.name,u.email_id from feedback_master f,user_master u WHERE f.From_UID = u.UID AND f.UID = ' " + uid + "';", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            FeedbacksRepeater.DataSource = dt;
            FeedbacksRepeater.DataBind();
            connection.Close();

        }

      
    }
}
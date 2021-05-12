using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OAMS
{
    public partial class c_admincomplaints : System.Web.UI.Page
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
            MySqlDataAdapter da = new MySqlDataAdapter("select c.uid,c.type,c.description,c.From_UID,u.name,u.email_id from complaint_master c,user_master u WHERE c.From_UID = u.UID AND c.From_UID = ' " + uid + "';", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ComplaintsRepeater.DataSource = dt;
            ComplaintsRepeater.DataBind();
            connection.Close();
        }
    }
}
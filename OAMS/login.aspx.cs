using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;



namespace OAMS
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnectionStringBuilder connBuilder = new MySqlConnectionStringBuilder();

                connBuilder.Add("Database", "OAMS");
                connBuilder.Add("Data Source", "contra.cjrbdmxkv84s.ap-south-1.rds.amazonaws.com");
                connBuilder.Add("User Id", "admin");
                connBuilder.Add("Password", "MiloniMadhav");

                MySqlConnection connection = new MySqlConnection(connBuilder.ConnectionString);

                MySqlCommand cmd = connection.CreateCommand();

                
                String queryStr;
                // Here goes the code needed to perform operations on the
                // database such as querying or inserting rows into a table
                queryStr = "SELECT * FROM `OAMS`.`user_master` where Email_ID='" + TextBox1.Text + "' and Password ='"+ TextBox2.Text +"';";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, connection);
                connection.Open();
                var result = cmd.ExecuteReader();
                if (result.HasRows)
                {
                    result.Read();// Get first record.
                    String uname = result.GetString(2);// Get value of first column as string.
                    MessageBox.Show("Welcome : "+uname);
                }
                result.Close();// Close reader.
          
                connection.Close();
            }
            catch (MySqlException error)
            {
                MessageBox.Show(error.Message);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgot_password.aspx");
        }


    }
}
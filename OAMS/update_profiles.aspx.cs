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
    public partial class update_profile: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                    queryStr = "SELECT Name,Email_ID,Password,Gender,Phone_No,City,State,Pincode FROM `OAMS`.`user_master` where user_master.Email_ID='" + Session["Email"] + "';";

                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, connection);
                    connection.Open();
                    var result = cmd.ExecuteReader();
                    /*result.GetValue(result.GetOrdinal("CustomerID"));*/
                    Console.WriteLine(result);
                    if (result.HasRows)
                    {
                        while (result.Read())
                        {
                            Name.Value = result.GetString(0);
                            txtEmail.Value = result.GetString(1);
                            password.Value = result.GetString(2);
                            gender.Value = result.GetString(3);
                            phone.Value = result.GetString(4).ToString();
                            city.Value = result.GetString(5);
                            state.Value = result.GetString(6);
                            pincode.Value = result.GetString(7);

                        }
                    }

                }
                catch (MySqlException error)
                {
                    MessageBox.Show(error.Message);
                }
            
        }
        protected void Submit(object sender, EventArgs e)
        {
           
                string name = Request.Form["Name"];
                /*string email = txtEmail.Value;*/
                MessageBox.Show("SUBMIT BUTTON CLICKED");
            
            
        }
    }
}
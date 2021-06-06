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
    public partial class updateSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            MySqlConnectionStringBuilder connBuilder = new MySqlConnectionStringBuilder();

            connBuilder.Add("Database", "OAMS");
            connBuilder.Add("Data Source", "contra.cjrbdmxkv84s.ap-south-1.rds.amazonaws.com");
            connBuilder.Add("User Id", "admin");
            connBuilder.Add("Password", "MiloniMadhav");

            MySqlConnection connection = new MySqlConnection(connBuilder.ConnectionString);

            MySqlCommand cmd = connection.CreateCommand();
            connection.Open();



            cmd.CommandText = "INSERT INTO `OAMS`.`schedule`(`STID`,`CID`,`Start_Date`,`End_Date`,`Start_Time`," +
                "`End_Time`,`Limit`)VALUES(1,47,@sDate,@eDate,@sTime,@eTime,@limit)";

            cmd.Parameters.Add("@sDate", MySqlDbType.VarString).Value = sdate.Value;
            cmd.Parameters.Add("@eDate", MySqlDbType.VarString).Value = edate.Value;
            cmd.Parameters.Add("@sTime", MySqlDbType.VarString).Value = stime.Value;
            cmd.Parameters.Add("@eTime", MySqlDbType.VarString).Value = etime.Value;
            cmd.Parameters.Add("@limit", MySqlDbType.VarString).Value = limit.Value;


            /* cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, connection);*/
            connection.Open();
            var result = cmd.ExecuteNonQuery();
        }
    }
}
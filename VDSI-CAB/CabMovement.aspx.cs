using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace VDSI_CAB
{
    public partial class CabMovement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Book(string aflag, string bflag)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString; ;
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand("usp_update_cab_movement_details", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@CAB_ID", SqlDbType.VarChar).Value = txtRegNbr.Value.ToString();
                command.Parameters.Add("@ARRIVED", SqlDbType.Char).Value = aflag;
                command.Parameters.Add("@DEPARTED", SqlDbType.Char).Value = bflag;
                //command.Parameters.Add("@Emp_Time_Slot", SqlDbType.VarChar).Value = CmbSlot.SelectedValue;
                con.Open();
                command.ExecuteNonQuery();
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                //return 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Book("Y", "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Book("", "Y");
        }
    }
}
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
    public partial class CabBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Book();
        }

        public void Book()
        {
            try
            {

                string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString; ;
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand("usp_employee_cab_booking", con);
                command.CommandType = CommandType.StoredProcedure;
                if (Session["empid"] != null)
                    command.Parameters.Add("@EMP_ID", SqlDbType.Int).Value = Session["empid"].ToString();
                else
                    command.Parameters.Add("@EMP_ID", SqlDbType.Int).Value = "1234";
                command.Parameters.Add("@EMP_Route", SqlDbType.Int).Value = CmbRoute.SelectedValue;
                command.Parameters.Add("@Emp_Time_Slot", SqlDbType.VarChar).Value = CmbSlot.SelectedValue;
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
    }
}
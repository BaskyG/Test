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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString; ;
            using (SqlConnection conn = new SqlConnection("Data Source=BASKAR-PC;Initial Catalog=VdsiCab;User ID=sa;Password=123456"))
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM EMP_MASTER WHERE EMP_ID =" + txtuid.Value.ToString() + " and EMP_PHONE ='" + txtmobile.Value.ToString() + "'", conn))
            {
                conn.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        Session["empid"] = txtuid.Value.ToString();
                        Response.Redirect("CabBooking.aspx");
                    }
                }
            }
        }
    }
}
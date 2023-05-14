using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wangjiajun0724SkySharkWebApplication.BM
{
    
    public partial class AddFI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[" ARPDMatabaseConnectionString"].ConnectionString);
            conn.Open();
            //create dataadapter
            string queryString = "Select FltNo from dtFltDetails";
            SqlDataAdapter adapter = new SqlDataAdapter();
            //create commnad
            adapter.SelectCommand = new SqlCommand(queryString, conn);

            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "FlightNo");
            conn.Close();
            foreach (DataRow row in dataset.Tables["FlightNo"].Rows)
            {
                if (row[0].ToString().Trim() == txtFlightNumber.Text.Trim())
                {
                    lblMessage.Text = "The Flight already exists. Please try another flight Number";
                    return;
                }


            }
            TimeSpan depttime, arrtime;
            String DeptDateTime, ArrDateTime;
            try
            {
                depttime = Convert.ToDateTime(txtDepartureTime.Text.Trim()).TimeOfDay;
                arrtime = Convert.ToDateTime(txtArrivalTime.Text.Trim()).TimeOfDay;
                DeptDateTime = Calendar1.SelectedDate.ToShortDateString() + " " + depttime;
                ArrDateTime = Calendar2.SelectedDate.ToShortDateString() + " " + arrtime;
                if (depttime >= arrtime)
                {
                    lblMessage.Text = "Departure TIme cant be greater than Arraival time ";
                    return;

                }

            }
            catch (Exception ex)
            {
                lblMessage.Text = "Invalid Departure or arrival time ";
                return;
            }
            try
            {
                conn.Open();
                String updateSql = "INSERT INTO [dtFItDetails] ([FItNo], [Origin], [Destination], [Deptime],[Arrtime],[AircraftType], [SeatsExec], [SeatsBn], [FareExec], [FareBn], [LaunchDate]) VALUES(@FltNo, @Origin, @Destination, @Deptime, @Arrtime, @AircraftType, @SeatsExec,@SeatsBn,@FareExec,@FareBn,@LaunchDate)";
                SqlCommand cmd = new SqlCommand(updateSql, conn);
                cmd.Parameters.AddWithValue("@FltNo", txtFlightNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@Origin", txtPlace.Text.Trim());
                cmd.Parameters.AddWithValue("@Destination", txtDestination.Text.Trim());
                cmd.Parameters.AddWithValue("@Deptime", DeptDateTime);
                cmd.Parameters.AddWithValue("@Arrtime", ArrDateTime);
                cmd.Parameters.AddWithValue("@AircraftType", txtAircraftType.Text.Trim());
                cmd.Parameters.AddWithValue("@SeatsExec", Convert.ToInt32(txtNoOfExecSeats.Text.Trim()));
                cmd.Parameters.AddWithValue("@SeatsBn", Convert.ToInt32(txtNoOfBusiSeats.Text.Trim()));
                cmd.Parameters.AddWithValue("@FareExec", Convert.ToInt32(txtExecutiveClassfare.Text.Trim()));
                cmd.Parameters.AddWithValue("@FareBn", Convert.ToInt32(txtBusinessClassfare.Text.Trim()));
                cmd.Parameters.AddWithValue("@LaunchDate", DateTime.Today.Date.ToShortDateString());
                int n = cmd.ExecuteNonQuery();
                conn.Close();



            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                conn.Close();
                return;
            }
            conn.Close();
            lblMessage.Text = "Flight added Successfully";
            txtAircraftType.Text = "";
            txtArrivalTime.Text = "";
            txtBusinessClassfare.Text = " ";
            txtDepartureTime.Text = "";
            txtDestination.Text = "";
            txtExecutiveClassfare.Text = "";
            txtFlightNumber.Text = "";
            txtNoOfBusiSeats.Text = "";
            txtNoOfExecSeats.Text = "";
            txtPlace.Text = "";





        }
    }
}
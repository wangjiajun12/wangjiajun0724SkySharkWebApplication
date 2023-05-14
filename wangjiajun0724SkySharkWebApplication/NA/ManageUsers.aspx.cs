using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wangjiajun0724SkySharkWebApplication.NA
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddSubmit_Click(object sender, EventArgs e)
        {
            string username, password, role;
            int selection;
            role = lstAddRole.SelectedValue;
            username = txtAddUsername.Text;
            password = txtAddPassword.Text;
            selection = lstAddRole.SelectedIndex;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
            conn.Open();
            string queryString = "SeLect UserName, Password, role from dtUsers where UserName='" + username + "'";
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = new SqlCommand(queryString, conn);
            DataSet ds1 = new DataSet();
            adapter.Fill(ds1, "dtUsers");
            if (ds1.Tables["dtUsers"].Rows.Count == 0)
            {
                //insert
                string insertQueryString = "INSERT INTO [dtusers] C[usermane], [Password], [RoLe]) VALUES ( '" + username + "','" + password + "', '" + role + " ')";
                SqlCommand insterCommand = new SqlCommand(insertQueryString, conn);
                insterCommand.ExecuteNonQuery();
            }
            else
            {
                lblMessage.Text = "The user nane aLready exists. Please try another user name";
                return;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string username = txtDelUsername.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
            conn.Open();
            if (username == "" || username == null)
            {
                lblMessage.Text = "PLease specify a valid user name";
            }

            else
            {
                string queryString = "SeLect UserNane, Password , role from dtusers where UserName= '" + username + "'";
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = new SqlCommand(queryString, conn);
                DataSet ds1 = new DataSet();
                adapter.Fill(ds1, "dtUsers");
                if (ds1.Tables["dtUsers"].Rows.Count == 0)
                {
                    lblMessage.Text = "User does not exists";
                    return;
                }
                else
                {
                    string queryString2 = "deLete from dtUsers where UserName='" + username + "";
                    SqlCommand insterComnand = new SqlCommand(queryString2, conn);
                    insterComnand.ExecuteNonQuery();
                    conn.Close();
                    lblMessage.Text = "User deleted successfuly";
                    txtDelUsername.Text = "";

                }

            }


        }
    }
}
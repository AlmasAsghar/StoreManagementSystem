using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace StoreManagementSystem
{
    public partial class SignUp : System.Web.UI.Page
    {
        String con = @"Data Source=HAIER-PC\SQLExpress;Initial Catalog=STORE;Integrated Security=True ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string queryString = "SELECT * FROM  [dbo].[User] WHERE Email='" + email.Text + "' AND Pasword='" + paswd.Text + "'";
            SqlConnection connection = new SqlConnection(con);

            SqlCommand command = new SqlCommand(queryString, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read() == true)
                {
                    Session["User-Email"] = email.Text;
                    if (Session["User-Email"] != null)
                    {
                        ListMsg.Text = "Login successsfull and session is created succesfully";
                    }
                }

                else
                {
                       ListMsg.Text = "Email or password is incorrect.... sesssion not created ";

                }
                reader.Close();
                connection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }

        protected void paswd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ViewProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProduct.aspx");
        }

        protected void addProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("addProduct.aspx");
        }
    }
}
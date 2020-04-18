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
    public partial class WebForm1 : System.Web.UI.Page
    {
        String con = @"Data Source=HAIER-PC\SQLExpress;Initial Catalog=STORE;Integrated Security=True ";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butsave_Click(object sender, EventArgs e)
        {
            if (email.Text == "" || paswd.Text == "")
            {
                ListMsg.Text = "please fill mandatory fields";
            }
            else if (paswd.Text != confirm.Text)
            {
                ListMsg.Text = "Password did not match";
            }

            else if (UploadImgSave.PostedFile != null)
            {
                string imgFile = Path.GetFileName(UploadImgSave.PostedFile.FileName);
                UploadImgSave.SaveAs(@"E:\Semester 6\EAD\Practical_Work\StoreManagementSystem\StoreManagementSystem\Images/" + imgFile);
                SqlConnection connection = new SqlConnection(con);

               
                string queryString = "INSERT INTO [dbo].[User] ([name],[Pasword],[Email],[image]) VALUES (@name,@Pasword,@Email,@image)";
                SqlCommand cmd = new SqlCommand(queryString, connection);
                connection.Open();
                cmd.Parameters.AddWithValue("@name", name.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@Pasword", paswd.Text);
                cmd.Parameters.AddWithValue("@image", "Image/" + imgFile);
                cmd.ExecuteNonQuery();
                ListMsg.Text = "Registered successsfully";
                connection.Close();
                Response.Redirect("Login.aspx");

            }
            else
            {
                ListMsg.Text = " not registered  ";
            }
        }
    }
}
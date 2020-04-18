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
    public partial class addProduct : System.Web.UI.Page
    {
        String con = @"Data Source=HAIER-PC\SQLExpress;Initial Catalog=STORE;Integrated Security=True ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            if (UploadImgSave.PostedFile != null)
            {
                string imgFile = Path.GetFileName(UploadImgSave.PostedFile.FileName);
                UploadImgSave.SaveAs(@"E:\Semester 6\EAD\Practical_Work\StoreManagementSystem\StoreManagementSystem\Images/" + imgFile);
                SqlConnection connection = new SqlConnection(con);
                connection.Open();
                string query = "INSERT INTO [dbo].[Product] ([name],[price],[image]) VALUES (@name,@price,@image)";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@name", id.Text);
                cmd.Parameters.AddWithValue("@price", price.Text);
                cmd.Parameters.AddWithValue("@image", "Images/" + imgFile);
                cmd.ExecuteNonQuery();
                ListMsg.Text = "Image and its path saved successsfully";
                connection.Close();

            }
            else
            {
                ListMsg.Text = "Image and its path failed saved ";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProduct.aspx");
        }

        protected void id_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace StoreManagementSystem
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        String con = @"Data Source=HAIER-PC\SQLExpress;Initial Catalog=STORE;Integrated Security=True ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string queryString = "select* FROM Product";
            SqlConnection connection = new SqlConnection(con);
            SqlCommand command = new SqlCommand(queryString, connection);
            connection.Open();
            SqlDataReader red = command.ExecuteReader();
            GridView1.DataBind();
            connection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }
    }
}
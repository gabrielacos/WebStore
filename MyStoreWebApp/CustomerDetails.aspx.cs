using System;
using System.Data;
using System.Data.SqlClient;

namespace MyStoreWebApp
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void dvCustomerDetails_ItemUpdated(object sender, System.Web.UI.WebControls.DetailsViewUpdatedEventArgs e)
        {
            // Event Handler After update
            {
                Session["ssMessage"] = "Item Updated Successfully";
                Session["ssCCClass"] = "alert-success";
                //Asignar valor a las parametros del metodo WriteLogProc
                var strEvento = "ItemUpdated";
                var strTabla = "Product";
                var strForma = "ProductDetail";
                var struser = Session["ssUsr"].ToString();
                // Call to the writeLogProc that executes the Stored Procedure Store.spINSERTLog
                WriteLogProc(struser, strEvento, strTabla, strForma);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Display Error Message when the user is not logged in
            if (Session["ssUsr"] == null)
            {
                Session["ssMessage"] = " Authorized users only; Please login";
                Response.Redirect("Default.aspx");
            }
        }

        // Method to write to the log table using a STORED PROCEDURE
        private void WriteLogProc(string strUser, string strEvento, string strTabla, string
        strForma)
        {
            SqlConnection conn_string = new
           SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["StoreConnectionStrin"].ConnectionString);

            SqlCommand sql_comm = new SqlCommand();
            SqlDataReader reader;
            sql_comm.CommandText = "[Store].[spINSERTLog]";
            sql_comm.CommandType = CommandType.StoredProcedure;
            sql_comm.Connection = conn_string;
            sql_comm.Parameters.AddWithValue("@usr", strUser);
            sql_comm.Parameters.AddWithValue("@event", strEvento);
            sql_comm.Parameters.AddWithValue("@table", strTabla);
            sql_comm.Parameters.AddWithValue("@formname", strForma);
            conn_string.Open();
            reader = sql_comm.ExecuteReader();
            conn_string.Close();
        }
    }
}
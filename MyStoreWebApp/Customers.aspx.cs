using System;

namespace MyStoreWebApp
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void gvCustomers_PreRender(object sender, EventArgs e)
        {
            //Calculate and assign totals to label.
            lblTotal.Text = gvCustomers.Rows.Count.ToString();
        }

        protected void gvCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Assign value to a session variable from the selected row on the GridView
            Session["ssCustomerCode"] = gvCustomers.SelectedValue;
            // Redirect to open the ProductDetails page
            Response.Redirect("CustomerDetails.aspx");
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
    }
}
using System;

namespace MyStoreWebApp
{
    public partial class Vendors : System.Web.UI.Page
    {
        protected void gvVendors_PreRender(object sender, EventArgs e)
        {
            //Calculate and assign totals to label.
            lblTotal.Text = gvVendors.Rows.Count.ToString();
        }

        protected void gvVendors_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Assign value to a session variable from the selected row on the GridView
            Session["ssVendorCode"] = gvVendors.SelectedValue;
            // Redirect to open the ProductDetails page
            Response.Redirect("VendorDetails.aspx");
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
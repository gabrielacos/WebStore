using System;

namespace MyStoreWebApp
{
    public partial class Products : System.Web.UI.Page
    {
        protected void gvProducts_PreRender1(object sender, EventArgs e)
        {
            {
                //Calculate and assign totals to label.
                lblTotal.Text = gvProducts.Rows.Count.ToString();
            }
        }

        protected void gvProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Assign value to a session variable from the selected row on the GridView
            Session["ssProductCode"] = gvProducts.SelectedValue;
            // Redirect to open the ProductDetails page
            Response.Redirect("ProductDetails.aspx");
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
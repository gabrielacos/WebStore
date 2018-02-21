using System;

namespace MyStoreWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnProducts_Click(object sender, EventArgs e)
        {
            //Redirect to Products Form
            Response.Redirect("Products.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ssMessage"] != null)
            {
                lblMensaje.Text = Session["ssMessage"].ToString();
                Session["ssMessage"] = null;
            }
        }
    }
}
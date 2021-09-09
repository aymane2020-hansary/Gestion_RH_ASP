using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_RH
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Matrucile"] == null)
            {
                Response.Redirect("login.aspx");
            }

            this.nb_employées.Text = Session["nb_employées"].ToString();
            this.nb_projets.Text = Session["nb_projets"].ToString();
        }
    }
}
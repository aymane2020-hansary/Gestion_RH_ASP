using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_RH
{
    public partial class MasterPage_Emp : System.Web.UI.MasterPage
    {
        ADO d = new ADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.connecter();

            if (Session["Matrucile"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                this.profile.Text = Session["nom_employé"].ToString();

                if (Session["statu"].ToString() == "admin" || Session["statu"].ToString() == "ADMIN")
                {
                    Employé.Visible = true;
                    Projet.Visible = true;
                    Document_tout.Visible = true;
                }
                else
                {
                    Employé.Visible = false;
                    Projet.Visible = false;
                    Document_tout.Visible = false;
                }
            }
        }

        protected void Déconnecter_Click(object sender, EventArgs e)
        {
            Session["Matrucile"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Déconnecter_1_Click(object sender, EventArgs e)
        {
            Session["Matrucile"] = null;
            Response.Redirect("login.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class mdpOublie2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nom_grand_pere"] != null)
            {
                txt_mail.Text = Session["nom_utilisateur_rec"].ToString();
                txt_password.Text = Session["mot_passe_rec"].ToString();

                Lbl_Success.Text = "A éte recupere avec Succès";
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btn_Suivant_Click(object sender, EventArgs e)
        {
            //string subject = "Votre nom utilisateur est: " + Session["nom_utilisateur_rec"].ToString() + " " + "Et mot de pass est: " + Session["mot_passe_rec"].ToString();

            if (Session["nom_grand_pere"] != null)
            {
                Response.Redirect("mdpOublie3.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

    }
}
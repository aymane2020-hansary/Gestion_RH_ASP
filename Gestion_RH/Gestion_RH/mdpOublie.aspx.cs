using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_RH
{
    public partial class mdpOublie : System.Web.UI.Page
    {
        ADO d = new ADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.connecter();

            //Session["nom_grand_pere"] = "";
            //Session["nom_utilisateur_rec"] = "";
            //Session["mot_passe_rec"] = "";
        }

        public int nombre()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from compte where Nom_grand_pere like '{Txt_nom_grand_pere.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        protected void btn_Récupére_Click(object sender, EventArgs e)
        {
            if (nombre() != 0)
            {
                d.cmd.CommandText = $"select nom_utilisateur, mot_passe from compte where Nom_grand_pere = '{Txt_nom_grand_pere.Text}'";
                d.dr = d.cmd.ExecuteReader();
                while (d.dr.Read())
                {
                    Session["nom_utilisateur_rec"] = d.dr[0].ToString();
                    Session["mot_passe_rec"] = d.dr[1].ToString();

                }
                d.dr.Close();

                Session["nom_grand_pere"] = Txt_nom_grand_pere.Text;

                Response.Redirect("mdpOublie2.aspx");
            }
            else
            {
                Lbl_error.Text = "Cette réponse incorrect";
            }
        }
    }
}
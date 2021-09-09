using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_RH
{
    public partial class Login : System.Web.UI.Page
    {
        ADO d = new ADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.connecter();

            //Session["Matrucile"] = "";
            //Session["Nom_Utilisateur"] = "";
            //Session["nom_employé"] = "";
            //Session["statu"] = "";
        }

        public int nombre()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from compte where nom_utilisateur like '{txt_userName.Text}' and mot_passe like '{txt_passWord.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        protected void btn_se_Connecter_Click(object sender, EventArgs e)
        {
            if(nombre() != 0)
            {
                d.cmd.CommandText = $"select matricule, nom_utilisateur from compte where nom_utilisateur = '{txt_userName.Text}'";
                d.dr = d.cmd.ExecuteReader();
                while (d.dr.Read())
                {
                    Session["Matrucile"] = d.dr[0].ToString();
                    Session["Nom_Utilisateur"] = d.dr[1].ToString();
                }
                d.dr.Close();

                d.cmd.CommandText = $"select nom_employé, prénom_employé, poste_travaille from employé where matricule = '{Session["Matrucile"].ToString()}'";
                d.dr = d.cmd.ExecuteReader();
                while (d.dr.Read())
                {
                    Session["nom_employé"] = d.dr[0].ToString();
                    Session["prénom_employé"] = d.dr[1].ToString();
                    Session["statu"] = d.dr[2].ToString();
                }
                d.dr.Close();
                ///////////////          Nb_employées            //////////////////
                d.cmd.CommandText = $"select count(*) from employé;";
                d.dr = d.cmd.ExecuteReader();
                while (d.dr.Read())
                {
                    Session["nb_employées"] = d.dr[0].ToString();
                }
                d.dr.Close();
                ///////////////          Nb_projets            //////////////////
                d.cmd.CommandText = $"select count(*) from projet;";
                d.dr = d.cmd.ExecuteReader();
                while (d.dr.Read())
                {
                    Session["nb_projets"] = d.dr[0].ToString();
                }
                d.dr.Close();

                this.lbl_msg.Style.Add("visibility", "hidden");
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                this.lbl_msg.Style.Add("visibility", "visible");
            }
        }
    }
}
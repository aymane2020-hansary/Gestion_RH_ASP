using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Gestion_RH
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        ADO d = new ADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.connecter();

            if (Session["Matrucile"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        public void vider()
        {
            txt_Référence.Text = "";
            txt_nom_projet.Text = "";
            txt_description_projet.Text = "";
            txt_Mat_chéf_projet.Text = "";
            txt_nom_chéf_projet.Text = "";
            txt_Budget.Text = "";
        }

        public int nombre()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from projet where référence like'{txt_recherch.Text}' or nom_projet like'{txt_recherch.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        public int nombre(string référence)
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from projet where référence like '{référence}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        public int nombre_3(string matricule)
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from employé where matricule like '{matricule}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        public int nombre_2()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from projet where référence = '{txt_recherche_2.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        protected void btn_recherche_2_Click(object sender, EventArgs e)
        {
            DateTime datetime_1;
            DateTime datetime_2;
            vider();
            if (txt_recherche_2.Text != "")
            {
                if (nombre_2() != 0)
                {
                    d.cmd.CommandText = $"select * from projet where Référence = '{txt_recherche_2.Text}'";
                    d.dr = d.cmd.ExecuteReader();
                    while (d.dr.Read())
                    {
                        txt_Référence.Text = d.dr[0].ToString();
                        txt_nom_projet.Text = d.dr[1].ToString();
                        txt_description_projet.Text = d.dr[2].ToString();
                        txt_Budget.Text = d.dr[3].ToString();
                        txt_Mat_chéf_projet.Text = d.dr[4].ToString();
                        txt_nom_chéf_projet.Text = d.dr[5].ToString();

                        datetime_1 = DateTime.Parse(d.dr[6].ToString());
                        txt_date_début.Text = datetime_1.ToString("dd-MM-yyyy");
                        
                        datetime_2 = DateTime.Parse(d.dr[7].ToString());
                        txt_Date_Fin.Text = datetime_2.ToString("dd-MM-yyyy");
                    }
                    d.dr.Close();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Pour Voir Les Résultats Vérifier Les Champs !!')", true);
                    txt_recherche_2.Text = "";
                }
                else
                {
                    txt_recherche_2.Text = "";
                    vider();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE Référence NEXIST PAS !!')", true);
                }
            }
            else
            {
                vider();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous le text box !!')", true);
            }
        }

        protected void btn_modifie_Click(object sender, EventArgs e)
        {
            //if (txt_Matricule.Text == "" || txt_Nom.Text == "" || txt_Salaire.Text == "" || txt_Prénom.Text == "" || txt_Poste_Travaille.Text == ""
            //    || txt_age.Text == "" || txt_Carte_Identité.Text == "" || txt_Nationalité.Text == "" || txt_Compte_Bancaire.Text == "" || txt_Phone.Text == "" || txt_adresse.Text == "")
            //{
            //    txt_recherch.Text = "";
            //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous les champs !!')", true);
            //}
            //else
            //{
            //    if (nombre(txt_Matricule.Text) != 0)
            //    {
            //        try
            //        {
            //            DateTime datetime_1 = DateTime.Parse(txt_Date_Embauche.Text);
            //            DateTime datetime_2 = DateTime.Parse(txt_Date_Naissance.Text);

            //            d.cmd.CommandText = $"update employé set nom_employé = '{txt_Nom.Text}', prénom_employé = '{txt_Prénom.Text}', date_embauche = '{datetime_1.ToString("yyyy-MM-dd")}', salaire = {txt_Salaire.Text}" +
            //                $", age = {txt_age.Text} , adresse = '{txt_adresse.Text}', poste_travaille = '{txt_Poste_Travaille.Text}', nationalité = '{txt_Nationalité.Text}', phone = '{ txt_Phone.Text}'" +
            //                $", sexe = '{DropDownList1.Text}', carte_identité = '{txt_Carte_Identité.Text}', date_naissance = '{datetime_2.ToString("yyyy-MM-dd")}', compte_bancaire = '{txt_Compte_Bancaire.Text}'" +
            //                $" where matricule = '{txt_Matricule.Text}'";

            //            d.cmd.Connection = d.con;
            //            d.cmd.ExecuteNonQuery();

            //            // vider();

            //            Response.Redirect("Employé.aspx");
            //        }
            //        catch (Exception ex)
            //        {
            //            ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + ex.Message + ".')", true);
            //        }
            //    }
            //    else
            //    {
            //        txt_recherch.Text = "";
            //        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE N'EXIST PAS !!')", true);
            //    }
            //}
        }

        protected void btn_ajtr_Click(object sender, EventArgs e)
        {
            if (txt_Référence.Text == "" || txt_nom_projet.Text == "" || txt_description_projet.Text == "" || txt_Mat_chéf_projet.Text == "" || txt_nom_chéf_projet.Text == ""
                || txt_Budget.Text == "")
            {
                txt_recherche_2.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous les champs !!')", true);
            }
            else
            {
                if ((nombre(txt_Référence.Text) == 0) && (nombre_3(txt_Mat_chéf_projet.Text) != 0))
                {
                    txt_recherche_2.Text = "11111111111";
                    try
                    {
                        DateTime datetime_1 = DateTime.Parse(txt_date_début.Text);
                        DateTime datetime_2 = DateTime.Parse(txt_Date_Fin.Text);
                        d.cmd.CommandText = $"insert into projet values('{txt_Référence.Text}','{txt_nom_projet.Text}','{txt_description_projet.Text}',{txt_Budget.Text},'{txt_Mat_chéf_projet.Text}'" +
                            $",'{txt_nom_chéf_projet.Text}','{datetime_1.ToString("yyyy-MM-dd")}','{datetime_2.ToString("yyyy-MM-dd")}')";

                        d.cmd.Connection = d.con;
                        d.cmd.ExecuteNonQuery();

                        vider();

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('A été Ajouté avec succès !!')", true);
                        Response.Redirect("Projet.aspx");
                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + ex.Message + ".')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE Référence EXIST DEJA !!  Ou  Le Matricule De Ché Projet N'Exsit Pas !!')", true);
                    txt_recherche_2.Text = "0000000000";
                }
            }
        }

        protected void btn_supprimer_Click(object sender, EventArgs e)
        {
            if (txt_recherch.Text != "")
            {
                if (nombre() != 0)
                {
                    SqlDataSource2.SelectCommand = $"delete [projet] where référence ='{txt_recherch.Text}';" +
                      $"SELECT * FROM [projet]";
                    txt_recherch.Text = "";
                }
                else
                {
                    txt_recherch.Text = "";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE Référence NEXIST PAS !!')", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous le text box !!')", true);
            }
        }

        protected void btn_recherche_Click(object sender, EventArgs e)
        {
            if (txt_recherch.Text != "")
            {
                if (nombre() != 0)
                {
                    SqlDataSource2.SelectCommand = $"SELECT * FROM [projet] where référence like'{txt_recherch.Text}' or nom_projet like'{txt_recherch.Text}'";
                    txt_recherch.Text = "";
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE Référence NEXIST PAS !!')", true);
                    txt_recherch.Text = "";
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous le text box !!')", true);
                txt_recherch.Text = "";
            }
        }

        protected void btn_afficher_Click(object sender, EventArgs e)
        {
            txt_recherch.Text = "";
            SqlDataSource2.SelectCommand = $"SELECT * FROM [projet] ";
        }
    }
}
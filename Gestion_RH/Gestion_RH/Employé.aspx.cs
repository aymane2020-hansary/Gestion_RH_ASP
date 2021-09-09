using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Gestion_RH
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ADO d = new ADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.connecter();

            if (!Page.IsPostBack)
            {
                DropDownList1.Items.Add("Female");
                DropDownList1.Items.Add("Male");
                DropDownList1.Items.Add("Autre");
            }

            if (Session["Matrucile"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void btn_modifie_Click(object sender, EventArgs e)
        {
            if (txt_Matricule.Text == "" || txt_Nom.Text == "" || txt_Salaire.Text == "" || txt_Prénom.Text == "" || txt_Poste_Travaille.Text == ""
                || txt_age.Text == "" || txt_Carte_Identité.Text == "" || txt_Nationalité.Text == "" || txt_Compte_Bancaire.Text == "" || txt_Phone.Text == "" || txt_adresse.Text == "")
            {
                txt_recherche_2.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous les champs !!')", true);
            }
            else
            {
                if (nombre(txt_Matricule.Text) != 0)
                {
                    try
                    {
                        DateTime datetime_1 = DateTime.Parse(txt_Date_Embauche.Text);
                        DateTime datetime_2 = DateTime.Parse(txt_Date_Naissance.Text);

                        d.cmd.CommandText = $"update employé set nom_employé = '{txt_Nom.Text}', prénom_employé = '{txt_Prénom.Text}', date_embauche = '{datetime_1.ToString("yyyy-MM-dd")}', salaire = {txt_Salaire.Text}" +
                            $", age = {txt_age.Text} , adresse = '{txt_adresse.Text}', poste_travaille = '{txt_Poste_Travaille.Text}', nationalité = '{txt_Nationalité.Text}', phone = '{ txt_Phone.Text}'" +
                            $", sexe = '{DropDownList1.Text}', carte_identité = '{txt_Carte_Identité.Text}', date_naissance = '{datetime_2.ToString("yyyy-MM-dd")}', compte_bancaire = '{txt_Compte_Bancaire.Text}'" +
                            $" where matricule = '{txt_Matricule.Text}'";

                        d.cmd.Connection = d.con;
                        d.cmd.ExecuteNonQuery();

                        vider();

                        Response.Redirect("Employé.aspx");
                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + ex.Message + ".')", true);
                    }
                }
                else
                {
                    txt_recherche_2.Text = "";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE N'EXIST PAS !!')", true);
                }
            }
        }

        protected void btn_ajtr_Click(object sender, EventArgs e)
        {
            if (txt_Matricule.Text == "" || txt_Nom.Text == "" || txt_Salaire.Text == "" || txt_Prénom.Text == "" || txt_Poste_Travaille.Text == ""
                || txt_age.Text == "" || txt_Carte_Identité.Text == "" || txt_Nationalité.Text == "" || txt_Compte_Bancaire.Text == "" || txt_Phone.Text == "" || txt_adresse.Text == "")
            {
                txt_recherche_2.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous les champs !!')", true);
            }
            else
            {
                if (nombre(txt_Matricule.Text) == 0)
                {
                    try
                    {
                        DateTime datetime_1 = DateTime.Parse(txt_Date_Embauche.Text);
                        DateTime datetime_2 = DateTime.Parse(txt_Date_Naissance.Text);
                        d.cmd.CommandText = $"exec proc_ajouter_emp_cmpt '{txt_Matricule.Text}', '{txt_Nom.Text}', '{txt_Prénom.Text}', '{datetime_1.ToString("yyyy-MM-dd")}'," +
                            $" {txt_Salaire.Text}, {txt_age.Text}, '{txt_adresse.Text}', '{txt_Poste_Travaille.Text}', '{txt_Nationalité.Text}', '{ txt_Phone.Text}'," +
                           $" '{DropDownList1.Text}','{txt_Carte_Identité.Text}','{datetime_2.ToString("yyyy-MM-dd")}', '{txt_Compte_Bancaire.Text}'";

                        d.cmd.Connection = d.con;
                        d.cmd.ExecuteNonQuery();

                        vider();
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('A été Ajouté avec succès !!')", true);
                        Response.Redirect("Employé.aspx");
                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + ex.Message + ".')", true);
                    }
                }
                else
                {
                    txt_recherche_2.Text = "";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE EXIST DEJA !!')", true);
                }
            }
        }

        public void vider()
        {
                txt_Matricule.Text = "";
                txt_Nom.Text = "";
                txt_Prénom.Text = "";
                txt_Salaire.Text = "";
                txt_age.Text = "";
                txt_adresse.Text = "";
                txt_Poste_Travaille.Text = "";
                txt_Nationalité.Text = "";
                txt_Phone.Text = "";
                txt_Carte_Identité.Text = "";
                txt_Compte_Bancaire.Text = "";
        }

        public int nombre()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from employé where matricule like'{txt_recherch.Text}' or nom_employé like'{txt_recherch.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        public int nombre(string matricule)
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from employé where matricule like'{matricule}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }
        
        public int nombre_2()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from employé where matricule = '{txt_recherche_2.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        protected void btn_supprimer_Click(object sender, EventArgs e)
        {
            if (txt_recherch.Text != "")
            {
                if (nombre() != 0)
                {
                    SqlDataSource1.SelectCommand = $"delete [employé] where matricule ='{txt_recherch.Text}';" +
                      $"SELECT * FROM [employé]";
                    txt_recherch.Text = "";
                }
                else
                {
                    txt_recherch.Text = "";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE NEXIST PAS !!')", true);  
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
                        SqlDataSource1.SelectCommand = $"SELECT * FROM [employé] where matricule like'{txt_recherch.Text}' or nom_employé like'{txt_recherch.Text}'";
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE NEXIST PAS !!')", true);
                    
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
            SqlDataSource1.SelectCommand = $"SELECT * FROM [employé] ";

        }

        protected void btn_recherche_2_Click1(object sender, EventArgs e)
        {
            DateTime datetime_1;
            DateTime datetime_2;
            vider();
            if (txt_recherche_2.Text != "")
            {
                if (nombre_2() != 0)
                {
                    d.cmd.CommandText = $"select * from employé where matricule = '{txt_recherche_2.Text}'";
                    d.dr = d.cmd.ExecuteReader();
                    while (d.dr.Read())
                    {
                        txt_Matricule.Text = d.dr[0].ToString();
                        txt_Nom.Text = d.dr[1].ToString();
                        txt_Prénom.Text = d.dr[2].ToString();

                        datetime_1 = DateTime.Parse(d.dr[3].ToString());
                        txt_Date_Embauche.Text = datetime_1.ToString("dd-MM-yyyy");  // Problém D'affichage la date

                        txt_Salaire.Text = d.dr[4].ToString();
                        txt_age.Text = d.dr[5].ToString();
                        txt_adresse.Text = d.dr[6].ToString();
                        txt_Poste_Travaille.Text = d.dr[7].ToString();
                        txt_Nationalité.Text = d.dr[8].ToString();
                        txt_Phone.Text = d.dr[9].ToString();
                        DropDownList1.SelectedValue = d.dr[10].ToString();
                        txt_Carte_Identité.Text = d.dr[11].ToString();

                        datetime_2 = DateTime.Parse(d.dr[12].ToString());
                        txt_Date_Naissance.Text = datetime_2.ToString("dd-MM-yyyy");

                        txt_Compte_Bancaire.Text = d.dr[13].ToString();
                    }
                    d.dr.Close();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Pour Voir Les Résultats Vérifier Les Champs !!')", true);
                    txt_recherche_2.Text = "";
                }
                else
                {
                    txt_recherche_2.Text = "";
                    vider();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE NEXIST PAS !!')", true);
                }
            }
            else
            {
                vider();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous le text box !!')", true);
            }
        }
    }
}
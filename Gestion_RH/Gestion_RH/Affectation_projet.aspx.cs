using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_RH
{
    public partial class WebForm4 : System.Web.UI.Page
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
            txt_matricule.Text = "";
            txt_Nom_employé.Text = "";
            txt_prénom_employé.Text = "";
            txt_poste_travaille.Text = "";
            txt_référence.Text = "";
            txt_nom_projet.Text = "";
            txt_chéf_projet.Text = "";
        }

        public int nombre()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from Liste_Affectation where matricule like'{txt_recherch.Text}' or référence like'{txt_recherch.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        public int nombre_4()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from employé where matricule like'{txt_matricule.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }
        
        public int nombre_3()
        {
            int cpt;
            d.cmd.CommandText = $"Select count(*) from projet where référence like'{txt_référence.Text}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        public int nombre_2(int id)
        {
            // The Problem Here Is Whene The Use Enter A Carachter Déclance A Error

            int cpt;
            d.cmd.CommandText = $"Select count(*) from Liste_Affectation where id = '{id}'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            return cpt;
        }

        protected void btn_recherche_Click(object sender, EventArgs e)
        {
            if (txt_recherch.Text != "")
            {
                if (nombre() != 0)
                {
                    SqlDataSource3.SelectCommand = $"SELECT * FROM [Liste_Affectation] where matricule like'{txt_recherch.Text}' or référence like'{txt_recherch.Text}'";
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE Ou Référence NEXIST PAS !!')", true);

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
            SqlDataSource3.SelectCommand = $"SELECT * FROM [Liste_Affectation] ";
        }

        protected void btn_supprimer_Click(object sender, EventArgs e)
        {
            if ((txt_recherch.Text != "") && (!System.Text.RegularExpressions.Regex.IsMatch(txt_recherch.Text, "[^0-9]")))
            {
                
                    if (nombre_2(Int32.Parse(txt_recherch.Text)) != 0)
                    {
                        SqlDataSource3.SelectCommand = $"delete [Liste_Affectation] where id ='{txt_recherch.Text}';" +
                          $"SELECT * FROM [Liste_Affectation]";
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
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vous Ne Pouvez Supprimer Que Par ID !!')", true);
            }
        }

        protected void btn_ajtr_Click(object sender, EventArgs e)
        {
            if (txt_matricule.Text == "" || txt_Nom_employé.Text == "" || txt_prénom_employé.Text == "" || txt_poste_travaille.Text == "" || txt_référence.Text == ""
                || txt_nom_projet.Text == "" || txt_chéf_projet.Text == "")
            {
                //txt_recherche_2.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous les champs !!')", true);
            }
            else
            {
                if (nombre_4() != 0) // HADI MA3RAFTCH 3LACH MAKHADAMACH
                {
                    if (nombre_3() != 0) // HADI MA3RAFTCH 3LACH MAKHADAMACH
                    {
                        try
                        {
                            d.cmd.CommandText = $"insert into Liste_Affectation values('{txt_matricule.Text}','{txt_Nom_employé.Text}','{txt_prénom_employé.Text}','{txt_poste_travaille.Text}'" +
                                $",'{txt_référence.Text}','{txt_nom_projet.Text}','{txt_chéf_projet.Text}');";

                            d.cmd.Connection = d.con;
                            d.cmd.ExecuteNonQuery();

                            vider();
                            Response.Redirect("Affectation_projet.aspx");
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('A été Ajouté avec succès !!')", true);
                        }
                        catch (Exception ex)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + ex.Message + ".')", true);
                        }
                    }
                    else
                    {
                        //txt_recherche_2.Text = "";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE Ou Référence N'EXIST PAS !!')", true);
                    }

                }
                else
                {
                    //txt_recherche_2.Text = "";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE Ou Référence N'EXIST PAS !!')", true);
                }
            }
        }

        //protected void btn_modifie_Click(object sender, EventArgs e)
        //{
        //    if (txt_matricule.Text == "" || txt_Nom_employé.Text == "" || txt_prénom_employé.Text == "" || txt_poste_travaille.Text == "" || txt_référence.Text == ""
        //        || txt_nom_projet.Text == "" || txt_chéf_projet.Text == "")
        //    {
        //        txt_recherche_2.Text = "";
        //        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous les champs !!')", true);
        //    }
        //    else
        //    {
        //        if (nombre_3() != 0)
        //        {
        //            try
        //            {
        //                d.cmd.CommandText = $"update Liste_Affectation set nom_employé = '{txt_Nom_employé.Text}', prénom_employé = '{txt_prénom_employé.Text}'" +
        //                    $", poste_travaille = {txt_poste_travaille.Text}, nom_projet = '{txt_nom_projet.Text}'," +
        //                    $" nom_chéf_projet = '{txt_chéf_projet.Text}' where id = {Int32.Parse(txt_id.Text)}";

        //                d.cmd.Connection = d.con;
        //                d.cmd.ExecuteNonQuery();

        //                vider();

        //                Response.Redirect("Affectation_projet.aspx");
        //            }
        //            catch (Exception ex)
        //            {
        //                ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + ex.Message + ".')", true);
        //            }
        //        }
        //        else
        //        {
        //            txt_recherch.Text = "";
        //            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE ID N'EXIST PAS !!')", true);
        //        }
        //    }
        //}


        //protected void btn_recherche_2_Click1(object sender, EventArgs e)
        //{
        //    vider();
        //    if (txt_recherche_2.Text != "")
        //    {
        //        if (nombre_2(Int32.Parse(txt_recherche_2.Text)) != 0)
        //        {
        //            d.cmd.CommandText = $"select * from Liste_Affectation where id = '{txt_recherche_2.Text}'";
        //            d.dr = d.cmd.ExecuteReader();
        //            while (d.dr.Read())
        //            {
        //                txt_id.Text = d.dr[0].ToString();
        //                txt_matricule.Text = "ne peut pas changer cela";
        //                this.txt_matricule.Style.Add("color", "red");
        //                txt_Nom_employé.Text = d.dr[2].ToString();
        //                txt_prénom_employé.Text = d.dr[3].ToString();
        //                txt_poste_travaille.Text = d.dr[4].ToString();
        //                txt_référence.Text = "ne peut pas changer cela";
        //                this.txt_référence.Style.Add("color", "red");
        //                txt_nom_projet.Text = d.dr[6].ToString();
        //                txt_chéf_projet.Text = d.dr[7].ToString();
        //            }
        //            d.dr.Close();

        //            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Pour Voir Les Résultats Vérifier Les Champs !!')", true);
        //            txt_recherche_2.Text = "";
        //        }
        //        else
        //        {
        //            txt_recherche_2.Text = "";
        //            vider();
        //            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CETTE MATRICULE NEXIST PAS !!')", true);
        //        }
        //    }
        //    else
        //    {
        //        vider();
        //        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Remplez vous le text box !!')", true);
        //    }
        //}
    }
}
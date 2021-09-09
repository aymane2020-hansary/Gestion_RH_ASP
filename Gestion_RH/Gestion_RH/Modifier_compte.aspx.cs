using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_RH
{
    public partial class Modifier_compte : System.Web.UI.Page
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
                txt_Matricule.Text = Session["Matrucile"].ToString();
                txt_nom_employée.Text = Session["nom_employé"].ToString();
                txt_prénom.Text = Session["prénom_employé"].ToString();
            }
        }

        protected void btn_Confirmer_Click(object sender, EventArgs e)
        {
            if (txt_new_user_name.Text != "" && txt_new_password.Text != "" && txt_grand_pére.Text != "")
            {
                    try
                    {
                        d.cmd.CommandText = $"update compte set nom_utilisateur = '{txt_new_user_name.Text}', mot_passe = '{txt_new_password.Text}', Nom_grand_pere = '{txt_grand_pére.Text}'  where matricule = '{Session["Matrucile"].ToString()}'";

                        d.cmd.Connection = d.con;
                        d.cmd.ExecuteNonQuery();


                        txt_new_user_name.Text = "";
                        txt_new_password.Text = "";
                        txt_grand_pére.Text = "";
                        ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('Le compte a éte modifié avec succès !!')", true);
                    }
                    catch (Exception ex)
                    {
                       ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + ex.Message + ".')", true);
                    }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('Remplir Les champs !!')", true);
                txt_new_user_name.Text = "";
                txt_new_password.Text = "";
                txt_grand_pére.Text = "";
            }
        }
    }
}
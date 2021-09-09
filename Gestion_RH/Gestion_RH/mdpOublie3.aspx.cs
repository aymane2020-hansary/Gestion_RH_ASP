using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_RH
{
    public partial class mdpOublie3 : System.Web.UI.Page
    {
        ADO d = new ADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.connecter();
        }

        protected void btn_Sauvegarder_Click(object sender, EventArgs e)
        {
            if(txt_Nouveau_mot_pass.Text == txt_confirmer_nouveau_mot_pass.Text)
            {
                if (Session["nom_grand_pere"] != null)
                {
                    try
                    {
                        d.cmd.CommandText = $"update compte set mot_passe = '{txt_Nouveau_mot_pass.Text}' where Nom_grand_pere = '{Session["nom_grand_pere"].ToString()}'";

                        d.cmd.Connection = d.con;
                        d.cmd.ExecuteNonQuery();

                        Response.Redirect("login.aspx");
                    }
                    catch (Exception ex)
                    {
                        lbl_msg.Text = ex.Message;
                    }
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                lbl_msg.Text = "Les champs doivent être identiques";
            }
        }
    }
}
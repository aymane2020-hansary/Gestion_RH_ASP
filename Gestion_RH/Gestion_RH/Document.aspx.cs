using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace Gestion_RH
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        ADO d = new ADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.connecter();
            Session["nom_sesion"] = Session["Matrucile"];
            LabelName.Text = Session["nom_employé"].ToString();

            if (Session["Matrucile"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnPrintnt_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=demotest.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            Html32TextWriter hw = new Html32TextWriter(sw);
            GridView6.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A1, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            GridView6.AllowPaging = true;
            GridView6.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}
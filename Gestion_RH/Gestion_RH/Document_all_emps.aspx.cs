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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Matrucile"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnPront_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=demotest.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            Html32TextWriter hw = new Html32TextWriter(sw);
            GridView4.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A1, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            GridView4.AllowPaging = true;
            GridView4.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}
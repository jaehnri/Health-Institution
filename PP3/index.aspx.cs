using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3
{
    public partial class index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session.IsNewSession)
            {
                if (Session["funcao"].ToString().Equals("medico"))
                    Response.Redirect("u/medico/index.aspx");

                if (Session["funcao"].ToString().Equals("paciente"))
                    Response.Redirect("u/paciente/index.aspx");

                if (Session["funcao"].ToString().Equals("secretario"))
                    Response.Redirect("u/secretario/index.aspx");
            }
        }
    }
}
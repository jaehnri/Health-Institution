using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3
{
    public partial class foi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.IsNewSession || Session["username"] == null || Session["funcao"] != "paciente")
            {
                Response.Redirect("../../index.aspx");
            }
        }
    }
}
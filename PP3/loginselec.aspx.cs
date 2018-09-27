using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3
{
    public partial class LoginSelec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Paciente_Click(object sender, EventArgs e)
        {
            Session["funcao"] = "paciente";
            Response.Redirect("Login.aspx");
        }

        protected void btnLogar_Medico_Click(object sender, EventArgs e)
        {
            Session["funcao"] = "medico";
            Response.Redirect("Login.aspx");
        }

        protected void btnLogar_Secretario_Click(object sender, EventArgs e)
        {
            Session["funcao"] = "secretario";
            Response.Redirect("Login.aspx");
        }
    }
}
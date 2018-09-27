using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.secretario
{
    public partial class CadastroSelec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Paciente_Click(object sender, EventArgs e)
        {
            Session["cadastro"] = "paciente";
            Response.Redirect("cadastro.aspx");
        }

        protected void btnCadastrar_Medico_Click(object sender, EventArgs e)
        {
            Session["cadastro"] = "medico";
            Response.Redirect("cadastro.aspx");
        }

        protected void btnCadastrar_Secretario_Click(object sender, EventArgs e)
        {
            Session["cadastro"] = "secretaria";
            Response.Redirect("cadastro.aspx");
        }
    }
}
using PP3.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.paciente
{
    public partial class Diagnostico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void btnSolicitar_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            if ((txt_Sintomas.Text.Equals("")) || (txt_Observacoes.Text.Equals("")))
            {
                lblSolicitar.Text = "Preencha todos os campos!";
            }

            PP3ConexaoBD finalizarBD = new PP3ConexaoBD();
            finalizarBD.Connection(conString);
            finalizarBD.AbrirConexao();

            string insertReagendar = "Insert into SolicitacaoDeConsulta values ()";
            finalizarBD.ExecutaInsUpDel(insertReagendar);
            finalizarBD.FecharConexao();
        }
    }
}

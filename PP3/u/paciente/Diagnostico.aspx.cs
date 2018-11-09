using PP3.App_Start;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.paciente
{
    public partial class Diagnostico : System.Web.UI.Page
    {
        int idPaciente;
        protected void Page_Load(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            PP3ConexaoBD selec = new PP3ConexaoBD();
            selec.Connection(conString);
            selec.AbrirConexao();
            string query = "Select p.idPaciente from paciente as p where p.nome = '" + Session["username"] + "'";
            int achou = selec.ExecutarConsulta(query);

            if (achou == -1)
            {
                lblSolicitar.Text = "Erro de banco de dados.";
            }
            else
            {
                IDataReader resultado = selec.RetornaDados(query);

                idPaciente = resultado.GetInt32(0);

            }
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

            string insertReagendar = "Insert into SolicitacaoDeConsulta values ('" + idPaciente + "', 'SOLICITACAO', '" + txt_Sintomas.Text + "', '" + txt_Exame.Text + "', '" + txt_Medicacao.Text + "', '" + txt_Observacoes.Text + "')";
            finalizarBD.ExecutaInsUpDel(insertReagendar);
            finalizarBD.FecharConexao();
            lblSolicitar.Text = "Consulta solicitada com sucesso! Responderemos via e-mail e telefone em breve!";
        }
    }
}

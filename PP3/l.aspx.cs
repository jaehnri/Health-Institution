using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PP3.App_Start;
using System.Web.Configuration;

namespace PP3
{
    public partial class l : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Paciente_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            // instanciar a classe conexaoBD
            PP3ConexaoBD acessoBD = new PP3ConexaoBD();
            acessoBD.Connection(conString);
            acessoBD.AbrirConexao();

            // checar se o usuario digitou dados para o LOGIN e SENHA
            if ((txt_NomeUsuario.Text == "") || (txt_SenhaUsuario.Text == ""))
            {
                lb_mensagem.Visible = true;
                lb_mensagem.Attributes["style"] = "color:orange;font-weight:bold;font-size:18px;";
                lb_mensagem.Text = "Preencher TODOS os campos!";
                txt_NomeUsuario.Text = "";
                txt_SenhaUsuario.Text = "";
            }
            else
            {
                // consultando no BD se existe o LOGIN e SENHA digitados
                String sqlAcesso = "select * from Paciente where nome='" + txt_NomeUsuario.Text + "' and senha='" + txt_SenhaUsuario.Text + "'";
                int achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
                if (achouReg <= 0)
                {
                    lb_mensagem.Visible = true;
                    lb_mensagem.Attributes["style"] = "color:orange;font-weight:bold;font-size:18px;";
                    lb_mensagem.Text = "ACESSO NEGADO! Vc nao tem CADASTRO!";
                }
                else
                {
                    // criando variavel de sessao
                    Session["username"] = txt_NomeUsuario.Text;                    
                    lb_mensagem.Visible = true;
                    lb_mensagem.Attributes["style"] = "color:orange;font-weight:bold;font-size:18px;";
                    lb_mensagem.Text = "ACESSO LIBERADO!";
                    Session["funcao"] = "paciente";
                    // redirecionar para outra pagina
                    // Response.Redirect("proximaPagina.aspx");
                    Response.Redirect("foipaciente.aspx");
                }
                acessoBD.FecharConexao();
            }
        }

        protected void txt_Login_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
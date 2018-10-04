using PP3.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
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
            //Session["funcao"] = "medico";
            //Response.Redirect("Login.aspx");
        }

        protected void btnLogar_Secretario_Click(object sender, EventArgs e)
        {
            Session["funcao"] = "secretario";
            Response.Redirect("Login.aspx");
        }

        protected void btn_Logar_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            // instanciar a classe conexaoBD
            PP3ConexaoBD acessoBD = new PP3ConexaoBD();
            acessoBD.Connection(conString);
            acessoBD.AbrirConexao();

            // checar se o usuario digitou dados para o LOGIN e SENHA
            if ((txt_NomeMedico.Text == "") || (txt_Senha.Text == ""))
            {
                lbl_Titulo.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Titulo.Text = "Preencha todos os campos!";
                acessoBD.FecharConexao();
                return;
            }

            String sqlAcesso = "select * from Medico where nome='" + txt_NomeMedico.Text + "'";

            int achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
            if (achouReg <= 0)
            {
                lbl_Titulo.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Titulo.Text = "Usuário não encontrado.";
                return;
            }            
                
            sqlAcesso = "select * from Medico where nome='" + txt_NomeMedico.Text + "' and senha='" + txt_Senha.Text + "'";
            achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
            if (achouReg <= 0)
            {
                lbl_Titulo.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Titulo.Text = "Senha incorreta. Por favor, digite novamente";
                return;
            }
            
            {
                // criando variavel de sessao
                Session["username"] = txt_NomeMedico.Text;
                // redirecionar para outra pagina
                // Response.Redirect("proximaPagina.aspx");
                Response.Redirect("u/medico/foimedico.aspx");
            }
            acessoBD.FecharConexao();
        }
    }
}
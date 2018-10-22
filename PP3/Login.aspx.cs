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

   /*     protected void btn_LogarMedico_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            // instanciar a classe conexaoBD
            PP3ConexaoBD acessoBD = new PP3ConexaoBD();
            acessoBD.Connection(conString);
            acessoBD.AbrirConexao();


            // checar se o usuario digitou dados para o LOGIN e SENHA
            if ((txt_Nome.Text == "") || (txt_SenhaMedico.Text == ""))
            {
                lbl_Titulo.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Titulo.Text = "Preencha todos os campos! Tente novamente!";
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
                
            sqlAcesso = "select * from Medico where nome='" + txt_NomeMedico.Text + "' and senha='" + PP3.App_Start.PP3ConexaoBD.Base64Encode(txt_SenhaMedico.Text) + "'";
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
                Session["funcao"] = "medico";
                // redirecionar para outra pagina
                // Response.Redirect("proximaPagina.aspx");
                Response.Redirect("u/medico/index.aspx");
            }
            acessoBD.FecharConexao();
        }

        protected void btn_LogarPaciente_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            // instanciar a classe conexaoBD
            PP3ConexaoBD acessoBD = new PP3ConexaoBD();
            acessoBD.Connection(conString);
            acessoBD.AbrirConexao();


            // checar se o usuario digitou dados para o LOGIN e SENHA
            if ((txt_NomePaciente.Text == "") || (txt_SenhaPaciente.Text == ""))
            {
                lblTituloPaciente.Attributes["style"] = "color:maroon; font-weight:bold;";
                lblTituloPaciente.Text = "Preencha todos os campos! Tente novamente!";
                acessoBD.FecharConexao();
                return;
            }

            String sqlAcesso = "select * from Paciente where nome='" + txt_NomePaciente.Text + "'";

            int achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
            if (achouReg <= 0)
            {
                lblTituloPaciente.Attributes["style"] = "color:maroon; font-weight:bold;";
                lblTituloPaciente.Text = "Usuário não encontrado.";
                return;
            }

            sqlAcesso = "select * from Paciente where nome='" + txt_NomePaciente.Text + "' and senha='" + PP3.App_Start.PP3ConexaoBD.Base64Encode(txt_SenhaPaciente.Text) + "'";
            achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
            if (achouReg <= 0)
            {
                lblTituloPaciente.Attributes["style"] = "color:maroon; font-weight:bold;";
                lblTituloPaciente.Text = "Senha incorreta. Por favor, digite novamente";
                return;
            }

            {
                // criando variavel de sessao
                Session["username"] = txt_NomePaciente.Text;
                Session["funcao"] = "paciente";
                // redirecionar para outra pagina
                // Response.Redirect("proximaPagina.aspx");
                Response.Redirect("u/paciente/foipaciente.aspx");
            }
            acessoBD.FecharConexao();
        } */


        protected void btn_Entrar_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            // instanciar a classe conexaoBD
            PP3ConexaoBD acessoBD = new PP3ConexaoBD();
            acessoBD.Connection(conString);
            acessoBD.AbrirConexao();


            // checar se o usuario digitou dados para o LOGIN e SENHA
            if ((txt_Login.Text == "") || (txt_Senha.Text == ""))
            {
                lbl_Titulo.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Titulo.Text = "Preencha todos os campos!";
                acessoBD.FecharConexao();
                return;
            }
            String sqlAcesso;

            if (Session["funcao"].Equals("Paciente"))
                sqlAcesso = "select * from Paciente where nome='" + txt_Login.Text + "'";
            else if (Session["funcao"].Equals("ADM"))
                sqlAcesso = "select * from Secretaria where nome='" + txt_Login.Text + "'";
            else 
                sqlAcesso = "select * from Medico where nome='" + txt_Login.Text + "'";

            int achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
            if (achouReg <= 0)
            {
                lbl_Titulo.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Titulo.Text = "Usuário não encontrado.";
                return;
            }

            if (Session["funcao"].Equals("Paciente"))
                sqlAcesso = "select * from Paciente where nome='" + txt_Login.Text + "' and senha='" + PP3.App_Start.PP3ConexaoBD.Base64Encode(txt_Senha.Text) + "'";
            else if (Session["funcao"].Equals("ADM"))
                sqlAcesso = "select * from Secretaria where nome='" + txt_Login.Text + "' and senha='" + PP3.App_Start.PP3ConexaoBD.Base64Encode(txt_Senha.Text) + "'";
            else
                sqlAcesso = "select * from Medico where nome='" + txt_Login.Text + "' and senha='" + PP3.App_Start.PP3ConexaoBD.Base64Encode(txt_Senha.Text) + "'";

            achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
            if (achouReg <= 0)
            {
                lbl_Titulo.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Titulo.Text = "Senha incorreta. Por favor, digite novamente";
                return;
            }

            {
                // criando variavel de sessao
                Session["username"] = txt_Login.Text;
                // redirecionar para outra pagina
                // Response.Redirect("proximaPagina.aspx");
                if (Session["funcao"].Equals("Paciente"))
                    Response.Redirect("u/paciente/index.aspx");
                else if (Session["funcao"].Equals("ADM"))
                    Response.Redirect("u/secretario/index.aspx");
                else if (Session["funcao"].Equals("Medico"))
                    Response.Redirect("u/medico/index.aspx");

            }
            acessoBD.FecharConexao();
        }

        protected void btn_Paciente_Click(object sender, EventArgs e)
        {
            Session["funcao"] = "Paciente";
        }

        protected void btn_ADM_Click(object sender, EventArgs e)
        {
            Session["funcao"] = "ADM";
        }

        protected void btn_Medico_Click(object sender, EventArgs e)
        {
            Session["funcao"] = "Medico";
        }
    }
}
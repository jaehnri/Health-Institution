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
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.IsNewSession)
            {
                Session["funcao"] = "paciente";
            }
        }

        protected void txt_Login_TextChanged(object sender, EventArgs e)
        {

        }

        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            {
                String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

                // instanciar a classe conexaoBD
                PP3ConexaoBD acessoBD = new PP3ConexaoBD();
                acessoBD.Connection(conString);
                acessoBD.AbrirConexao();

                // checar se o usuario digitou dados para o LOGIN e SENHA
                if ((txt_Login.Text == "") || (txt_SenhaUsuario.Text == ""))
                {
                    lb_mensagem.Visible = true;
                    lb_mensagem.Attributes["style"] = "color:orange;font-weight:bold;font-size:18px;";
                    lb_mensagem.Text = "Preencher TODOS os campos!";
                    txt_Login.Text = "";
                    txt_SenhaUsuario.Text = "";
                }
                else
                {
                    // consultando no BD se existe o LOGIN e SENHA digitados
                    if (Session["funcao"].Equals("paciente"))
                    {
                        String sqlAcesso = "select * from Paciente where nome='" + txt_Login.Text + "' and senha='" + Base64Encode(txt_SenhaUsuario.Text) + "'";
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
                            Session["username"] = txt_Login.Text;
                            lb_mensagem.Visible = true;
                            lb_mensagem.Attributes["style"] = "color:orange;font-weight:bold;font-size:18px;";
                            lb_mensagem.Text = "ACESSO LIBERADO!";
                            
                            // redirecionar para outra pagina
                            // Response.Redirect("proximaPagina.aspx");
                            Response.Redirect("u/paciente/foipaciente.aspx");
                        }
                        acessoBD.FecharConexao();
                    }

                    else
                    if (Session["funcao"].Equals("medico"))
                    {
                        String sqlAcesso = "select * from Medico where nome='" + txt_Login.Text + "' and senha='" + txt_SenhaUsuario.Text + "'";
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
                            Session["username"] = txt_Login.Text;
                            lb_mensagem.Visible = true;
                            lb_mensagem.Attributes["style"] = "color:orange;font-weight:bold;font-size:18px;";
                            lb_mensagem.Text = "ACESSO LIBERADO!";
      
                            // redirecionar para outra pagina
                            // Response.Redirect("proximaPagina.aspx");
                            Response.Redirect("u/medico/foimedico.aspx");
                        }
                        acessoBD.FecharConexao();
                    }
                    if (Session["funcao"].Equals("secretario"))
                    {
                        String sqlAcesso = "select * from secretaria where nome='" + txt_Login.Text + "' and senha='" + Base64Encode(txt_SenhaUsuario.Text) + "'";
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
                            Session["username"] = txt_Login.Text;
                            lb_mensagem.Visible = true;
                            lb_mensagem.Attributes["style"] = "color:orange;font-weight:bold;font-size:18px;";
                            lb_mensagem.Text = "ACESSO LIBERADO!";
                            // redirecionar para outra pagina
                            // Response.Redirect("proximaPagina.aspx");
                            Response.Redirect("u/secretario/index.aspx");
                        }
                        acessoBD.FecharConexao();
                    }
                }
            }
        }
    }
}
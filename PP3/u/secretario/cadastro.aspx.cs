using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PP3.App_Start;
using System.Web.Configuration;
using System.Text.RegularExpressions;

namespace PP3.u.secretario
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cadastro"] == null)
                Response.Redirect("CadastroSelec.aspx");
            if (Session["cadastro"].Equals("medico"))
                ddl_Especialidades.Visible = true;
        }

        protected Boolean CadastrarUsuario()
        {
            if ((string.IsNullOrEmpty(txt_Nome.Text)) || (string.IsNullOrEmpty(txt_Email.Text)) || (string.IsNullOrEmpty(txt_Email.Text)) || (string.IsNullOrEmpty(txt_Telefone.Text)) || (string.IsNullOrEmpty(txt_ConfSenha.Text)))
            {
                lbl_Alerta.Text = "Preencha todos os campos!";
                return false;
            }

          /*  if (!(Regex.IsMatch(txt_Nome.Text, @"^[a-zA-Z]+$")))
            {
                lbl_Alerta.Text = "O Nome deve conter apenas letras!";
                return false;
            }*/

            if (EmailExiste(txt_Email.Text))
            {
                lbl_Alerta.Text += "Este endereço de e-mail já está cadastrado!";
                return false;
            }

            if (txt_Senha.Text != txt_ConfSenha.Text)
            {
                lbl_Alerta.Text = "As senhas não correspondem!";
                return false;
            }

            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            PP3ConexaoBD insertBD = new PP3ConexaoBD();
            insertBD.Connection(conString);
            insertBD.AbrirConexao();
            string cadastro;

            if (Session["cadastro"].Equals("medico"))
                cadastro = "insert into medico values ('" + txt_Nome.Text + "', '" + txt_Email.Text + "', '" + txt_Senha.Text + "', '" + txt_Telefone.Text + "' ,"+ ddl_Especialidades.SelectedValue +")";

            else if (Session["cadastro"].Equals("paciente"))
                cadastro = "insert into paciente values ('" + txt_Nome.Text + "', '" + txt_Email.Text + "', '" + txt_Senha.Text + "', '" + txt_Telefone.Text + ")";

            else 
                cadastro = "insert into secretaria values ('" + txt_Nome.Text + "', '" + txt_Email.Text + "', '" + txt_Senha.Text + "', '" + txt_Telefone.Text + "')";
            

            insertBD.ExecutaInsUpDel(cadastro);
            return true;
        }

        protected bool EmailExiste(string email)
        {               
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            PP3ConexaoBD acessoBD = new PP3ConexaoBD();
            acessoBD.Connection(conString);
            acessoBD.AbrirConexao();

            string funcao = Session["cadastro"].ToString();
            String sqlAcesso = "select * from " + funcao + " where email='" + email + "'";

            int achouReg = acessoBD.ExecutarConsulta(sqlAcesso);
            if (achouReg == -1)
            {
                acessoBD.FecharConexao();
                return false;
            }
            else
            {
                acessoBD.FecharConexao();
                return true;
            }

        }

        protected void btn_Cadastrar_Click(object sender, EventArgs e)
        {
            if(CadastrarUsuario())
                Response.Redirect("index.aspx");

        }
    }
}
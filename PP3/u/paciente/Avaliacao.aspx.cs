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
namespace PP3.u.paciente
{
    public partial class Avaliacao : System.Web.UI.Page
    {

        string idConsulta_Avaliacao;
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
                String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

                PP3ConexaoBD selec = new PP3ConexaoBD();
                selec.Connection(conString);
                selec.AbrirConexao();
                string query = "Select c.idConsulta, m.nome, convert(date, c.dataHora) from consulta as c, paciente as p, medico as m where m.idMedico = c.idMedico and p.idPaciente = c.idPaciente and p.nome = '" + Session["username"] + "' and statusConsulta = 'FINALIZADA' and avaliacao = 'NENHUMA'";
                int achou = selec.ExecutarConsulta(query);

                if (achou == -1)
                {
                    Panel1.Visible = false;
                }
                else
                {
                IDataReader resultado = selec.RetornaDados(query);

                lbl_medico.Text = resultado.GetString(1) + " no dia " + resultado.GetDateTime(2).ToString().Substring(0, 10) + "!";
                    Panel1.Visible = true;
                    idConsulta_Avaliacao = resultado.GetInt32(0).ToString();
                    resultado.Close();
                
                }
        }

        protected void btn_Avaliar_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;
            PP3ConexaoBD insertBD = new PP3ConexaoBD();
            insertBD.Connection(conString);
            insertBD.AbrirConexao();
            string query = "update Consulta set avaliacao = '" + example_movie.SelectedValue + "' where idConsulta = " + idConsulta_Avaliacao;
            insertBD.ExecutaInsUpDel(query);
            insertBD.FecharConexao();
            Response.Redirect("avaliacao.aspx");
        }
    }
}
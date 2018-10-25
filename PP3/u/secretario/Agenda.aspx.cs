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

namespace PP3.u.secretario
{
    public partial class Agenda : System.Web.UI.Page
    {
        DateTime data;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                cal_data.SelectedDate = DateTime.Now.Date;
                
            }
            
            if (ddl_MedicoAgenda.SelectedIndex != -1) {
                //lbl_Medico.Text = ddl_Medico.Items[ddl_Medico.SelectedIndex].Text;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cal_data_SelectionChanged(object sender, EventArgs e)
        {
            data = cal_data.SelectedDate;
        }

        protected void btn_MarcarConsulta_Click(object sender, EventArgs e)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;
            string dataHora = cal_data.SelectedDate.ToString();
            dataHora = dataHora.Substring(0, 11);
            dataHora += txt_hora.Text + ":00";

            if(txt_hora.Text.Equals(""))
            {
                lbl_Mensagem.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Mensagem.Text = "Determine uma hora.";
                return;
            }

            if ((txt_hora.Text[0] == '0' && txt_hora.Text[1] < '7') || (txt_hora.Text[0] >= '1' && (txt_hora.Text[1] > '1' && txt_hora.Text[1] < '4')) || (txt_hora.Text[0] >= '1' && txt_hora.Text[1] > '7'))
            {
                lbl_Mensagem.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Mensagem.Text = "A clínica estará fechada este horário.";
                return;
            }

            if(existeConsulta(dataHora))
            {
                lbl_Mensagem.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Mensagem.Text = "Já há uma consulta marcada neste horário com este médico.";
                return;
            }

            DateTime objData =DateTime.Parse(dataHora);
            if(objData <= DateTime.Now)
            {
                lbl_Mensagem.Attributes["style"] = "color:maroon; font-weight:bold;";
                lbl_Mensagem.Text = "Escolha uma data e hora futura.";
                return;
            }



            PP3ConexaoBD insertBD = new PP3ConexaoBD();
            insertBD.Connection(conString);           
            insertBD.AbrirConexao();
            string insert = "Insert into Consulta values ( "+ ddl_MedicoConsulta.SelectedValue + ", "+ ddl_Paciente.SelectedValue + ", '" + dataHora + "', '" + ddl_duracao.Text + "', 'PENDENTE', NULL, NULL, NULL, NULL, NULL)";
            insertBD.ExecutaInsUpDel(insert);
            lbl_Mensagem.Attributes["style"] = "color:#009933; font-weight:bold;";
            lbl_Mensagem.Text = "Consulta marcada com sucesso!";
        }

        protected bool existeConsulta(string dataHora)
        {
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            PP3ConexaoBD acessoBD = new PP3ConexaoBD();
            acessoBD.Connection(conString);
            acessoBD.AbrirConexao();

           
            String sqlAcesso = "select * from consulta where idMedico = "+ddl_MedicoConsulta.SelectedValue+" and dataHora = '" + dataHora+"'";

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

        protected void ddl_Medico_SelectedIndexChanged(object sender, EventArgs e)
        {
           
                
        }

        protected void ddl_Medico_TextChanged(object sender, EventArgs e)
        {
          //  lbl_Medico.Text = ddl_Medico.Items[ddl_Medico.SelectedIndex].Text;
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
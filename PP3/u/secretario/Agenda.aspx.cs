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
        string idCancelar = "";
        string idReagendar;
        string idAgendar;

        DateTime data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                cal_data.SelectedDate = DateTime.Now.Date;

                idCancelar = Request.QueryString["IdCancelar"];
                if (!(idCancelar==null))
                {
                    String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

                    PP3ConexaoBD insertBD = new PP3ConexaoBD();
                    insertBD.Connection(conString);
                    insertBD.AbrirConexao();
                    
                    string update = "update Consulta set statusConsulta='CANCELADA' where idConsulta = '" + idCancelar + "'";

                    insertBD.ExecutaInsUpDel(update);
                }


                idReagendar = Request.QueryString["IdReagendar"];
                if (!(idReagendar == null))
                {
                    String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

                    // PP3ConexaoBD insertBD = new PP3ConexaoBD();
                    // insertBD.Connection(conString);
                    // insertBD.AbrirConexao();

                    // string paciente = "";

                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Pop", "AbrirModal()", true);

                    lbl_Mensagem.Text = "Reagendar consulta:";

                    PP3ConexaoBD acessoBD = new PP3ConexaoBD();
                    acessoBD.Connection(conString);
                    acessoBD.AbrirConexao();

                    string select = "select m.idMedico as Medico from consulta as c, medico as m where m.idMedico = c.idMedico and c.idConsulta = " + idReagendar.ToString();
                    string idMedico = acessoBD.RetornaDados(select).GetInt32(0).ToString();
                    acessoBD.FecharConexao();

                    PP3ConexaoBD acessoBDPaciente = new PP3ConexaoBD();
                    acessoBDPaciente.Connection(conString);
                    acessoBDPaciente.AbrirConexao();
                    select = "select p.idPaciente as Paciente from consulta as c, Paciente as p where p.idPaciente = c.idPaciente and c.idConsulta = " + idReagendar.ToString();
                    string idPaciente = acessoBDPaciente.RetornaDados(select).GetInt32(0).ToString();
                    acessoBDPaciente.FecharConexao();


                    ddl_MedicoConsulta.SelectedValue = idMedico;
                    ddl_Paciente.SelectedValue = idPaciente;

                    ddl_MedicoConsulta.Enabled = false;
                    ddl_Paciente.Enabled = false;


                    //lbl_Mensagem.Attributes["style"] = "color:#009933; font-weight:bold;";

                }

                idAgendar = Request.QueryString["IdAgendar"];
                if (!(idAgendar == null))
                {
                    String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

                    // PP3ConexaoBD insertBD = new PP3ConexaoBD();
                    // insertBD.Connection(conString);
                    // insertBD.AbrirConexao();

                    // string paciente = "";

                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Pop", "AbrirModal()", true);

                    lbl_Mensagem.Text = "Agendar consulta solicitada:";

                    PP3ConexaoBD acessoBD = new PP3ConexaoBD();
                    acessoBD.Connection(conString);
                    acessoBD.AbrirConexao();

                    string select = "select p.idPaciente as Paciente from Paciente as p, solicitacaodeconsulta as s where p.idPaciente = s.idPaciente and s.idSolicitacao = " + idAgendar.ToString();
                    string idPaciente = acessoBD.RetornaDados(select).GetInt32(0).ToString();
                    acessoBD.FecharConexao();

                    ddl_Paciente.SelectedValue = idPaciente;

                    ddl_Paciente.Enabled = false;


                    //lbl_Mensagem.Attributes["style"] = "color:#009933; font-weight:bold;";

                }
            }
            
            if (ddl_MedicoAgenda.SelectedIndex != -1) {
                //lbl_Medico.Text = ddl_Medico.Items[ddl_Medico.SelectedIndex].Text;
            }

            UpdatePanel1.UpdateMode = UpdatePanelUpdateMode.Conditional;

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

            if (txt_hora.Text.Equals(""))
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

            idReagendar = Request.QueryString["IdReagendar"];
            idAgendar = Request.QueryString["IdAgendar"];
            if ((idReagendar == null) || (idAgendar == null))
            {
                PP3ConexaoBD insertBD = new PP3ConexaoBD();
                insertBD.Connection(conString);
                insertBD.AbrirConexao();
                string insert = "Insert into Consulta values ( " + ddl_MedicoConsulta.SelectedValue + ", " + ddl_Paciente.SelectedValue + ", '" + dataHora + "', '" + ddl_duracao.Text + "', 'PENDENTE', NULL, NULL, NULL, NULL, NULL)";
                insertBD.ExecutaInsUpDel(insert);
                lbl_Mensagem.Attributes["style"] = "color:#009933; font-weight:bold;";
                lbl_Mensagem.Text = "Consulta marcada com sucesso!";
            }

            if (!(idReagendar == null))
            {
                PP3ConexaoBD reagendarBD = new PP3ConexaoBD();
                reagendarBD.Connection(conString);
                reagendarBD.AbrirConexao();

                string finalizarConsulta = "update Consulta set statusConsulta='FINALIZADA' where idConsulta = '" + idReagendar + "'";
                reagendarBD.ExecutaInsUpDel(finalizarConsulta);
                reagendarBD.FecharConexao();
                

                PP3ConexaoBD finalizarBD = new PP3ConexaoBD();
                finalizarBD.Connection(conString);
                finalizarBD.AbrirConexao();

                string insertReagendar = "Insert into Consulta values ( " + ddl_MedicoConsulta.SelectedValue + ", " + ddl_Paciente.SelectedValue + ", '" + dataHora + "', '" + ddl_duracao.Text + "', 'PENDENTE', NULL, NULL, NULL, NULL, NULL)";
                finalizarBD.ExecutaInsUpDel(insertReagendar);
                finalizarBD.FecharConexao();

                lbl_Mensagem.Attributes["style"] = "color:#009933; font-weight:bold;";
                lbl_Mensagem.Text = "Consulta reagendada com sucesso!";
            }

            if (!(idAgendar == null))
            {
                PP3ConexaoBD agendarBD = new PP3ConexaoBD();
                agendarBD.Connection(conString);
                agendarBD.AbrirConexao();

                string finalizarSolicitacao= "update SolicitacaoDeConsulta set statusConsulta='AGENDADA' where idSolicitacao = '" + idAgendar + "'";
                agendarBD.ExecutaInsUpDel(finalizarSolicitacao);
                agendarBD.FecharConexao();


                PP3ConexaoBD finalizarBD = new PP3ConexaoBD();
                finalizarBD.Connection(conString);
                finalizarBD.AbrirConexao();

                string insertAgendar = "Insert into Consulta values ( " + ddl_MedicoConsulta.SelectedValue + ", " + ddl_Paciente.SelectedValue + ", '" + dataHora + "', '" + ddl_duracao.Text + "', 'PENDENTE', NULL, NULL, NULL, NULL, NULL)";
                finalizarBD.ExecutaInsUpDel(insertAgendar);
                finalizarBD.FecharConexao();

                lbl_Mensagem.Attributes["style"] = "color:#009933; font-weight:bold;";
                lbl_Mensagem.Text = "Solicitação agendada com sucesso!";
            }

            UpdatePanel1.Update();
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

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Reagendar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_CancelarConsulta_Click(object sender, EventArgs e)
        {

        }
    }
}
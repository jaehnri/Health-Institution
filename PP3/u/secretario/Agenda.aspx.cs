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
                cal_data.SelectedDate = DateTime.Now.Date;
            
            if (ddl_Medico.SelectedIndex != -1) {
                lbl_Medico.Text = ddl_Medico.Items[ddl_Medico.SelectedIndex].Text;
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
            dataHora += txt_hora.Text+":00";
            PP3ConexaoBD insertBD = new PP3ConexaoBD();
            insertBD.Connection(conString);           
            insertBD.AbrirConexao();
            string insert = "Insert into consulta values ( "+ ddl_Medico.SelectedValue + ", "+ ddl_Paciente.SelectedValue + ", " + ddl_Exame.SelectedValue + ", " + "1" + ", '" + dataHora +"')";
            insertBD.ExecutaInsUpDel(insert);    
        }

        protected void ddl_Medico_SelectedIndexChanged(object sender, EventArgs e)
        {
           
                
        }

        protected void ddl_Medico_TextChanged(object sender, EventArgs e)
        {
            lbl_Medico.Text = ddl_Medico.Items[ddl_Medico.SelectedIndex].Text;
        }
    }
}
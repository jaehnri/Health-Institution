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
            lbl_Medico.Text = ddl_Medico.Text;
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

            PP3ConexaoBD insertBD = new PP3ConexaoBD();
            insertBD.Connection(conString);           
            insertBD.AbrirConexao();
            string insert = "Insert into consulta values ( "+ ddl_Medico.SelectedValue + ", "+ ddl_Paciente.SelectedValue + ", " + ddl_Exame.SelectedValue + ", " + "1" + ", '" + cal_data.SelectedDate.ToString() + "', '" + txt_hora.Text + "' )";
            insertBD.ExecutaInsUpDel(insert);    
        }

        protected void ddl_Medico_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl_Medico.Text = ddl_Medico.Text;
        }
    }
}
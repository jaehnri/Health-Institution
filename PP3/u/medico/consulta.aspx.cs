using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PP3.App_Start;
using System.Web.Configuration;
using System.Text.RegularExpressions;

namespace PP3.u.medico
{
    public partial class consulta : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idConsulta"] = 1;
            //if (Session["idConsulta"].Equals("")
            //  Response.Redirect("agenda.aspx");            
            
        }

        protected void btn_EnviarConsulta_Click(object sender, EventArgs e)
        {
            if (UpdateConsulta())
                lbl_Titulo.Text = "Consulta atualizada!";
        }

        protected bool UpdateConsulta()
        {
            if(txt_Exames.Text.Equals("") || txt_Sintomas.Text.Equals("") || txt_Medicacoes.Text.Equals("") || txt_Observacoes.Text.Equals(""))
            {
                lbl_Titulo.Attributes["style"] = "color:maroon;";
                lbl_Titulo.Text = "Preencha todos os campos!";
                return false;
            }
            String conString = WebConfigurationManager.ConnectionStrings["PP3conexaoBD"].ConnectionString;

            PP3ConexaoBD insertBD = new PP3ConexaoBD();
            insertBD.Connection(conString);
            insertBD.AbrirConexao();
            string update = "";
            if (ck_Reagendar.Checked)
            {
                update = "update Consulta set statusConsulta='REAGENDAR', sintomas='" + txt_Sintomas.Text + "', exames='" + txt_Exames.Text + "', medicacoes='" + txt_Medicacoes.Text + "', observacoes='" + txt_Observacoes.Text + "'  where idConsulta = '" + Session["idConsulta"].ToString() + "'";
            }

            if (!ck_Reagendar.Checked)
            {
                update = "update Consulta set statusConsulta='FINALIZADA', sintomas='" + txt_Sintomas.Text + "', exames='" + txt_Exames.Text + "', medicacoes='" + txt_Medicacoes.Text + "', observacoes='" + txt_Observacoes.Text + "'  where idConsulta = '" + Session["idConsulta"].ToString() + "'";
            }

            insertBD.ExecutaInsUpDel(update);
            return true;
        }
    }
}
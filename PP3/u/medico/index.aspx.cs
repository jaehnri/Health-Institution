using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.medico
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Agenda_Click(object sender, EventArgs e)
        {
            Response.Redirect("agenda.aspx");
        }

        protected void btn_Consulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("consulta.aspx");
        }

        protected void btn_Graficos_Click(object sender, EventArgs e)
        {
            Response.Redirect("graficos.aspx");
        }
    }
}
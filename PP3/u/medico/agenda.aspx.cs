using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.medico
{
    public partial class agenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        private void formatar()
        {
            for (int i = 0; i < gvConsultas.Rows.Count; i++)
            {
                try
                {
                    // formatar data
                    gvConsultas.Rows[i].Cells[3].Text = gvConsultas.Rows[i].Cells[3].Text.Split(' ')[0];
                    // fortatar inicio
                    gvConsultas.Rows[i].Cells[4].Text = gvConsultas.Rows[i].Cells[4].Text.Substring(0, 5);

                    /*   if (gvConsultas.SelectedRow.Cells[6].Text == "AGENDADA")
                       {
                           gvConsultas.SelectedRow.Cells[6].BackColor = System.Drawing.Color.Yellow;

                       }
                       else if (gvConsultas.SelectedRow.Cells[6].Text == "OCORRIDA")
                       {
                           gvConsultas.SelectedRow.Cells[6].BackColor = System.Drawing.Color.DarkGreen;
                       }
                       else if (gvConsultas.SelectedRow.Cells[6].Text == "CANCELADA")
                       {
                           gvConsultas.SelectedRow.Cells[6].BackColor = System.Drawing.Color.DarkRed;
                       }*/
                }
                catch
                {

                }

            }
        }

        protected bool haConsulta()
        {
            return gvConsultas.Rows.Count > 0;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               
        }

        protected void lbl_Paciente_Click(object sender, EventArgs e)
        {
          //  Session["funcao"] = "paciente";
           // Response.Redirect("login.aspx");
        }
    }
}
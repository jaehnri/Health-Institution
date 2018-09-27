using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PP3.App_Start;

namespace PP3
{
    public partial class Index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session.IsNewSession || Session["username"] == null)
            {
                Response.Redirect("medico.aspx");
            }*/
        }

        protected void txt_Login_TextChanged(object sender, EventArgs e)
        {
            /*
            if (existirUsuario(txt_Login.Text))
                Session["username"] = txt_Login.Text;
            */
        }

        protected void btnLogar_Paciente_Click(object sender, EventArgs e)
        {
            
        }
    }
}
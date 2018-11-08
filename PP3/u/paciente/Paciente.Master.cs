using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.paciente
{
    public partial class Paciente : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == "" || Session.IsNewSession)
                Response.Redirect("../../index.aspx");

            Username.Text = "LOGOFF " + "(" + Session["username"].ToString() + ")";
        }
    }
}
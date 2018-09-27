using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.secretario
{
    public partial class secretario : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == "" || Session.IsNewSession)
                Response.Redirect("../../index.aspx");

            Username.Text = Session["username"].ToString();
        }
    }
}
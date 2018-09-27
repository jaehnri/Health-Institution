using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3.u.secretario
{
    public partial class Agenda : System.Web.UI.Page
    {
        DateTime data;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
                cal_data.SelectedDate = DateTime.Now.Date;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cal_data_SelectionChanged(object sender, EventArgs e)
        {
            data = cal_data.SelectedDate;
        }
    }
}
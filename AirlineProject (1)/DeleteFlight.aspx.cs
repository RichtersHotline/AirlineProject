using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineProject
{
    public partial class DeleteFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNDeleteFlight_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }
    }
}
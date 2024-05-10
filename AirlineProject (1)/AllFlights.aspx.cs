using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineProject
{
    public partial class AllFlights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BTNSearchFlights_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible == false)
            {
                GridView1.Visible = true;
                BTNSearchFlights.Text = "Hide all Flights";
            }

            else if (GridView1.Visible == true) {

                BTNSearchFlights.Text = "Show all Flights";
                GridView1.Visible = false;
               
            }
        }
    }
}
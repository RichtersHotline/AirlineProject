using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineProject
{
    public partial class InsertNewPassenger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int LastID = 0;
            int NewID = 0;
            // get the last id 

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                LastID = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
            }
            NewID = LastID + 1;
            TxtID.Text = Convert.ToString(NewID);
        }

        protected void BTNUpdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
    }
}
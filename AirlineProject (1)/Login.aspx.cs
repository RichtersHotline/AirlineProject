using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNLogon_Click(object sender, EventArgs e)
        {
            string UserName;
            string PassWord;
            
            //retrieve value from textboxes

            UserName = TxtUserName.Text;
            PassWord = TxtPassword.Text;
            for (int i = 0; i < GridView1.Rows.Count; i++ )
                //check if username and password is legitimate
                if ((UserName == GridView1.Rows[i].Cells[1].Text) && (PassWord == GridView1.Rows[i].Cells[2].Text))
                {

                    //redirect to admin
                  Response.Redirect("AdminHome.aspx");

                }


        }

        }
    }

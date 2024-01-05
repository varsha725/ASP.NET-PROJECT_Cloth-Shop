using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class loginn : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(reg_id) from login where username='" + TextBox3.Text + "' and password='" + TextBox2.Text + "'";
            string cid = obj.fn_scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if(cid1==1)
            {
                string str1= "select reg_id from login where username='" + TextBox3.Text + "' and password='" + TextBox2.Text + "'";
                string regid = obj.fn_scalar(str1);
                Session["userid"] = regid;
                string str2 = "select log_type from login where username='" + TextBox3.Text + "' and password='" + TextBox2.Text + "'";
                string logtype = obj.fn_scalar(str2);
                if(logtype=="admin")
                {
                    Response.Redirect("adminhome.aspx");
                }
                else if(logtype=="user")
                {
                    Response.Redirect("userhome.aspx");
                }

            }
        }
    }
}
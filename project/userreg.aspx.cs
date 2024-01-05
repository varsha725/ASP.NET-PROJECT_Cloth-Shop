using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class userreg : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_id) from login";
            string regid = obj.fn_scalar(sel);
            int reid = 0;
            if(regid=="")
            {
                reid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reid = newregid + 1;
            }
            string ins = "insert into userr values(" + reid + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            int i = obj.fn_nonquery(ins);
            if (i != 0)
            {
                Label7.Text = "Inserted";
            }
            string inslog = "insert into login values(" + reid + ",'" + TextBox8.Text + "','"+TextBox9.Text+"','user','active')";
            int j = obj.fn_nonquery(inslog);




        }
    }
}
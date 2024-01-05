using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class adminreg : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register0_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_id) from login";
            string regid = obj.fn_scalar(sel);
            int reid = 0;
            if (regid == "")
            {
                reid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reid = newregid + 1;
            }
            string ins = "insert into adm values(" + reid + ",'" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            int i = obj.fn_nonquery(ins);
            if(i!=0)
            {
                Label6.Text = "Inserted";
            }
            string inslog = "insert into login values(" + reid + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','admin','active')";
            int j = obj.fn_nonquery(inslog);

        }
    }
}
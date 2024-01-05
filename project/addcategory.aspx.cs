using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class addcategory : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/phs/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string str = "insert into category values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = obj.fn_nonquery(str);
            if(i!=0)
            {
                Label5.Text = "inserted";
            }
        }
    }
}
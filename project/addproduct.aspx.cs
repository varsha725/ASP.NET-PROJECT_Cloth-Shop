using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class addproduct : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string sel = "select c_id,c_name from category";
                DataSet ds = obj.fn_dataset(sel);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "c_name";
                DropDownList1.DataValueField = "c_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-select-");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string p = "~/phs/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string str = "insert into product values('" +DropDownList1.SelectedItem.Value+ "','" +TextBox1.Text+ "','" + TextBox3.Text + "','" +p+ "','"+TextBox5.Text+"','"+TextBox4.Text+"','"+TextBox2.Text+"')";
            int i = obj.fn_nonquery(str);
            if (i != 0)
            {
                Label8.Text = "inserted";
            }
        }
    }
}
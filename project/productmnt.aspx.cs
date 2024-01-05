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
    public partial class productmnt : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                grid_bind();
            }
        }
        public void grid_bind()
        {
            string str = "select product.*,category.c_name from category join product on category.c_id=product.c_id";
            DataSet ds = obj.fn_dataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string s = "select p_status from product where p_id=" + id + "";
            string c = obj.fn_scalar(s);
            if (c == "available")
            {
                string up = "update product set p_status='unavailable' where p_id=" + id + "";
                int i = obj.fn_nonquery(up);
                if (i == 1)
                {
                    Label1.Text = "Blocked";
                }
            }
            else if (c == "unavailable")
            {
                string upd = "update product set p_status='available' where p_id=" + id + "";
                int i = obj.fn_nonquery(upd);
                if (i == 1)
                {
                    Label1.Text = "Unblocked";
                }
            }
            grid_bind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtname = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtprice = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            TextBox txtdes = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
          
            TextBox txtstock = (TextBox)GridView1.Rows[i].Cells[8].Controls[0];

            string str = "update product set p_name='" + txtname.Text + "',p_price=" + txtprice.Text + ",p_description='" + txtdes.Text + "',p_stock='" + txtstock.Text + "' where p_id='" + id + "'";
            int j = obj.fn_nonquery(str);
            GridView1.EditIndex = -1;
            grid_bind();





        }
    }
}
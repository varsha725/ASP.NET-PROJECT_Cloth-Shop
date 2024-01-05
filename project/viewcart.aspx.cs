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
    public partial class viewcart : System.Web.UI.Page
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
            string str= "select cartt.*,product.p_name,product.p_image from cartt join product on cartt.p_id=product.p_id where reg_id=" + Session["userid"] + "";
            DataSet ds = obj.fn_dataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string str = "delete from cartt where cart_id=" + id + "";
            int i = obj.fn_nonquery(str);
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
            string s = "select p_price from product";
            string m = obj.fn_scalar(s);
            int pri = Convert.ToInt32(m);
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox textqua = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            string str = "update cartt set quantity=" + textqua.Text + " where cart_id=" + id + "";
            int j = obj.fn_nonquery(str);
            string se = "select quantity from cartt where reg_id="+Session["userid"]+"";
            string q = obj.fn_scalar(se);
            int qu = Convert.ToInt32(q);




            string str1 = "update cartt set total_price=" + pri * qu + " where cart_id=" + id + "";
            int n= obj.fn_nonquery(str1);
            GridView1.EditIndex = -1;
            grid_bind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = "select max(cart_id) from cartt";
            string cartid = obj.fn_scalar(str);
            int maxcartid = Convert.ToInt32(cartid);
            int cart_id = 0, pro_id = 0, reg_id = 0, quantity = 0, total_price = 0;
            for(int i=1;i<=maxcartid;i++)
            {
                string sel = "select * from cartt where cart_id=" + i + "";
                SqlDataReader dr = obj.fn_reader(sel);
                while(dr.Read())
                {
                    cart_id = Convert.ToInt32(dr["cart_id"].ToString());
                    pro_id = Convert.ToInt32(dr["p_id"].ToString());
                    reg_id = Convert.ToInt32(dr["reg_id"].ToString());
                    quantity = Convert.ToInt32(dr["quantity"].ToString());
                    total_price = Convert.ToInt32(dr["total_price"].ToString());
                }

                string r = Session["userid"].ToString();
                string u = reg_id.ToString();
                if(u==r)
                {
                    string s = "select max(order_id) from orderr";
                    string ordid = obj.fn_scalar(s);
                    int order_id = 0;
                    if(ordid=="")
                    {
                        order_id = 1;
                    }
                    else
                    {
                        int neworder_id = Convert.ToInt32(ordid);
                        order_id = neworder_id + 1;
                    }
                    string ordins = "insert into orderr values(" + order_id + "," + cart_id + "," + pro_id + "," + reg_id + "," + quantity + "," + total_price + ",'pending')";
                    int j = obj.fn_nonquery(ordins);
                    if(j!=0)
                    {
                        string del = "delete from cartt where cart_id=" + cart_id + "";
                        int d = obj.fn_nonquery(del);
                    }
                }
            }

            string str1 = "select sum(total_price) from orderr where reg_id=" + Session["userid"] + " and status='pending'";
            string G_total = obj.fn_scalar(str1);
            Session["Gtotal"] = G_total;
            string s3 = "select max(bill_id) from bill";
            string bid = obj.fn_scalar(s3);
            int bill_id = 0;
            if(bid=="")
            {
                bill_id = 1;
            }
            else
            {
                int newbillid = Convert.ToInt32(bid);
                bill_id = newbillid + 1;
            }
            var billdate = DateTime.Now.ToShortDateString();
            string newdate = Convert.ToDateTime(billdate).ToString("yyyy-MM-dd");
            string insbill = "insert into bill values(" + bill_id + ",'" + newdate + "'," + Session["userid"] + "," + Session["Gtotal"] + ",'pending')";
            int b = obj.fn_nonquery(insbill);
            Response.Redirect("ordersummary.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }
    }
}
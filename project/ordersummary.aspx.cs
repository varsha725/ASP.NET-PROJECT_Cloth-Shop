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
    public partial class ordersummary : System.Web.UI.Page
    {
        concls dbobj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "select product.p_name,product.p_image,orderr.quantity,orderr.total_price from product join orderr on product.p_id=orderr.product_id where reg_id=" + Session["userid"] + " and status='pending'";
            DataSet ds = dbobj.fn_dataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            string s = "select max(bill_id) from bill where reg_id='" + Session["userid"] + "'";
            string bill = dbobj.fn_scalar(s);
            int b = Convert.ToInt32(bill);


            string str2 = "select total_amount from bill where reg_id='" + Session["userid"] + "' and bill_id="+b+" and status='pending'" ;
            string amount = dbobj.fn_scalar(str2);
            int am = Convert.ToInt32(amount);
            Label1.Text = am.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("bill.aspx");
        }
    }
}
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
    public partial class selectproduct : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sel = "select * from product where p_id=" + Session["imgid"] + "";
            SqlDataReader dr = obj.fn_reader(sel);
            while(dr.Read())
            {
                Image1.ImageUrl = dr["p_image"].ToString();
                Label1.Text = dr["p_name"].ToString();
                Label2.Text = dr["p_price"].ToString();
                Session["price"] = dr["p_price"];
                Label3.Text = dr["p_description"].ToString();
                Label4.Text = dr["p_status"].ToString();



            }

        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sel = "select max(cart_id) from cartt";
            string cartid = obj.fn_scalar(sel);
            int crtid = 0;
            if(cartid=="")
            {
                crtid = 1;
            }
            else
            {
                int newcrtid = Convert.ToInt32(cartid);
                crtid = newcrtid + 1;
            }
            int price = Convert.ToInt32(Session["price"]);
            int qua = Convert.ToInt32(TextBox1.Text);

            string sell = "insert into cartt values("+crtid+", "+ Session["imgid"] + "," + Session["userid"] + "," + TextBox1.Text + "," + price * qua + ")";
            int i = obj.fn_nonquery(sell);

        }
    }
}
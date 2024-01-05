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
    public partial class bill : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                string str = "select userr.u_name,userr.u_address,bill.total_amount,bill.bill_date from userr join bill on bill.reg_id=userr.u_id where reg_id='" + Session["userid"] + "' ";
                

                SqlDataReader dr = obj.fn_reader(str);
                while(dr.Read())
                {
                    Label2.Text = dr["u_name"].ToString();
                    Label4.Text = dr["u_address"].ToString();
                    Label8.Text = dr["bill_date"].ToString();
                    Label10.Text = dr["total_amount"].ToString();
                    
                    
                }

                //string str3 = "select sum(total_price) from orderr where reg_id='" + Session["userid"] + "'";
                //string totprice = obj.fn_scalar(str3);
                //Label10.Text = totprice;

                //string str2 = "select bill_date from bill where reg_id='" + Session["userid"] + "'";
                //string billdate = obj.fn_scalar(str2);
                //Label8.Text = billdate;

                string str1 = "select count(quantity) from orderr where reg_id='" + Session["userid"] + "' and status='pending'";
                string quantity = obj.fn_scalar(str1);
                Label9.Text = quantity;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }
    }
}
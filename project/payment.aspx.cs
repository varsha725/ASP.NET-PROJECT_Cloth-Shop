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
    
    public partial class payment : System.Web.UI.Page
    {
        concls dbobj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string s = "select max(bill_id) from bill where reg_id='" + Session["userid"] + "'";
                string bill = dbobj.fn_scalar(s);
                int b = Convert.ToInt32(bill);

                string str = "select total_amount from bill where reg_id=" + Session["userid"] + " and bill_id="+b+"";
                string amount = dbobj.fn_scalar(str);
                Session["amnt"] = amount;
                Label4.Text = amount;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PaService.ServiceClient obj = new PaService.ServiceClient();
            string s = obj.balancecheck(Convert.ToInt32(TextBox1.Text));
            int m = Convert.ToInt32(s);
            int t = Convert.ToInt32(Session["amnt"]);
            if(m>t)
            {
                string newbal = (m - t).ToString();
                PaService.ServiceClient obj1 = new PaService.ServiceClient();
                int b = obj1.balanceupdate(TextBox1.Text, newbal);
                if(b!=0)
                {
                    string s1 = "update orderr set status='paid' where reg_id=" + Session["userid"] + "";
                    int c = dbobj.fn_nonquery(s1);
                    string s12 = "update bill set status='paid' where reg_id=" + Session["userid"] + "";
                    int d = dbobj.fn_nonquery(s12);
                }
                Label5.Text = "Successfully Paid";
                string str = "select max(order_id) from orderr";
                string maxcartid = dbobj.fn_scalar(str);
                int mcatid = Convert.ToInt32(maxcartid);
                int prdt_id = 0, reg_id = 0, qnty = 0, nw_stk = 0;
                string status = "";
                for(int i=1;i<=mcatid;i++)
                {
                    string sel1 = "select * from orderr where order_id=" + i + "";
                    SqlDataReader dr = dbobj.fn_reader(sel1);
                    while(dr.Read())
                    {
                        prdt_id = Convert.ToInt32(dr["product_id"]);
                        reg_id = Convert.ToInt32(dr["reg_id"]);
                        qnty = Convert.ToInt32(dr["quantity"]);
                        status = dr["status"].ToString();
                    }
                    string r = Session["userid"].ToString();
                    string u = reg_id.ToString();
                    if(u==r)
                    {
                        if(status=="paid")
                        {
                            string s2 = "select p_stock from product where p_id=" + prdt_id + "";
                            string st = dbobj.fn_scalar(s2);
                            int k = Convert.ToInt32(st);
                            if(k>qnty)
                            {
                                nw_stk = k - qnty;
                            }
                            else
                            {
                                nw_stk = 0;
                            }
                            string s4 = "update product set p_stock=" + nw_stk + " where p_id=" + prdt_id + "";
                            int j = dbobj.fn_nonquery(s4);
                            string s5 = "select p_stock from product";
                            string t1 = dbobj.fn_scalar(s5);
                            int sta = Convert.ToInt32(t1);

                            if(sta==0)
                            {
                                string s6 = "update product set P_status='unavailable' where p_id=" + prdt_id + "";
                                int x = dbobj.fn_nonquery(s6);
                            }

                        }
                    }

                }
            }
            else
            {
                Label5.Text = "Insufficient Balance";
            }
        }
    }
}
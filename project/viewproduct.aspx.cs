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
    public partial class viewproduct : System.Web.UI.Page
    {
        concls obj = new concls();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string str = "select * from product where c_id=" + Session["cid"] + "";
                DataSet ds = obj.fn_dataset(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["imgid"] = id;
            Response.Redirect("productdetails.aspx");
        }
    }
}
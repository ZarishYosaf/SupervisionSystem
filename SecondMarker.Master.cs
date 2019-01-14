using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;
using DAL;

namespace FinalProject.SecondMarker
{
    public partial class SecondMarker : System.Web.UI.MasterPage
    {

        DashboardBLL objDBLL = new DashboardBLL();
        DashboardDAL objDDAL = new DashboardDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

            objDBLL.UserName = Session["UserName"].ToString();
            lblUserName.Text = objDBLL.UserName;
            
               
        }
    }
}
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

namespace FinalProject.admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        UserBLL objUBLL = new UserBLL();
        UserDAL objUDAL = new UserDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
           objUBLL.UserName = Session["UserName"].ToString();
            lblUserName.Text = objUBLL.UserName;
           
        }
   
    }
}
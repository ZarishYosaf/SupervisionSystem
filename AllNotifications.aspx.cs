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

namespace FinalProject.Student
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        NotificationBLL objNBLL = new NotificationBLL();
        NotificationDAL objNDAL = new NotificationDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserType = null;
            try
            {
                UserType = Session["UserType"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("../Account/Login.aspx");

            }

            if (UserType != "Student")
            {
                Response.Redirect("../Account/Login.aspx");
            }
            else
            {
                Grid.DataSource = objNDAL.GetNotification(objNBLL);
                Grid.DataBind();
            }
          
        }
    }
}
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
    public partial class Send_Notification : System.Web.UI.Page
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

            if (UserType != "Admin")
            {
                Response.Redirect("../Account/Login.aspx");
            }
        }

        public void FillBLL()
        {
            objNBLL.Message = txtTypeText.Text.Trim();
        
        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            FillBLL();
            objNDAL.SaveNotification(objNBLL);
            txtTypeText.Text = null;
            Label.Text = "Notification Sent Successfully!";
        }
    }
}
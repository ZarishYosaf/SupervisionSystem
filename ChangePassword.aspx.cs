using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;
using BLL;

namespace FinalProject.Account
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        UserBLL objUserBLL = new UserBLL();
        UserDAL objUserDAL = new UserDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void FillBLL()
        {
            objUserBLL.UserName = txtUserName.Text.Trim();
            objUserBLL.Password = txtPassword.Text.Trim();
            objUserBLL.NewPassword = txtNewPassword.Text.Trim();
            objUserBLL.ConfirmPassword = txtConfirmPassword.Text.Trim();
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            FillBLL();
            objUserDAL.Updation(objUserBLL);
            if (objUserBLL.NewPassword == objUserBLL.ConfirmPassword)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password Changed Successfully!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('UserName is Invalid!')", true);
            
            }
        }

       

    }
}
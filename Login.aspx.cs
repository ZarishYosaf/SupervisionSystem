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


namespace FinalProject.Account
{
    public partial class Login : Page
    {
        UserBLL objUserBLL = new UserBLL();
        UserDAL objUserDAL = new UserDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

            Session["UserID"] = null;
            Session["UserType"] = null;
            Session["UserName"] = null;
            
        }
        public void FillBLL()
        {
            objUserBLL.UserName = txtUserName.Text.Trim();
            objUserBLL.Password = txtPassword.Text.Trim();
            objUserBLL.UserType = Request.Form.Get("UserType");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            FillBLL();
            DataTable dt = new DataTable();
         

            dt=objUserDAL.GetUsers(objUserBLL);
        

            if (dt.Rows.Count >= 0)
            {
                string UserType = dt.Rows[0]["UserType"].ToString();
                string UserID = dt.Rows[0]["UserID"].ToString();
                if (UserType=="Admin")
                {
                    Session["UserID"] = UserID;
                    Session["UserType"] = UserType;
                    Session["UserName"] = objUserBLL.UserName;
                    Response.Redirect("../admin/Dashboard_HomePage.aspx");   
                }
                else if (UserType=="Supervisor")
                {
                    Session["UserID"] = UserID;
                    Session["UserType"] = UserType;
                    Session["UserName"] = objUserBLL.UserName;
                    Response.Redirect("../Supervisor/MainSupervisor.aspx");
                }
                else if (UserType == "Second Marker")
                {
                    Session["UserID"] = UserID;
                    Session["UserType"] = UserType;
                    Session["UserName"] = objUserBLL.UserName;
                    Response.Redirect("../SecondMarker/MainSecondMarker.aspx");
                }
                else if (UserType == "Student")
                {
                    Session["UserID"] = UserID;
                    Session["UserType"] = UserType;
                    Session["UserName"] = objUserBLL.UserName;
                    Response.Redirect("../Student/MainStudent.aspx");
                    
                }
            }
            else {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid UserName!')", true);
            }


        }
    }
}
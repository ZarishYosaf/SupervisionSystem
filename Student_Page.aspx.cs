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
    public partial class Student_Page : System.Web.UI.Page
    {
        DashboardBLL objDBLL = new DashboardBLL();
        DashboardDAL objDDAL = new DashboardDAL();
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
            objDBLL.FirstName = txtFirstName.Text.Trim();
            objDBLL.LastName = txtLastName.Text.Trim();
            objDBLL.Email = txtEmail.Text.Trim();
            objDBLL.Gender = Request.Form.Get("Gender");
            objDBLL.UserName = txtUserName.Text.Trim();
            objDBLL.Password = txtPassword.Text.Trim();
            objDBLL.ContactNo = txtNumber.Text.Trim();
            objDBLL.Department = Request.Form.Get("Department");
            objDBLL.Info = Request.Form.Get("default-textarea");
            objDBLL.UserType = Request.Form.Get("UserType");
            objDBLL.Batch = txtBatch.Text.Trim();
          
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (objDDAL.CheckUserName(txtUserName.Text.Trim()))
            {
                FillBLL();
                objDDAL.SaveStudents(objDBLL);
                objDDAL.GetStudents(objDBLL);

                /*About Section*/
                lblFName.Text = objDBLL.FirstName;
                lblLName.Text = objDBLL.LastName;
                lblmail.Text = objDBLL.Email;
                lblDept.Text = objDBLL.Department;
                lblPass.Text = objDBLL.Password;
                lblUName.Text = objDBLL.UserName;
                lblNum.Text = objDBLL.ContactNo;
                lblGend.Text = objDBLL.Gender;
                lblUType.Text = objDBLL.UserType;
                lblIn.Text = objDBLL.Info;
                lblBat.Text = objDBLL.Batch;

                Reset();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Already exist')", true);
            }
        }
        public void Reset()
        {
           
            txtEmail.Text = null;
            txtFirstName.Text = null;
            txtLastName.Text = null;
            txtNumber.Text = null;
            txtPassword.Text = null;
            txtUserName.Text = null;
            txtBatch.Text = null;
        }
     
    }
}
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
    public partial class Admin_Page : System.Web.UI.Page
    {
        UserBLL objUserBLL = new UserBLL();
        UserDAL objUserDAL = new UserDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if  (!IsPostBack)
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
                else
                {

                    int UserID = Convert.ToInt32(Session["UserID"]);
                    ShowData();
                }
        
            }
            
           
           /* if (!IsPostBack)
            {
                ShowData();
            }*/
           
        }
        protected void ShowData()
        {
            grd.DataSource = objUserDAL.Students(objUserBLL);
            grd.DataBind();
            SupervisorGrid.DataSource = objUserDAL.Supervisor(objUserBLL);
            SupervisorGrid.DataBind();
        }
 /*----------------------------------------------------------------------------------Student Grid Code---------------------------------------------------------------------------------*/
       
        protected void grd_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grd.EditIndex = -1;
            grd.DataSource = objUserDAL.Students(objUserBLL);
            grd.DataBind();
        }

        protected void grd_RowEditing(object sender, GridViewEditEventArgs e)
        {

            grd.EditIndex = e.NewEditIndex;
            grd.DataSource = objUserDAL.Students(objUserBLL);
            grd.DataBind();
        }

        protected void grd_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = grd.Rows[e.RowIndex];
            objUserBLL.UserID = grd.DataKeys[e.RowIndex].Values[0].ToString ();
           objUserBLL.FirstName = (row.FindControl("txtFirstName") as TextBox).Text;
           objUserBLL.LastName = (row.FindControl("txtLastName") as TextBox).Text;
           objUserBLL.Email = (row.FindControl("txtEmail") as TextBox).Text;
           objUserBLL.Password = (row.FindControl("txtPassword") as TextBox).Text;
           objUserBLL.UserName = (row.FindControl("txtUserName") as TextBox).Text;
            objUserBLL.UserType = (row.FindControl("txtUserType") as TextBox).Text;
           objUserBLL.Gender = (row.FindControl("txtGender") as TextBox).Text;
           objUserDAL.Update(objUserBLL);
           grd.DataSource = objUserDAL.Students(objUserBLL);
           grd.DataBind();
        }

        protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;
               string UserID = ((Label)grd.Rows[index].FindControl("lblUserID")).Text.Trim();
                objUserDAL.Deletion(UserID);
                grd.DataSource = objUserDAL.Students(objUserBLL);
               grd.DataBind();
        }
/*--------------------------------------------------------------------------- Supervisor And SecondMarker Grid -----------------------------------------------------------------------------------------------------------*/

        protected void SupervisorGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            SupervisorGrid.EditIndex = e.NewEditIndex;
            SupervisorGrid.DataSource = objUserDAL.Supervisor(objUserBLL);
            SupervisorGrid.DataBind();
        }

        protected void SupervisorGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = SupervisorGrid.Rows[e.RowIndex];
            objUserBLL.UserID = SupervisorGrid.DataKeys[e.RowIndex].Values[0].ToString();
           objUserBLL.FirstName = (row.FindControl("txtFirstName") as TextBox).Text;
           objUserBLL.LastName = (row.FindControl("txtLastName") as TextBox).Text;
           objUserBLL.Email = (row.FindControl("txtEmail") as TextBox).Text;
           objUserBLL.Password = (row.FindControl("txtPassword") as TextBox).Text;
           objUserBLL.UserName = (row.FindControl("txtUserName") as TextBox).Text;
            objUserBLL.UserType = (row.FindControl("txtUserType") as TextBox).Text;
           objUserBLL.Gender = (row.FindControl("txtGender") as TextBox).Text;
           objUserDAL.Update(objUserBLL);
            SupervisorGrid.DataSource = objUserDAL.Supervisor(objUserBLL);
            SupervisorGrid.DataBind();
        }

        protected void SupervisorGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;
            string UserID = ((Label)SupervisorGrid.Rows[index].FindControl("lblUserID")).Text.Trim();
            objUserDAL.Deletion(UserID);
            SupervisorGrid.DataSource = objUserDAL.Supervisor(objUserBLL);
            SupervisorGrid.DataBind();
        }

        protected void SupervisorGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            SupervisorGrid.EditIndex = -1;
            SupervisorGrid.DataSource = objUserDAL.Supervisor(objUserBLL);
            SupervisorGrid.DataBind();
        }


      
             
    }
}
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

namespace FinalProject.Supervisor
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        DashboardBLL objDBLL = new DashboardBLL();
        DashboardDAL objDDAL = new DashboardDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Notification */
           



            /*End Notification*/

            string UserType = null;
            try
            {
                UserType = Session["UserType"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("../Account/Login.aspx");

            }

            if (UserType != "Supervisor")
            {
                Response.Redirect("../Account/Login.aspx");
            }
            else
            {
                DataTable notification = new DataTable();
                notification = objDDAL.GetNotification(objDBLL);
                if (notification.Rows.Count > 0)
                {
                    notificationsdiv.InnerHtml = notification.Rows[0]["Message"].ToString();
                }
                DataTable DT = objDDAL.GetSupervisorInfo(Session["UserName"].ToString());

                if (DT.Rows.Count > 0)
                {
                    lblFName.Text = DT.Rows[0]["FirstName"].ToString();
                    lblLName.Text = DT.Rows[0]["LastName"].ToString();
                    lblmail.Text = DT.Rows[0]["Email"].ToString();
                    lblDept.Text = DT.Rows[0]["Department"].ToString();
                    lblUName.Text = DT.Rows[0]["UserName"].ToString();
                    lblNum.Text = DT.Rows[0]["ContactNo"].ToString();
                    lblGend.Text = DT.Rows[0]["Gender"].ToString();
                    lblUType.Text = DT.Rows[0]["UserType"].ToString();
                    lblIn.Text = DT.Rows[0]["Info"].ToString();
                }
               
            }
            int id = Convert.ToInt32(Session["UserID"]);
            GridView.DataSource = objDDAL.StudentsAssign(id);
            GridView.DataBind();
        }

      
    }
}
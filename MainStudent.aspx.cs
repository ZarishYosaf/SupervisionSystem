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
    public partial class WebForm2 : System.Web.UI.Page
    {
        DashboardBLL objDBLL = new DashboardBLL();
        DashboardDAL objDDAL = new DashboardDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            ////////////////notifications///////////
           // Panel1.Visible = true;
            DataTable notification = new DataTable();
         notification= objDDAL.GetNotification(objDBLL);
            if (notification.Rows.Count > 0)
            {
                notificationsdiv.InnerHtml = notification.Rows[0]["Message"].ToString();
            }

            ////////////////////end notifications/////////



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
                DataTable DT= objDDAL.GetInfo(Session["UserName"].ToString());         

  /*----------------------Label Displaying Section---------------------------------*/
           
                if (DT.Rows.Count > 0)
                {
                    lblFName.Text = DT.Rows[0]["FirstName"].ToString();
                    lblLName.Text = DT.Rows[0]["LastName"].ToString();
                    lblmail.Text = DT.Rows[0]["Email"].ToString();
                    lblDept.Text = DT.Rows[0]["Department"].ToString();
                    lblUName.Text = DT.Rows[0]["UserName"].ToString();
                    lblNum.Text = DT.Rows[0]["ContactNo"].ToString();
                    lblBat.Text = DT.Rows[0]["Batch"].ToString();
                    lblGend.Text = DT.Rows[0]["Gender"].ToString();
                    lblUType.Text = DT.Rows[0]["UserType"].ToString();
                    lblIn.Text = DT.Rows[0]["Info"].ToString();
                }
           

/*-----------------------Student Dashboard-----------------------------------------*/
                int UserID = Convert.ToInt32(Session["UserID"]);
                DataTable dt = objDDAL.GetProjects(UserID);

                if (dt.Rows.Count > 0)
                {
                    lblProjectTopic.Text = dt.Rows[0]["ProjectTopic"].ToString();
                    lblProjectType.Text = dt.Rows[0]["ProjectType"].ToString();
                    lblSubmissionDate.Text = dt.Rows[0]["SubmissionDate"].ToString();
                    lblSupervisor.Text = dt.Rows[0]["SupervisorName"].ToString();
                    lblSecondMarker.Text = dt.Rows[0]["SecondMarkerName"].ToString();
                  
                }
            }
        }
        public void FillBLL()
        {
            objDBLL.ProjectType  = Request.Form.Get("Type");
            objDBLL.ProjectTitle = txtTopic.Text.Trim();

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            FillBLL();
             int UserID = Convert.ToInt32(Session["UserID"]);
             objDDAL.SaveProjects(objDBLL, UserID);

   /*------------------------Project Details------------------------------------*/
            lblPType.Text = objDBLL.ProjectType;
            lblPT.Text = objDBLL.ProjectTitle;
            Reset();

          
            
            


        }
       
        public void Reset()
        {
            lblPT.Text = null;
       
        }

       
       
    }
}
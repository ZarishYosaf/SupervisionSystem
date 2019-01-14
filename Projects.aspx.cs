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
    public partial class WebForm1 : System.Web.UI.Page
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

        protected void getprojects_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string department = DropDownDepartment.SelectedValue.ToString();
            
                dt=objDDAL.Assign(department);
                foreach (DataRow  item in dt.Rows)
                {
                    DropDownProject.Items.Add(new ListItem(item["ProjectTopic"].ToString(), item["ProjectTopic"].ToString()));
                }
              
                Grid.DataSource = dt;
            Grid.DataBind();
            DataTable supervisertable = new DataTable();
            supervisertable = objDDAL.getspname(department);
            DataTable smtable = new DataTable();
            smtable = objDDAL.getsMname(department);
            foreach (DataRow item in supervisertable.Rows)
            {
                DropDownSupervisor . Items.Add(new ListItem(item["SuperviserName"].ToString(), item["SuperviserName"].ToString()));
            }
            foreach (DataRow item in smtable.Rows)
            {
                DropDownSecondMarker . Items.Add(new ListItem(item["Secondmarkername"].ToString(), item["Secondmarkername"].ToString()));
            }
        }

        protected void Assign_Click(object sender, EventArgs e)
        {
            string projectname = DropDownProject.SelectedValue.ToString();
            string spname = DropDownSupervisor.SelectedValue.ToString();
            string smname = DropDownSecondMarker.SelectedValue.ToString();
                string date = TextBox1.Text ;
            objDDAL.Assigninfotoprojects(projectname ,spname ,smname ,date );
            Response.Redirect("Projects.aspx");

         
        }

        
    }
}
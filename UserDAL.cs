using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BLL;

namespace DAL
{
    public class UserDAL
    {
        DBManager objDBManager = new DBManager();
        string query = string.Empty;
        DataTable dt = new DataTable();
        public void SaveUser(UserBLL objUserBLL)
        {
          query = "insert into Users (FirstName,LastName,Email,Password, UserName,UserType,Gender) values ( '" + objUserBLL.FirstName + "','" + objUserBLL.LastName + "','"+objUserBLL.Email+"','"+objUserBLL.Password+"','"+objUserBLL.UserName+"','"+objUserBLL.UserType+"','"+objUserBLL.Gender+"')";
            objDBManager.ExecuteNonQuery(query);
        
        }
        /*---------------------------------------------------------------Login Page-------------------------------------------------------------------*/
        public DataTable GetUsers(UserBLL regbll)
        {
            query = "select * from Users where UserName='"+regbll.UserName+"'AND Password='"+regbll.Password+"'";
            return objDBManager.ExecuteDataTable(query);
        }

        public DataTable CheckUserName(UserBLL userlogin)
        {
            query = "select * from Users where UserName='" + userlogin.UserName + "'";
            return objDBManager.ExecuteDataTable(query);
        }
        /*-------------------------------------------------------------- Password Change -------------------------------------------------------------*/
        public void Updation(UserBLL user)
        {
            query = "update Users set Password='"+user.NewPassword+"' where UserName='"+user.UserName+"' ";
            objDBManager.ExecuteNonQuery(query);
        }
        /*--------------------------------------------------------------Grid View In Admin Page -----------------------------------------------------*/
        public DataTable Students(UserBLL regstudents)
        {
            query = "select * from Users where UserType='Student'";
            return objDBManager. ExecuteDataTable(query);
        
        }
        public DataTable Supervisor(UserBLL regsupervisor)
        {
            query = "select * from Users where UserType='Supervisor' OR UserType='Second Marker'";
            return objDBManager.ExecuteDataTable(query);

        }
        public void Deletion(String UserID)
        {
            query = "Delete from Users where UserID='"+UserID+"'";
            objDBManager.ExecuteNonQuery(query);
        }
        public void Update(UserBLL update)
        {
            query = "Update Users set FirstName='" + update.FirstName + "', LastName='" + update.LastName + "', Email='" + update.Email + "', Password='" + update.Password + "', UserName='" + update.UserName + "', UserType='" + update.UserType + "', Gender='" + update.Gender + "' where UserID='" + update.UserID + "'";
            objDBManager.ExecuteNonQuery(query);
        }
    }
}

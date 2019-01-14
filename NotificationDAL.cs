using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BLL;
using DAL;

namespace DAL
{
   public class NotificationDAL
    {
        DBManager objDBManager = new DBManager();
        string query = string.Empty;
        DataTable dt = new DataTable();

       /*--------------------------Notification Saving ---------------------*/
        public void SaveNotification(NotificationBLL objNBLL) 
        {
            query = "insert into Notification(Message) values('"+objNBLL.Message+"')";
            objDBManager.ExecuteNonQuery(query);
        }
        public DataTable GetNotification(NotificationBLL objNBLL)
        {
            query = "select * from Notification order by NotificationID DESC";
           return objDBManager.ExecuteDataTable(query);
        }
    }
}

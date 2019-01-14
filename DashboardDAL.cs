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
   public class DashboardDAL
    {
        DBManager objDBManager = new DBManager();
        string query = string.Empty;
        DataTable dt = new DataTable();
       
       /*Supervisor Info*/

       public void SaveUsers(DashboardBLL objDBLL)
       {
           query =  "insert into Users (FirstName,LastName,Email,Password, UserName,UserType,Gender) values ( '" + objDBLL.FirstName + "','" + objDBLL.LastName + "','"+objDBLL.Email+"','"+objDBLL.Password+"','"+objDBLL.UserName+"','"+objDBLL.UserType+"','"+objDBLL.Gender+"')insert into Supervisors(ContactNo,Department,Info,UserID) values('"+objDBLL.ContactNo+"','"+objDBLL.Department+"','"+objDBLL.Info+"',SCOPE_IDENTITY())";
          
           objDBManager.ExecuteNonQuery(query);
       }
       public DataTable GetSupervisors(DashboardBLL objDBLL)
       {
           query = " SELECT Users.UserID,Users.FirstName,Users.LastName,Users.Email,Users.UserName,Users.Password,Users.UserType,Users.Gender,Supervisors.SupervisorID,Supervisors.ContactNo,Supervisors.Department,Supervisors.Info  FROM Users FULL OUTER JOIN Supervisors ON Users.UserID=Supervisors.SupervisorID where Users.UserType='Supervisor'";
           return objDBManager.ExecuteDataTable(query);
       }

       /*Second Marker Info*/

       public void SaveSecondMarker(DashboardBLL objDBLL)
       {
           query = "insert into Users(FirstName,LastName,Email,Password, UserName,UserType,Gender)values ( '" + objDBLL.FirstName + "','" + objDBLL.LastName + "','" + objDBLL.Email + "','" + objDBLL.Password + "','" + objDBLL.UserName + "','" + objDBLL.UserType + "','" + objDBLL.Gender + "')insert into SecondMarker(ContactNo,Department,Info,UserID) values('" + objDBLL.ContactNo + "','" + objDBLL.Department + "','" + objDBLL.Info + "',SCOPE_IDENTITY())";
           objDBManager.ExecuteNonQuery(query);
       }
       public DataTable GetSecondMarker(DashboardBLL objDBLL) 
       {
           query = " SELECT Users.UserID,Users.FirstName,Users.LastName,Users.Email,Users.UserName,Users.Password,Users.UserType,Users.Gender,SecondMarker.SecondMarkerID,SecondMarker.ContactNo,SecondMarker.Department,SecondMarker.Info  FROM Users FULL OUTER JOIN SecondMarker ON Users.UserID=SecondMarker.SecondMarkerID where Users.UserType='SecondMarker'";
           return objDBManager.ExecuteDataTable(query);
       }

       /*Student Info*/
       public void SaveStudents(DashboardBLL objDBLL)
       {
           query = "insert into Users(FirstName,LastName,Email,Password,UserName,UserType,Gender)values('"+objDBLL.FirstName+"','"+objDBLL.LastName+"','"+objDBLL.Email+"','"+objDBLL.Password+"','"+objDBLL.UserName+"','"+objDBLL.UserType+"','"+objDBLL.Gender+"') insert into Student(ContactNo,Department,Batch,Info,UserID) values('"+objDBLL.ContactNo+"','"+objDBLL.Department+"','"+objDBLL.Batch+"','"+objDBLL.Info+"',SCOPE_IDENTITY())";
           objDBManager.ExecuteNonQuery(query);
       }
       public DataTable GetStudents(DashboardBLL objDBLL)
       {
           query = " SELECT Users.UserID,Users.FirstName,Users.LastName,Users.Email,Users.UserName,Users.Password,Users.UserType,Users.Gender,Student.StudentID,Student.ContactNo,Student.Department,Student.Info  FROM Users FULL OUTER JOIN Student ON Users.UserID=Student.StudentID where Users.UserType='Student'";
           return objDBManager.ExecuteDataTable(query);
       }
       /*Project Work*/
       public void SaveProjects(DashboardBLL objDBLL,int studentid)
       {
           query = "insert into Project(ProjectTopic,ProjectType)values('"+objDBLL.ProjectTitle+"','"+objDBLL.ProjectType+"')Update Student set ProjectID=SCOPE_IDENTITY() where UserID='"+studentid+"'";
           objDBManager.ExecuteNonQuery(query);
       }
       public DataTable GetProjects(int id)
       {
          // query = "select p.ProjectTopic,p.ProjectType ,p.SubmissionDate  , CONCAT(firstName,LastName) As SupervisorName  , (select CONCAT(firstName,LastName) from Users where UserID = p.SecondMarkerID) as SecondMarkerName from Project as p join Users  as sp on p.SupervisorID = sp.UserID and p.ProjectID = (select ProjectID from Student where UserID="+id+")";
           query = "select p.ProjectTopic,p.ProjectType ,p.SubmissionDate  , CONCAT(sp.firstName,sp.LastName) As SupervisorName  , (select CONCAT(firstName,LastName) from Users where UserID = p.SecondMarkerID) as SecondMarkerName  from Project as p full join Users  as sp on p.SupervisorID = sp.UserID full join Users as users on users.UserID = p.SecondMarkerID where p.ProjectID =(select ProjectID from Student where USERID = "+id+")"; 
           return objDBManager.ExecuteDataTable(query);

       }
       public bool  CheckUserName(string username)
       {
           query = "select * from Users where UserName='" + username + "'";
           DataTable dt = new DataTable();
           dt= objDBManager.ExecuteDataTable(query);
           if (dt.Rows.Count >0)
	        {
                return false ;
	        }
           else
           {
               return true ;
           }
       }
       /*About Info */
       public DataTable GetInfo(string UserName)
       {
           query = "select U.FirstName, U.LastName, U.Email, U.UserName, U.UserType, U.Gender, S.ContactNo, S.Department, S.Batch, S.Info from Users U Full OUTER JOIN Student S ON U.UserID =S.UserID where UserName='"+UserName+"'";
            return objDBManager.ExecuteDataTable(query);
       }
       public DataTable GetSecondMarkerInfo(string UserName)
       {
           query = "select U.FirstName, U.LastName, U.Email, U.UserName, U.UserType, U.Gender, S.ContactNo, S.Department, S.Info from Users U Full OUTER JOIN SecondMarker S ON U.UserID =S.UserID where UserName='" + UserName + "'";
           return objDBManager.ExecuteDataTable(query);
       }

       public DataTable GetSupervisorInfo(string UserName)
       {
           query = "select U.FirstName, U.LastName, U.Email, U.UserName, U.UserType, U.Gender, S.ContactNo, S.Department, S.Info from Users U Full OUTER JOIN Supervisors S ON U.UserID =S.UserID where UserName='" + UserName + "'";
           return objDBManager.ExecuteDataTable(query);
       }
       /*Admin Page Assigning*/
       public DataTable Assign(string department)
       {
           query = "select p.ProjectID, ProjectTopic, ProjectType from Project as p join Student as s on p.ProjectID =s.ProjectID where s.Department ='"+department+"' and p.SubmissionDate = '0'";
           return objDBManager.ExecuteDataTable(query);
       }
       public DataTable getspname(string department)
       {
           query = "select us.FirstName  as SuperviserName  from Users as us  join Supervisors  as sp on  us.UserID =sp.UserID and sp.Department ='"+department+"'";
           return objDBManager.ExecuteDataTable(query);
       }
       public DataTable getsMname(string department)
       {
           query = "select us.FirstName  as Secondmarkername  from Users as us  join SecondMarker   as sp on  us.UserID =sp.UserID and sp.Department ='" + department + "'";
           return objDBManager.ExecuteDataTable(query);
       }

       public void Assigninfotoprojects(string proname , string spname ,string smname , string date)
       {
           query = " update project set SupervisorID=(select UserID from Users where UserName='" + spname + "'), SecondMarkerID = (select UserID from Users where UserName='" + smname + "'),SubmissionDate = '" + date + "' where ProjectID=(select ProjectID from Project where ProjectTopic='" + proname + "')";
          // query = "update Project set SupervisorID  = (select UserID  from Users where UserName = '" + spname + "'), SecondMarkerID = (select UserID  from Users where UserName = '" + smname + "') , SubmissionDate = '" + date + "' where ProjectID = (select ProjectID   from Project  where ProjectTopic  = '" +proname+ "')";
           objDBManager.ExecuteNonQuery(query);
       }
       /*Get Notification*/
       public DataTable GetNotification(DashboardBLL objDBLL)
       {
           query = "select * from Notification order by NotificationID DESC";
           return objDBManager.ExecuteDataTable(query);
       }
       /*Supervisor Dashboard*/
       public DataTable StudentsAssign(int id)
       {
           query = "select p.ProjectType , p.ProjectTopic , SubmissionDate,(select UserName from Users as std join Student as s on std.UserID = s.UserID where s.ProjectID =p.ProjectID )as Studentname , u.UserName as SecondMarkerName from  Project as p join Users as u on  u.UserID=p.SecondMarkerID  where p.SupervisorID='"+id+"'";
           return objDBManager.ExecuteDataTable(query);
       }
       /*Second Marker Dashboard*/
       public DataTable SmAssign(int id)
       {
           query = "select p.ProjectType , p.ProjectTopic , SubmissionDate,(select UserName from Users as std join Student as s on std.UserID = s.UserID where s.ProjectID =p.ProjectID )as Studentname , u.UserName as SupervisorName from  Project as p join Users as u on  u.UserID=p.SupervisorID  where p.SecondMarkerID='" + id + "'";
           return objDBManager.ExecuteDataTable(query);
       }

    }
}

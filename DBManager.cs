using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public class DBManager
    {
       string connection = System.Configuration.ConfigurationManager.AppSettings["SQLSERVER"];
       public void ExecuteNonQuery(string query)
       {
           SqlConnection conn = new SqlConnection(connection);
           SqlCommand comm = new SqlCommand(query, conn);
           conn.Open();
           comm.ExecuteNonQuery();
           conn.Close();
       }
       public DataTable ExecuteDataTable(string Query)
       {
           SqlConnection conn = new SqlConnection(connection);
           SqlDataAdapter da = new SqlDataAdapter();
           conn.Open();
           da.SelectCommand = new SqlCommand(Query, conn);
           conn.Close();
           DataTable dt = new DataTable();
           da.Fill(dt);
           return dt;
       }
       public string ExecuteScalar(string Query)
       {
           SqlConnection conn = new SqlConnection(connection);
           SqlDataAdapter da = new SqlDataAdapter();
           conn.Open();
           da.SelectCommand = new SqlCommand(Query, conn);
           conn.Close();
           DataTable dt = new DataTable();
           da.Fill(dt);
           if (dt.Rows.Count == 1 && dt.Columns.Count == 1)
           {
               return dt.Rows[0][0].ToString();
           }
           else
           {
               return string.Empty;
           }
       }
       public bool ExecuteReader(string Query)
       {
           bool Result = false;
           SqlConnection conn = new SqlConnection(connection);
           SqlDataAdapter da = new SqlDataAdapter();
           conn.Open();
           Query = "if exists(" + Query + ") select 'True' else select 'False'";
           da.SelectCommand = new SqlCommand(Query, conn);
           conn.Close();
           DataTable dt = new DataTable();
           da.Fill(dt);
           if (dt.Rows.Count == 1 && dt.Columns.Count == 1)
           {
               if (dt.Rows[0][0].ToString() == "True")
               {
                   Result = true;
               }
               else
               {
                   Result = false;
               }
           }
           return Result;
       }
    }
}

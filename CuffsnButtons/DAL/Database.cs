using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class DataBase
    {
        SqlConnection con;
        SqlCommand cmd;

        public DataBase()
        {
            con = new SqlConnection(DAL.Properties.Settings.Default.Connection);
        }


        protected DataTable FetchData(string sqlQuery)
        {
            cmd = new SqlCommand(sqlQuery, con);
            cmd.CommandType = CommandType.Text;
            try
            {
                DataTable dt = new DataTable("ResultDataTable");
                con.Open();
                dt.Load(cmd.ExecuteReader());
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                cmd.Dispose();
            }
        }

        public void RunCommand(SqlCommand cmd)
        {
            try
            {
                cmd.Connection = con;
                cmd.CommandTimeout = 60;
                con.Open();
                cmd.ExecuteScalar();
                //return cmd;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public Int32 RunExecuteNoneQuery(SqlCommand cmd)
        {
            try
            {
                cmd.Connection = con;
                cmd.CommandTimeout = 60;
                con.Open();
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public DataTable ExecuteSqlData(string sqlQuery, SqlCommand cmd = null)
        {
            if (sqlQuery != String.Empty)
            {
                cmd = new SqlCommand(sqlQuery);
                cmd.CommandType = CommandType.Text;
            }

            try
            {
                DataTable dt = new DataTable("ResultDataTable");
                cmd.Connection = con;
                con.Open();
                dt.Load(cmd.ExecuteReader());
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                cmd.Dispose();
            }
        }

        public DataSet ReturnDataSet(SqlCommand objCmd)
        {
            try
            {
                DataSet objDS = new DataSet();
                SqlDataAdapter objDA = null;
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.Connection = con;
                con.Open();
                using (objDA = new SqlDataAdapter(objCmd))
                {
                    objDA.Fill(objDS);
                    return objDS;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                // cmd.Dispose();
            }
        }

        public int UserExist(SqlCommand cmd)
        {
            try
            {
                cmd.Connection = con;
                cmd.CommandTimeout = 60;
                con.Open();
                //cmd.ExecuteScalar();
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        protected String FetchData_WithArgument(SqlCommand cmd, int cmd_t)
        {
            System.Text.StringBuilder objStringBuilder = new System.Text.StringBuilder();
            cmd.Connection = con;
            cmd.CommandTimeout = 60;
            try
            {
                DataTable dt = new DataTable("ResultDataTable");
                con.Open();
                dt.Load(cmd.ExecuteReader());
                if (dt == null)
                { }
                else
                {
                    if (cmd_t == 1)
                    {
                        objStringBuilder.AppendLine("<table width='30%'><tr style='background-color:#A4A4A4;color:white;'><td valign='top'>Profile Title</td><td valign='top'>Size</td><td valign='top'>Fit</td></tr>");
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            if (string.IsNullOrEmpty(dt.Rows[i][5].ToString()) == true)
                            {
                                objStringBuilder.AppendLine(string.Format("<tr><td><a title='Click for edit....' href=\"javascript:get_dialouge_standardSize_nw({0},{1},'{2}',{3},{4},1);\">{2}</a></td>", dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString()));
                            }
                            else
                            {
                                objStringBuilder.AppendLine(string.Format("<tr><td><a title='Click for edit....' href=\"javascript:get_dialouge_standardSize_customize({0},{1},'{2}',{3},{4},2,{5},{6},{7},{8});\">{2}</a></td>", dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(), dt.Rows[i][7].ToString(), dt.Rows[i][8].ToString()));
                            }

                            objStringBuilder.AppendLine(string.Format("<td>{0}</td>", dt.Rows[i][10].ToString()));
                            objStringBuilder.AppendLine(string.Format("<td>{0}</td></tr>", dt.Rows[i][11].ToString()));
                        }
                        objStringBuilder.AppendLine("</table>");
                    }
                    else if (cmd_t == 2)
                    {

                        objStringBuilder.AppendLine(string.Format("<table width='30%'><tr style='background-color:#A4A4A4;color:white;'><td valign='top'>Profile Title</td><td valign='top'>Chest</td><td valign='top'>Shoulder</td></tr>"));
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            objStringBuilder.AppendLine(String.Format("<tr><td><a href=\"javascript:get_dialouge_CustomrMeasurement('{0}',{4},{1},{3},{7},{5},{2},{9},{8},{11},{12});\">{0}</a></td><td>{1}</td><td>{2}</td></tr>", dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(), dt.Rows[i][7].ToString(), dt.Rows[i][8].ToString(), dt.Rows[i][9].ToString(), dt.Rows[i][10].ToString(), dt.Rows[i][11].ToString(), dt.Rows[i][12].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][0].ToString()));
                        }
                        objStringBuilder.AppendLine("</table>");
                    }
                    else if (cmd_t == 3)
                    {
                        objStringBuilder.AppendLine(string.Format("<table width='30%'><tr style='background-color:#A4A4A4;color:white;'><td valign='top'>Profile Title</td><td valign='top'>Height</td><td valign='top'>Weight</td><td valign='top'>Collar</td></tr>"));
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            objStringBuilder.AppendLine(String.Format("<tr ><td valign='top'><a href=\"javascript:get_dialouge_BodyMeasurement('{0}',{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},'{13}',{14},{15});\">{0}</a></td><td valign='top'>{1}</td><td valign='top'>{2}</td><td valign='top'>{3}</td></tr>", dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(), dt.Rows[i][7].ToString(), dt.Rows[i][9].ToString(), dt.Rows[i][8].ToString(), dt.Rows[i][10].ToString(), dt.Rows[i][11].ToString(), dt.Rows[i][12].ToString(), dt.Rows[i][13].ToString(), dt.Rows[i][14].ToString(), dt.Rows[i][15].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][0].ToString()));
                        }
                        objStringBuilder.AppendLine("</table>");
                    }

                }

                return objStringBuilder.ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
                cmd.Dispose();
            }
        }//End function
    }
}

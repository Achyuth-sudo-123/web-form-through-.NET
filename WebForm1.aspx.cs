using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace web_Form1_Bank_Account_details
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data source=.;database=AccountdetailsDB;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                string query= "insert into Accountsdetails(Id,Account_No,Full_name,IFC_code,Branch,Bank_balance,Gender) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+DropDownList1.SelectedItem.Text+"')";


                SqlCommand cmd = new SqlCommand(query,conn);
                conn.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                conn.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try { 


                string query = "update  Accountsdetails set Account_No='" + TextBox2.Text + "',Full_name='" + TextBox3.Text + "',IFC_code='" + TextBox4.Text + "',Branch='" + TextBox5.Text + "',Bank_balance='" + TextBox6.Text + "',Gender='" + DropDownList1.Text + "' where Id = '" + TextBox1.Text + "'";


                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                conn.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {


                string query = "Delete  from Accountsdetails  where Id = '" + TextBox1.Text + "'";


                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                conn.Close();
            }

        }
    }
}
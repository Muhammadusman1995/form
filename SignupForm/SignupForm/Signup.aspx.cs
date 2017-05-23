using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SignupForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int User_ID=0;
        String n, em, dp, de, c, s, en, p, l, cm;
        
        

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["URIConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
           

            n = name.Text;
            em = email.Text;
            c = campus.Text;
            dp = department.Text;
            de = degree.Text;
            s = session.Text;
            en = enrollment.Text;
            l = id.Text;
            p = pass.Text;
            

            if (string.IsNullOrWhiteSpace(n))
            {
                Result.Text = "first name not empty";
                Result1.Text = "";
            }
            else if (string.IsNullOrWhiteSpace(em))
            {
                Result.Text = "email not empty";
                Result1.Text = "";
            }
            else if (string.IsNullOrWhiteSpace(c))
            {
                Result.Text = "Campus name  not empty";
                Result1.Text = "";
            }
            else if (string.IsNullOrWhiteSpace(dp))
            {
                Result.Text = "Department name  not empty";
                Result1.Text = "";
            }
            
            else if (string.IsNullOrWhiteSpace(l))
            {
                Result.Text = "Login ID not empty";
                Result1.Text = "";
            }
            else if (string.IsNullOrWhiteSpace(p))
            {
                Result.Text = "Password not empty";
                Result1.Text = "";
            }
            else 
            {
            //     SqlCommand check_User_Name = new SqlCommand("SELECT COUNT(*) FROM tbl_Users WHERE ([User_loginID] = @User_LoginID)", con);
            //check_User_Name.Parameters.Add("@user_LoginID", l);
            //int UserExist  = (int)check_User_Name.ExecuteScalar();
            //if (UserExist > 0)
            //{
                var r = GetDetail(User_ID,n, em, c, dp, de, s, en, l, p);
               GridView1.DataSource = r;
               GridView1.DataBind();
            //     }
            //else
            //{

            //    Result.Text = "feesd";
            //}
                 

                Result.Text = "";
                Result1.Text = "form submit Successfully.";

                //Response.Redirect("Default.aspx");
                this.name.Text = "";
                this.email.Text = "";
                this.department.Text = "";
                this.degree.Text = "";
                this.campus.Text = "";
                this.session.Text = "";
                this.enrollment.Text = "";
                this.id.Text = "";
                this.pass.Text = "";

            }
        }

        


        public DataTable GetDetail(int User_ID,string n, string em, string c, string dp, string de, string s, string en, string l, string p)
        {

            

           
                try
                {


                    SqlCommand cmd = new SqlCommand("Sp_Users", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Flag", 1);

                    cmd.Parameters.Add("@User_ID",User_ID);

                    cmd.Parameters.Add("@User_Fullname", n);
                    cmd.Parameters.Add("@User_Email", em);
                    cmd.Parameters.Add("@User_campus", c);
                    cmd.Parameters.Add("@User_Department", dp);
                    cmd.Parameters.Add("@User_Degree", de);
                    cmd.Parameters.Add("@User_session", s);
                    cmd.Parameters.Add("@User_Enrollment", en);
                    cmd.Parameters.Add("@user_LoginID", l);
                    cmd.Parameters.Add("@User_Password", p);
                    cmd.Parameters.Add("@User_CreatedBY", n);

                    DataTable tbl = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    da.Fill(tbl);
                    return tbl;

                }
                catch (Exception ex)
                {
                    
                    throw;

                }
           


            



        }

      



        protected void reset_Click(object sender, EventArgs e)
        {
            this.name.Text = "";
            this.email.Text = "";
            this.department.Text = "";
            this.degree.Text = "";
            this.campus.Text = "";
            this.session.Text = "";
            this.enrollment.Text = "";
            this.id.Text = "";
            this.pass.Text = "";
            Result.Text = "";
            Result1.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C_and_E_KarateSchoolApp
{
    public partial class Instructor : System.Web.UI.Page
    {
        KarateDataContext dbcon;
        string conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\bdcar\\Downloads\\KarateSchool.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new KarateDataContext(conn);

            if (HttpContext.Current.Session["userType"].ToString().Trim() == "Member" ||
                    HttpContext.Current.Session["userType"].ToString().Trim() == "Administrator")
            {
                Session.Clear();
                Session.RemoveAll();
                Session.Abandon();
                Session.Abandon();
                FormsAuthentication.SignOut();
                Response.Redirect("Logon.aspx", true);
            }

            Instructor myUser = (from x in dbcon.Instructors
                              where x.InstructorID == Convert.ToInt32(HttpContext.Current.Session["userID"])
                              select x).First();

            if (myUser != null)
            {
                string firstName = myUser.InstructorFirstName;
                string lastName = myUser.InstructorLastName;
                Label1.Text = firstName + " " + lastName;
            }
        }
    }
}
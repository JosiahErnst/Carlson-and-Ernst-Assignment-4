using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C_and_E_KarateSchoolApp
{
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["userType"].ToString().Trim() == "Instructor" ||
                    HttpContext.Current.Session["userType"].ToString().Trim() == "Member")
            {
                Session.Clear();
                Session.RemoveAll();
                Session.Abandon();
                Session.Abandon();
                FormsAuthentication.SignOut();
                Response.Redirect("Logon.aspx", true);
            }
        }
    }
}
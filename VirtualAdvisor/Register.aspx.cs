using Microsoft.AspNet.Membership.OpenAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualAdvDB; 

namespace VirtualAdvisor
{
    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/UpdateInfo.aspx";
            }

            TextBox FirstName = RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("tbxFirst") as TextBox;
            string fName = FirstName.Text.Trim().ToString();
            TextBox LastName = RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("tbxLast") as TextBox;
            string lName = LastName.Text.Trim().ToString();
            AddUser(fName, lName, RegisterUser.Password, RegisterUser.Email, RegisterUser.UserName); 
            Response.Redirect(continueUrl);

                    }

        protected void AddUser(string first, string last, string pw, string email, string uName) 
        {
            VAS_2Entities db = new VAS_2Entities();

            UserDetail newU = new UserDetail();

            newU.First_Name = first;
            newU.Last_Name = last;
            newU.PW = pw;
            newU.Email = email;
            newU.UserName = uName;

            db.UserDetails.Add(newU);
            db.SaveChanges(); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {            

        }
    }
}
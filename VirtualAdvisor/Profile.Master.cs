using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualAdvDB;
using System.Data;
using System.Data.SqlClient;

namespace VirtualAdvisor
{
    public partial class Profile : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VAS_2Entities db = new VAS_2Entities();

            var user = from users in db.UserDetails
                       where users.UserName == Page.User.Identity.Name
                       select users; 

            var school = from users in db.UserDetails
                         join schools in db.Universities on  users.UNIV_ID equals schools.UNIV_ID 
                         where users.UserName == Page.User.Identity.Name
                         select schools;

            string imgPath = "~/Contact_imgs/boy_default_s.jpg";

            if (user.Distinct().Count() < 1
                || !string.IsNullOrWhiteSpace(user.Distinct().First().User_Image_path.ToString()))
            {
                imgPath = user.Distinct().First().User_Image_path.ToString();
            }

            userImg.ImageUrl = imgPath;

            if (user.Distinct().Count() < 1
                || string.IsNullOrWhiteSpace(user.Distinct().First().Level_of_Education.ToString()))
            {
                lblLevelofEd.Text = "Click on Account Settings to update Your Level of Education.";
            }

            else { lblLevelofEd.Text = user.Distinct().First().Level_of_Education.ToString(); }

            if (school.Distinct().Count() < 1
                || string.IsNullOrWhiteSpace(school.Distinct().First().UNIV_Name.ToString()))
            {
                lblSchool.Text = "Click on Account Settings to update your school. ";
            }
            else { lblSchool.Text = school.Distinct().First().UNIV_Name.ToString(); }

        }
    }
}
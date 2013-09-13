using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualAdvDB;
using System.Text;
using System.Drawing;
using System.Net;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

//using System.Data.Objects;
//using System.Data.Objects.DataClasses;

namespace VirtualAdvisor
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        VAS_2Entities db = new VAS_2Entities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SessionParameter empid = new SessionParameter();
            empid.Name = User.Identity.Name;
            empid.SessionField = "empid";
            grade.Visible = false;
            rating.Visible = false;
            tbxReview.Visible = false; 
            test.Visible = false;

        }

        protected void btnViewPdf_Click(object sender, EventArgs e)
        {
            test.Visible = true;
        }

        protected void AddC_Click(object sender, EventArgs e)
        {
            bool exists = false; 
            User_Classes c = new User_Classes();
            int selectedClass = int.Parse(ddClass.SelectedValue);
            int selectedMajor = int.Parse(ddMajor.SelectedValue); 
            var existingReview = from uc in db.User_Classes
                    where uc.Class_ID == selectedClass && uc.User_Name == User.Identity.Name
                    select uc;

            if(existingReview.Count() > 0)
            {
                exists = true; 
                c = existingReview.FirstOrDefault();
            }

            var MajorID = from m in db.Majors
                    where m.ID == selectedMajor
                    select m.ID; 

            c.Class_ID = int.Parse(ddClass.SelectedValue);
            c.User_Name = User.Identity.Name;
            c.Major_ID = MajorID.First();
            c.Status = status.SelectedValue.ToString();
            c.UNIV_ID = int.Parse(ddUniversity.SelectedValue);
            c.Posting_Date = DateTime.Now.Date; 

            c.Grade = grade.SelectedValue.ToString();
            c.Review = tbxReview.Text.Trim();            
            c.Rating = int.Parse(rating.SelectedValue);

            if (c.Status.Equals("In Progress"))
            {
                c.Grade = "";
                c.Review = "";
                c.Rating = null;
            }

            if (exists)
            {
                db.SaveChanges();
                return;
            }
            else
            {
                db.User_Classes.Add(c);
                db.SaveChanges();
            }

        }

        protected void status_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(status.SelectedValue.ToString().Equals("Completed"))
            {
                grade.Visible = true;
                rating.Visible = true;
                tbxReview.Visible = true; 
            }
            if (status.SelectedValue.ToString().Equals("In Progress"))
            {
                grade.Visible = false;
                rating.Visible = false;
                tbxReview.Visible = false;
            }

        }

    }
}

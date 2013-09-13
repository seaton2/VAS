using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualAdvDB;
using AspNet;
using DotNetOpenAuth;
using System.IO;

namespace VirtualAdvisor
{
    public partial class UpdateInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            labelMessage.Text = "";

            for (int day = 1; day < 32; day++)
            {
                ListItem li = new ListItem();
                li.Text = day.ToString();
                li.Value = day.ToString();
                birthDay.Items.Add(li);
            }
            DateTimeFormatInfo dtfi = new DateTimeFormatInfo();
            for (int month = 1; month < 13; month++)
            {
                ListItem li = new ListItem();
                li.Text = dtfi.GetMonthName(month) + " (" + month.ToString() + ")";
                li.Value = month.ToString();
                birthMonth.Items.Add(li);
            }
            int thisYear = System.DateTime.Now.Year;
            int startYear = thisYear - 18;
            for (int year = startYear; year > startYear - 100; year--)
            {
                ListItem li = new ListItem();
                li.Text = year.ToString();
                li.Value = year.ToString();
                birthYear.Items.Add(li);
            }

            Majors.DataBind();
            ddMajors.DataBind();

        }

        protected void ddStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddUniversities.DataBind();
        }

        protected void ddUniversities_SelectedIndexChanged(object sender, EventArgs e)
        {
            Majors.DataBind();
            ddMajors.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(tbxGoal.Text))
                labelMessage.Text = "Your forgot to enter a GOAL!";


            DateTime DOB = DateTime.Parse(int.Parse(birthMonth.SelectedValue) + "/" + int.Parse(birthDay.SelectedValue) + "/" + int.Parse(birthYear.SelectedValue));

            VAS_2Entities db = new VAS_2Entities();
            string userName = User.Identity.Name.ToString();
            var query = from u in db.UserDetails
                        where u.UserName == userName
                        select u;

            UserDetail currentUser = query.FirstOrDefault();

            if (!string.IsNullOrEmpty(ShowImage.ImageUrl))
            {
                currentUser.User_Image_path = ShowImage.ImageUrl;
            }

            currentUser.Gender = ddGender.SelectedValue.ToString();
            if (string.IsNullOrWhiteSpace(ddMajors.SelectedValue))
                currentUser.Major_ID = null;
            else
                currentUser.Major_ID = int.Parse(ddMajors.SelectedValue.ToString());

            if (string.IsNullOrWhiteSpace(ddUniversities.SelectedValue))
                currentUser.UNIV_ID = null;
            else
                currentUser.UNIV_ID = int.Parse(ddUniversities.SelectedValue.ToString());
            currentUser.Level_of_Education = ddEducationLevel.Text.ToString();
            currentUser.DOB = DOB.Date;
            currentUser.Goal = tbxGoal.Text.Trim().ToString();

            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                labelMessage.Text = ("Error: " + ex);
            }
            finally
            {
                labelMessage.Text = "Your information has been updated!";
            }

        }


        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    if (FileUploadControl.PostedFile.ContentType == "image/jpeg" ||
                        FileUploadControl.PostedFile.ContentType == "image/png" ||
                        FileUploadControl.PostedFile.ContentType == "image/gif" ||
                        FileUploadControl.PostedFile.ContentType == "image/jpg")
                    {
                        if (FileUploadControl.PostedFile.ContentLength < 102400)
                        {
                            string filename = Path.GetFileName(FileUploadControl.FileName);
                            FileUploadControl.SaveAs(Server.MapPath("~/Images/users") + filename);
                            lblImgUploaded.Text = "Upload status: File uploaded!";
                            ShowImage.ImageUrl = "~/Images/users" + filename;
                        }
                        else
                            lblImgUploaded.Text = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        lblImgUploaded.Text = "Upload status: Only JPEG, JPG, PNG, or GIF files are accepted!";
                }
                catch (Exception ex)
                {
                    lblImgUploaded.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}
    


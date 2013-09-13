using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VirtualAdvDB; 

namespace VirtualAdvisor
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        VAS_2Entities db = new VAS_2Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
           
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            var query = from i in db.Internships
                        select i; 

            switch (ddSearchFilter.SelectedIndex)
            {
                case 0:
                    query = from i in db.Internships
                            where i.Company_Name.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                            select i;
                    break;
                case 1:
                    query = from i in db.Internships
                            where i.Internship_Title.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                            select i;
                    break;
                case 2:
                    query = from i in db.Internships
                            where i.Time_Frame.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                            select i;
                    break;
                case 3:
                    query = from i in db.Internships
                            where i.Pay.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                            select i;
                    break;
                case 4:
                    query = from i in db.Internships
                            where i.Description.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                            select i;
                    break;
                case 5:
                    query = from i in db.Internships
                            where i.Requirements.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                            select i;
                    break;
                case 6:
                    query = SearchAll();
                    break;
                default:
                    break;      
            }

            List<Internship> lst = new List<Internship>();
            lst.AddRange(query);

            for ( int i = 0; i < lst.Count; i++)
            {
                if(lst[i].Description.Length > 150)
                    lst[i].Description = lst[i].Description.Substring(0, 100) + "...";
                if (lst[i].Requirements.Length > 150)
                    lst[i].Requirements = lst[i].Requirements.Substring(0, 100) + "..."; 
            }

            gvInternships.DataSource = lst;
            gvInternships.DataBind(); 
            gvInternships.Visible = true; 
        }

        private IQueryable<Internship> SearchAll()
        {
            var query = from i in db.Internships
                        select i;
            
            if (!string.IsNullOrEmpty(tbxSearch.Text))
            {
                query = from i in db.Internships
                        where i.Company_Name.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                        || i.Description.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                        || i.Internship_Title.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                        || i.Pay.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                        || i.Requirements.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                        || i.Time_Frame.ToLower().Contains(tbxSearch.Text.Trim().ToLower())
                        select i;
            }
            return query;
        }

        public void btnSearchMap_Click(object sender, EventArgs e)
        {
            mapdiv.Visible = true;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            news.Visible = true;
        }

    }
}
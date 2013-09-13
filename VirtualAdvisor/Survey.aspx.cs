using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualAdvisor
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            var x = RadioButtonList1.SelectedIndex;
            var y = RadioButtonList1.SelectedItem;
            var z = RadioButtonList1.SelectedValue;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TextBox1.Visible = true;
                var a = Convert.ToInt32(RadioButtonList1.SelectedValue);
                var b = Convert.ToInt32(RadioButtonList2.SelectedValue);
                var c = Convert.ToInt32(RadioButtonList3.SelectedValue);
                var d = Convert.ToInt32(RadioButtonList4.SelectedValue);
                var w = Convert.ToInt32(RadioButtonList5.SelectedValue);
                var f = Convert.ToInt32(RadioButtonList6.SelectedValue);
                var g = Convert.ToInt32(RadioButtonList7.SelectedValue);
                var h = Convert.ToInt32(RadioButtonList8.SelectedValue);
                var i = Convert.ToInt32(RadioButtonList9.SelectedValue);
                var j = Convert.ToInt32(RadioButtonList10.SelectedValue);
                var k = Convert.ToInt32(RadioButtonList11.SelectedValue);
                //var b = RadioButtonList2.SelectedValue;
                //var c = RadioButtonList3.SelectedValue;
                //var d = RadioButtonList4.SelectedValue;
                //var w = RadioButtonList5.SelectedValue;
                //var f = RadioButtonList6.SelectedValue;
                //var g = RadioButtonList7.SelectedValue;
                //var h = RadioButtonList8.SelectedValue;
                //var i = RadioButtonList9.SelectedValue;
                //var j = RadioButtonList10.SelectedValue;
                //var k = RadioButtonList11.SelectedValue;

                List<String> str = new List<string>();
                if (a >= 2) str.Add("Literature");
                if (b >= 3) str.Add("Journalism");
                if (c >= 4) str.Add("Arts");
                if (d >= 3) str.Add("Psychiatrist");
                if (w >= 3) str.Add("Attorney");
                if (f >= 3) str.Add("Geoscientist");
                if (g >= 1) str.Add("Banker");
                if (h >= 3) str.Add("Business and Economy");
                if (i >= 4) str.Add("Engineer");
                if (j >= 3) str.Add("Physicist");
                if (k >= 3) str.Add("Chemical Engineer");

                String first = null;
                String second = null;
                String last = null;


                if (str.Contains("Engineer"))
                {
                    first = "Engineer"; second = str[1]; last = str[2];
                }
                else if (str.Contains("Business"))
                {
                    first = str[0]; second = "Business"; last = str[2];
                }
                else if (str.Contains("Attorney"))
                {
                    first = str[0]; second = str[1]; last = "Psychiatrist";
                }
                else
                {
                    first = str[0];
                    second = str[1];
                    last = str[2];
                }

                if (first == second)
                    first = str[4];
                else if (second == last)
                    last = str[3];
                else if (last == first)
                    first = str[5];

                TextBox1.Text = first + "," + second + "," + last;
            }
            catch (Exception ex)
            {
                TextBox1.Text = "Oops forgot to select a value!";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
        {

        }
    }
}
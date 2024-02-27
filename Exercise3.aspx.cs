using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs

            finalGrade.Text = "Submit your grade percentage to see your final grade.";
        }

        protected void CalculateGrade(object sender, EventArgs e)
        {
            double rawGrade = double.Parse(percentageGrade.Text);
            if (rawGrade >= 96.00) { finalGrade.Text = "Congrats for getting a 1.00 remark!"; }
            else if (rawGrade >= 91.51 && rawGrade <= 96.00) { finalGrade.Text = "Your final grade is 1.25."; }
            else if (rawGrade >= 87.01 && rawGrade <= 91.50) { finalGrade.Text = "Your final grade is 1.50."; }
            else if (rawGrade >= 82.51 && rawGrade <= 87.00) { finalGrade.Text = "Your final grade is 1.75."; }
            else if (rawGrade >= 78.01 && rawGrade <= 82.50) { finalGrade.Text = "Your final grade is 2.00."; }
            else if (rawGrade >= 73.51 && rawGrade <= 78.00) { finalGrade.Text = "Your final grade is 2.25."; }
            else if (rawGrade >= 69.01 && rawGrade <= 73.50) { finalGrade.Text = "Your final grade is 2.50."; }
            else if (rawGrade >= 64.51 && rawGrade <= 69.00) { finalGrade.Text = "Your final grade is 2.75."; }
            else if (rawGrade >= 60.00 && rawGrade <= 64.50) { finalGrade.Text = "Your final grade is 3.00."; }
            else { finalGrade.Text = "Your final grade is 5.00."; }
        }
    }
}
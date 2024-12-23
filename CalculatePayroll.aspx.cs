using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmployeeManagementWebApp.Models;

namespace EmployeeManagementWebApp
{
    public partial class CalculatePayroll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               //Example calculation
                double totalPayroll = EmployeeRepository.CalculateTotalPayroll();
                lblTotalPayroll.Text = "₹" + totalPayroll.ToString("N2");
            }
        }
    }
}
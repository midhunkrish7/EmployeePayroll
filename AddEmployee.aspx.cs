using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmployeeManagementWebApp.Models;

namespace EmployeeManagementWebApp
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            int id = int.Parse(txtID.Text);
            string role = ddlRole.SelectedValue;
            double basicPay = double.Parse(txtBasicPay.Text);
            double allowances = double.Parse(txtAllowances.Text);
            double deductions = double.Parse(txtDeductions.Text);

            BaseEmployee employee;

            if (role == "Manager")
            {
               
                employee = new Manager
                {
                    Name = name,
                    ID = id,
                    Role = role,
                    BasicPay = basicPay,
                    Allowances = allowances,
                    Deductions = deductions
                };
            }
            else
            {
                employee = new BaseEmployee
                {
                    Name = name,
                    ID = id,
                    Role = role,
                    BasicPay = basicPay,
                    Allowances = allowances,
                    Deductions = deductions
                };
            }

            EmployeeRepository.AddEmployee(employee);
            Response.Write("Employee added successfully!");
        }
    }

}

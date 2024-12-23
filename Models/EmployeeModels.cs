using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeManagementWebApp.Models
{
    public class EmployeeModels
    {
    }

    public class BaseEmployee
    {
        public string Name { get; set; }
        public int ID { get; set; }
        public string Role { get; set; }
        public double BasicPay { get; set; }
        public double Allowances { get; set; }
        public double Deductions { get; set; }

        public virtual double CalculateSalary()
        {
            return BasicPay + Allowances - Deductions;
        }
    }

    public class Manager : BaseEmployee
    {
        public double Bonus { get; set; }
        public override double CalculateSalary()
        {
            return base.CalculateSalary() + Bonus;
        }
    }

    public static class EmployeeRepository
    {
        private static List<BaseEmployee> employees = new List<BaseEmployee>();

        public static void AddEmployee(BaseEmployee employee)
        {
            employees.Add(employee);
        }

        public static List<BaseEmployee> GetAllEmployees()
        {
            return employees;
        }

        public static double CalculateTotalPayroll()
        {
            return employees.Sum(e => e.CalculateSalary());
        }
    }

}
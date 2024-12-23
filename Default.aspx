<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeManagementWebApp.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Employee Management</title>
    <style>
        /* Basic Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Header Styling */
        h1 {
            text-align: center;
            color: #34495e;
            padding: 20px;
            background-color: #007bff;
            margin: 0;
            font-size: 32px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Navigation Menu Styling */
        .menu-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin-top: 50px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin: 50px 0; /* Added margin to create gap between links */
        }

        a {
            text-decoration: none;
            color: white;
            background-color: #007bff;
            padding: 12px 25px;
            border-radius: 25px;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        /* Hover Effect for Links */
        a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        /* Active State for Links */
        a:active {
            background-color: #003f7f;
            transform: translateY(0);
        }

        /* Responsive Design for Smaller Screens */
        @media (max-width: 768px) {
            h1 {
                font-size: 24px;
            }

            .menu-container {
                margin-top: 30px;
            }

            a {
                font-size: 16px;
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <h1>Welcome to Employee Management System</h1>
    <div class="menu-container">
        <ul>
            <li><a href="AddEmployee.aspx">Add Employee</a></li>
            <li><a href="ViewEmployees.aspx">View Employees</a></li>
            <li><a href="CalculatePayroll.aspx">Calculate Payroll</a></li>
        </ul>
    </div>
</body>
</html>

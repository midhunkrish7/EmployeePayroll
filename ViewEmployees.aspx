<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEmployees.aspx.cs" Inherits="EmployeeManagementWebApp.ViewEmployees" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>View Employees</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }
        .container {
            max-width: 800px;
            margin: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee List</h2>
        <form id="form1" runat="server">
            <asp:GridView 
                ID="gvEmployees" 
                runat="server" 
                AutoGenerateColumns="true" 
                CssClass="employee-grid">
            </asp:GridView>
        </form>
        <a href="Default.aspx" class="back-btn">Back to Home</a>
    </div>
</body>
</html>

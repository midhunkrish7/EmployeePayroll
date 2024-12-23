<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatePayroll.aspx.cs" Inherits="EmployeeManagementWebApp.CalculatePayroll" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Calculate Payroll</title>
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
            text-align: center;
        }
        .payroll-box {
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        .payroll-box h3 {
            color: #007bff;
            margin-bottom: 15px;
        }
        .payroll-box p {
            font-size: 18px;
            color: #555;
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
        <h2>Total Payroll Calculation</h2>

        <div class="payroll-box">
            <h3>Total Payroll:</h3>
            <p>
                <asp:Label ID="lblTotalPayroll" runat="server" Font-Bold="true" Font-Size="16px"></asp:Label>
            </p>
        </div>

        <a href="Default.aspx" class="back-btn">Back to Home</a>
    </div>
</body>
</html>

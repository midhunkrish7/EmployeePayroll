<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EmployeeManagementWebApp.AddEmployee" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Employee</title>
    <style>
        /* Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Main Container Styling */
        .container {
            max-width: 600px;
            margin: 50px auto; /* Centers the container */
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Heading Styling */
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Form Styling */
        form p {
            font-size: 16px;
            margin-bottom: 15px;
        }

        form input[type="text"], form select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        /* Submit Button Styling */
        .submit-btn {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        /* Back Button Styling */
        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .back-btn:hover {
            background-color: #0056b3;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 15px;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Add Employee</h1>

        <form id="form1" runat="server">
            <p>Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox></p>
            <p>ID: <asp:TextBox ID="txtID" runat="server"></asp:TextBox></p>
            <p>Role:
                <asp:DropDownList ID="ddlRole" runat="server">
                    <asp:ListItem Text="Manager" Value="Manager"></asp:ListItem>
                    <asp:ListItem Text="Developer" Value="Developer"></asp:ListItem>
                    <asp:ListItem Text="Intern" Value="Intern"></asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>Basic Pay: <asp:TextBox ID="txtBasicPay" runat="server"></asp:TextBox></p>
            <p>Allowances: <asp:TextBox ID="txtAllowances" runat="server"></asp:TextBox></p>
            <p>Deductions: <asp:TextBox ID="txtDeductions" runat="server"></asp:TextBox></p>
            <asp:Button ID="btnSubmit" runat="server" Text="Add Employee" OnClick="btnSubmit_Click" CssClass="submit-btn" />
        </form>

        <a href="Default.aspx" class="back-btn">Back to Home</a>
    </div>

</body>
</html>

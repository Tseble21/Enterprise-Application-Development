<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.admin.employeemanagement.model.Employee" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>Employee Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/your-fontawesome-kit-id.js" crossorigin="anonymous"></script>
    <style>
        /* Add your custom styles here */
        body {
            background-color: #f8f9fa; /* Bootstrap background color */
        }
        .navbar {
            background-color: #343a40; /* Bootstrap dark gray */
        }
        .container {
            margin-top: 20px;
        }
        .abc {
            color: #007bff; /* Blue color for Edit button */
        }
        .abcd {
            color: #dc3545; /* Red color for Delete button */
        }
        .text-gray {
            color: gray;
        }
        .table {
            background-color: #ffffff; /* White background for the table */
        }
        .btn-primary, .btn-danger, .btn-secondary {
            color: #ffffff; /* White text for buttons */
        }
        .btn-primary:hover, .btn-danger:hover, .btn-secondary:hover {
            opacity: 0.8; /* Hover effect for buttons */
        }
        .btn-primary {
            background-color: #28a745; /* Green color for Edit button */
        }
        .btn-danger {
            background-color: #dc3545; /* Red color for Delete button */
        }
        .btn-secondary {
            background-color: #6c757d; /* Gray color for Add New Employee button */
        }
        .icon {
            font-size: 2.5em; /* Adjust the size as needed */
            margin-right: 5px; /* Add some spacing between icon and text */
        }
    </style>
</head>
<body>

<header>
    
</header>
<br>

<div class="row">
    <div class="container">
        <h3 class="text-center text-gray">List of Employees</h3>
        <hr>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Designation</th>
                    <th>Salary</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% 
                List<Employee> listEmployee = (List<Employee>)request.getAttribute("listEmployee");
                if (listEmployee != null && !listEmployee.isEmpty()) {
                    for (Employee employee : listEmployee) {
                %>
                    <tr>
                        <td><%= employee.getId() %></td>
                        <td><%= employee.getName() %></td>
                        <td><%= employee.getDesignation() %></td>
                        <td><%= employee.getSalary() %></td>
                        <td>
                            <a href="<%=request.getContextPath()%>/edit?id=<%= employee.getId() %>" class="btn abc">
                                <i class="fas fa-edit icon"></i> <!-- Edit icon -->
                                Edit
                            </a>
                            <a href="<%=request.getContextPath()%>/delete?id=<%= employee.getId() %>" class="btn abcd">
                                <i class="fas fa-trash-alt icon"></i> <!-- Trash icon -->
                                Delete
                            </a>
                        </td>
                    </tr>
                <% 
                    }
                } else {
                %>
                    <tr>
                        <td colspan="5" class="text-center text-gray">No employees found</td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-secondary">
                <i class="fas fa-plus icon"></i> <!-- Plus icon -->
                Add New Employee
            </a>
        </div>
    </div>
</div>

</body>
</html>

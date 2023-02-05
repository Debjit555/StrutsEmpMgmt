<%@page import="com.exavalu.models.Department"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.exavalu.services.DepartmentService"%>
<%@page import="com.exavalu.services.RoleService"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.108.0">
        <title>Add Employees</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">




<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <link href="css/header.css" rel="stylesheet">-->
        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/reset-min.css">
        <link rel="stylesheet" href="css/algolia-min.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/docs.min.css">
        <link rel="stylesheet" href="css/index.css">

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
        <meta name="theme-color" content="#712cf9">





        <!-- Custom styles for this template -->
        <link href="css/bootstrap.min.css" rel="stylesheet" >
        <link href="css/menu_css.css" rel="stylesheet" >
        <link href="css/product.css" rel="stylesheet" >
        
    </head>
    <body class="text-center">
        <jsp:include page="menu.jsp"></jsp:include>

            <main class="form-signin w-100 m-auto">

                <form action="AddEmployee" method="post">

                    
                    <h1 class="h3 mb-3 fw-normal">Please add employee details</h1>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="first name" name="firstName" required>
                        <label for="floatingInput">First Name</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="last name" name="lastName" required>
                        <label for="floatingInput">Last Name</label>
                    </div>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="phone" name="phone" oninvalid="this.setCustomValidity('Enter valid 10 digit number')" pattern="[6789][0-9]{9}" required >
                        <label for="floatingInput">Phone</label>
                    </div>
                    <div class="form-floating">
                        <select name="gender" class="form-select" id="gender" required>
                            <option value="">Select Gender</option>
                            <option value="Male">male</option>  
                            <option value="Female">female</option>  
                        </select>
                        <label for="floatingInput">Gender</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="age" name="age" required>
                        <label for="floatingInput">Age</label>
                    </div>
                    <div class="form-floating">
                    <c:set var="deptList" value="${DepartmentService.getInstance().getAllDepartment()}"></c:set>
                        <select name="departmentId" class="form-select" id="departmentId" required>
                            <option value="">Select Department</option>
                        <c:forEach var="dept" items="${deptList}">
                            <option value=${dept.departmentId}> ${dept.departmentName}  </option>
                        </c:forEach>
                    </select>
                    <label for="floatingInput">Department</label>
                </div>
                </div>
                <div class="form-floating">
                    <c:set var="roleList" value="${RoleService.getAllRoles()}"></c:set>
                        <select name="roleId" class="form-select" id="roleId" required>
                            <option value="">Select Role</option>
                        <c:forEach var="role" items="${roleList}">

                            <option value=${role.roleId}> ${role.roleName}  </option>
                        </c:forEach>
                    </select>
                    <label for="floatingInput">Role</label>
                </div>
                <div class="form-floating">
                    <input type="number" class="form-control" id="floatingInput" placeholder="basicSalary" name="basicSalary" required>
                    <label for="floatingInput">Basic Salary</label>
                </div>


                <button class="w-100 btn btn-lg btn-primary" type="submit">Submit</button>

            </form>
        </main>


    </body>
</html>

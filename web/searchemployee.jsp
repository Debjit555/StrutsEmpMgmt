<%@page import="com.exavalu.models.Employee"%>
<%@page import="com.exavalu.services.RoleService"%>
<%@page import="com.exavalu.services.DepartmentService"%>
<%@page import="com.exavalu.models.Role"%>
<%@page import="com.exavalu.models.Department"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <title>Search Employees</title>      
        <link href="css/bootstrap.min.css" rel="stylesheet" >
        <link href="css/menu_css.css" rel="stylesheet" >
        <link href="css/product.css" rel="stylesheet" >
        <!--        <link href="css/signin.css" rel="stylesheet">  -->
        <!-- Custom styles for this template -->
    </head>

    <body>
        <div id="body">
            <jsp:include page="menu.jsp"></jsp:include>
                <main class="form-signin w-100 m-auto">

                <%-- <% Employee emp = (Employee) request.getAttribute("Emp");%> --%>
                <c:set var="emp" value="${Emp}"></c:set>

                    <form action="SearchEmployee" method="post" id="myForm">

                        <img class="mb-4" src="images/image.png" alt="" width="300" height="100">
                        <h1 class="h3 mb-3 fw-normal">Search employees by data</h1>



                        <table class="table table-bordered table-hover" id = "example">
                            <thead>
                                <tr>

                                    <th>
                                        First Name
                                    </th>
                                    <th>
                                        Last Name
                                    </th>

                                    <th>
                                        Gender
                                    </th>

                                    <th>
                                        Department
                                    </th>
                                    <th>
                                        Role
                                    </th>

                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td>
                                        <input type="text" class="form-control" id="floatingInput" placeholder="first name" name="firstName" value="">

                                    </td>
                                    <td>
                                        <input type="text" class="form-control" id="floatingInput" placeholder="last name" name="lastName" value="">

                                    </td>

                                    <td>

                                        <select name="gender"  id="gender" class="form-control" >
                                            <option value="">Select Gender</option>
                                            <option value="Male">Male</option>  
                                            <option value="Female">Female</option> 

                                        </select>
                                    </td>

                                <%--  <td>
                                        <div class="form-floating">
                                            <%ArrayList deptList = DepartmentService.getAllDepartment();

                                        Iterator itr = deptList.iterator();%>
                                    <select name="departmentId" class="form-select" id="departmentId">
                                        <option value ="">Select Department</option>
                                        <%
                                            while (itr.hasNext()) {
                                                Department dept = (Department) itr.next();
                                        %>
                                        <option value=<%=dept.getDepartmentId()%>> <%=dept.getDepartmentName()%>  </option>
                                        <% }%>
                                    </select>
                                </div>
                            </td> --%>

                                <td>
                                    <div class="form-floating">

                                        <c:set var="deptList" value="${DepartmentService.getInstance().getAllDepartment()}"></c:set>


                                            <select name="departmentId" class="form-select" id="departmentId">
                                                <option value ="">Select Department</option>
                                            <c:forEach var="dept" items="${deptList}">

                                                <option value=${dept.departmentId}> ${dept.departmentName}  </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </td>


                                <%-- <td>
                                    <div class="form-floating">
                                        <%ArrayList roleList = RoleService.getAllRoles();

                                        Iterator itr1 = roleList.iterator();%>
                                    <select name="roleId" class="form-select" id="roleId">
                                        <option value ="">Select Role</option>

                                        <%
                                            while (itr1.hasNext()) {
                                                Role role = (Role) itr1.next();
                                        %>
                                        <option value=<%=role.getRoleId()%>> <%=role.getRoleName()%>  </option>
                                        <% }%>
                                    </select>
                                </div>
                            </td> --%>
                                <td>
                                    <div class="form-floating">

                                        <c:set var="roleList" value="${RoleService.getAllRoles()}"></c:set>


                                            <select name="roleId" class="form-select" id="roleId">
                                                <option value ="">Select Role</option>
                                            <c:forEach var="role" items="${roleList}">

                                                <option value=${role.roleId}> ${role.roleName}  </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </td>



                            </tr>



                        </tbody>

                    </table>


                    <div class="form-control col-sm">
                        <button class="w-100 btn btn-lg btn-primary" type="button " id="submitBtn" onclick="onSubmitButton(event)">Search</button>
                    </div>
                </form>
            </main>



            <c:if test="${EmpList != null}" >
                <table id="example" class="table table-striped border">
                    <thead>
                        <tr class="backgroud_colorha">
                            <th>
                                Employee Id
                            </th>
                            <th>
                                First Name
                            </th>
                            <th>
                                Last Name
                            </th>
                            <th>
                                Phone Number
                            </th>
                            <th>
                                Gender
                            </th>
                            <th>
                                Age
                            </th>
                            <th>
                                Department Name
                            </th>
                            <th>
                                Role Name
                            </th>
                            <th>
                                Basic Salary
                            </th>

                            <th>
                                Action
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${EmpList}" var="emp">
                            <tr>
                                <td>
                                    ${emp.getEmployeeId()}
                                </td>
                                <th scope="row">
                                    ${emp.getFirstName()}                    </th>
                                <th scope="row">
                                    ${emp.getLastName()}                    </th>
                                <td>
                                    ${emp.getPhone()}                    </td>
                                <td>
                                    ${emp.getGender()}                    </td>
                                <td>
                                    ${emp.getAge()}                    </td>
                                <td>
                                    ${emp.getDepartmentName()}                    </td>
                                <td>
                                    ${emp.getRoleName()}                    </td>
                                <td>
                                    ${emp.getBasicSalary()}                    </td>

                                <td><a href=EditEmployee?employeeId=${emp.getEmployeeId()}>
                                        Edit</a> 
                                </td>
                            </tr>

                        </c:forEach>

                    </tbody>
                </table>
            </c:if>


            <!--        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
                    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
                    <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
                    <script>
                        $(document).ready(function () {
                            $('#example').DataTable();
                        });
                    </script>-->
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script>
            // Get the form and submit button elements
            var form = document.getElementById("myForm");
            var submitBtn = document.getElementById("submitBtn");
            var responseDiv = document.getElementById("responseDiv");

            // Add a click event listener to the submit button
            submitBtn.addEventListener("click", function (event) {
                document.getElementById("body").style.display = 'none';
                // Prevent the default form submission behavior
                event.preventDefault();

                // Create a new XMLHttpRequest object
                var xhr = new XMLHttpRequest();

                // Set the request method and URL
                xhr.open("POST", "SearchEmployee", true);

                // Set the request headers (if needed)
//                xhr.setRequestHeader("Content-Type", "application/json");

                // Set the callback function to handle the response
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        // Do something with the response (if needed)
                        console.log(xhr.responseText);
                        responseDiv.innerHTML = xhr.responseText;
//                        document.body.innerHTML = xhr.responseText;
                    }
                };

                // Get the form data and send the request
                var formData = new FormData(form);
                xhr.send(formData);
            });
        </script>

        <div id="responseDiv" ></div>
    </body>
</html>
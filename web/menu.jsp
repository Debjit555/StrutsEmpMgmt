<%@page import="com.exavalu.models.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Employee Management</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta name="theme-color" content="#712cf9">

        <!-- Custom styles for this template -->
        <link href="css/header.css" rel="stylesheet">
        <!--<link href="css/carousel.css" rel="stylesheet">-->
    </head>

    <script src="https://code.jquery.com/jquery-3.6.3.js" 
                        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
                crossorigin="anonymous"></script>

    <script>
        function fetchEmployees(targetId,url)
                {
//            alert("'#"+selectedId.name+"'");
            document.getElementById('nav_bar').style.display = 'none';
              $.ajax({
                
                                    url: url,

                                    success: function (responseText) {
//                        alert(responseText);
                                            $("#" + targetId).html(responseText);
                                    }
                            });
            
                }
    </script>

    <header class="p-3 text-bg-dark" id="nav_bar">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mx-auto" role="img" viewBox="0 0 24 24"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
                </a>

                <c:set var="login_check" value="${Loggedin}"/>
                <c:if test="${login_check!=null}">

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a class="nav-link px-2 text-white" onclick="fetchEmployees('show','addemployee.jsp')" >Add </a></li>
                        <li><a class="nav-link px-2 text-white" onclick="fetchEmployees('show','employeeDetails.jsp')">Show Employees</a></li>
                        <li><a class="nav-link px-2 text-white" onclick="fetchEmployees('show','searchemployee.jsp')">Search </a></li>
                         <li><a href="#" class="nav-link px-2 text-white">Sign Out</a></li>
                    </ul>


                    <c:set var="user" value="${User}"/>
                    <a class="nav-link px-2 text-white" href="#">
                        Welcome: ${user.firstName} ${user.lastName}</a>

                </c:if>

                <c:if test="${login_check==null}">

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="login.jsp" class="nav-link px-2 text-white">Add </a></li>
                        <li><a href="login.jsp" class="nav-link px-2 text-white">Show Employees</a></li>
                        <li><a href="login.jsp" class="nav-link px-2 text-white">Search </a></li>
                        <li><a href="login.jsp" class="nav-link px-2 text-white">Update</a></li>
                        <li><a href="ApiFetch" class="nav-link px-2 text-white">API Call</a></li>


                    </ul>

                </c:if>


                <div class="text-end">
                    <% if (request.getSession().getAttribute("Loggedin") == null) {%>

                    <a href="login.jsp">
                        <button type="button" class="btn btn-outline-light me-2" >Login</button>
                    </a>
                    <a href="PreSignUp">
                        <button type="button" class="btn btn-warning">Sign-up</button>
                    </a>
                    <%
                    } else {%>

                    <a href="Logout">
                        <button type="button" class="btn btn-outline-light me-2" >Log Out</button>
                    </a>
                    <%
                        }
                    %>


                </div>
            </div>
        </div>
        
    </header>
                    <div name="show"  id="show" ></div>
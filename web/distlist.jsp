<%-- 
    Document   : distlist
    Created on : 13-Feb-2023, 3:39:06 pm
    Author     : hp
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="dist" items="${DistList}">
    <option value=${dist.getDistCode()}<c:if test="${dist.getDistCode()==User.getDistCode()}"> selected </c:if>> ${dist.getDistName()}  </option>
</c:forEach>

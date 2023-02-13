<%-- 
    Document   : statelist
    Created on : 13-Feb-2023, 12:00:28 pm
    Author     : hp
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="province" items="${StateList}">
    <option value=${province.getProvinceCode()}<c:if test="${province.getProvinceCode()==User.getStateCode()}"> selected </c:if>>
        ${province.getProvinceName()}  </option>
</c:forEach>
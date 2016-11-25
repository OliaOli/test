<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
  <title>User List</title>
  <link rel="stylesheet" href="../css/styles.css"/>
</head>
<body>

<a href="../../index.jsp">Back to Main Menu</a>
<br/>
<br/>

<h1>User List</h1>

<c:if test="${!empty bookList}">
  <table class="tg">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Age</th>
      <th>CreateDate</th>
      <th>IsAdmin</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <c:forEach items="${listUsers}" var="user">
      <tr>
        <td>${user.id}</td>
        <td><a href="/userdata/${book.id}" target="_blank">${user.name}</a></td>
        <td>${user.age}</td>
        <td>${user.createdDate}</td>
        <td>${user.isAdmin}</td>
        <td><a href="<c:url value="/edit/${user.id}"/>">Edit</a> </td>
        <td><a href="<c:url value="/remove/${user.id}"/>">Delete</a> </td>
      </tr>
    </c:forEach>
  </table>
</c:if>

<h1>Add Book</h1>

<c:url var="addAction" value="/user/add"/>
<form:form action="${addAction}" commandName="user">
  <table>
    <c:if test="${!empty user.name}">
      <tr>
        <td>
          <form:label path="id">
            <spring:message text="ID"/>
          </form:label>
        </td>
        <td>
          <form:input path="id" readonly="true" size="8" disabled="true"/>
          <form:hidden path="id"/>
        </td>
      </tr>
    </c:if>
    <tr>
      <td>
        <form:label path="name">
          <spring:message text="Name"/>
        </form:label>
      </td>
      <td>
        <form:input path="name"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="age">
          <spring:message text="Age"/>
        </form:label>
      </td>
      <td>
        <form:input path="age"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="createDate">
          <spring:message text="CreateDate"/>
        </form:label>
      </td>
      <td>
        <form:input path="createDate"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="isAdmin">
          <spring:message text="IsAdmin"/>
        </form:label>
      </td>
      <td>
        <form:input path="isAdmin"/>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <c:if test="${!empty user.name}">
          <input type="submit"
                 value="<spring:message text="Edit User"/>"/>
        </c:if>
        <c:if test="${empty user.name}">
          <input type="submit"
                 value="<spring:message text="Add User"/>"/>
        </c:if>
      </td>
    </tr>
  </table>
</form:form>
</body>
</html>
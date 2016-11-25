<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
  <title>UserData</title>
  <link rel="stylesheet" href="../css/styles.css"/>

</head>
<body>
<h1>User Details</h1>

<table class="tg">
  <tr>
    <th width="80">ID</th>
    <th width="120">Title</th>
    <th width="120">Author</th>
    <th width="120">Price</th>
  </tr>
  <tr>
    <td>${user.id}</td>
    <td>${user.name}</td>
    <td>${user.age}</td>
    <td>${user.createdDate}</td>
    <td>${user.isAdmin}</td>
  </tr>
</table>
</body>
</html>
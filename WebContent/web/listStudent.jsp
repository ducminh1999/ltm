<%-- 
    Document   : addStudent
    Created on : Aug 24, 2020, 7:39:48 PM
    Author     : Diep
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>List Student</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container">
  <div class="panel panel-primary">
	<div class="panel-heading">
      <h2 class="text-center">List Student</h2>
	</div>
	<div class="panel-body">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>STT</th>
            <th>Ho & Ten</th>
            <th>Tuoi</th>
            <th>Dia Chi</th>
            <th></th>
            <th></th>
          </tr>
        </thead>
      <tbody>
        <c:forEach var="std" items="${studentList}" varStatus="loop">
          <tr>
            <td>${loop.index + 1}</td>
            <td>${std.fullname}</td>
            <td>${std.age}</td>
            <td>${std.address}</td>
            <td>
              <a href="add?id=${std.id}">
                <button class="btn btn-warning">Edit</button>
              </a>
            </td>
            <td>
              <form method="post">
                <input type="text"  value="${std.id}" name="id" style="display: none;"/>
                <button class="btn btn-danger">Delete</button>
              </form>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
   </div>
  </div>
 </div>
</body>
</html>
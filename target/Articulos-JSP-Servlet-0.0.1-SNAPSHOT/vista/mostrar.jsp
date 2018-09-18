<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrar Art�culos</title>
<link rel="stylesheet" href="css/bootstrap.min.css">   		
        <script src="js/bootstrap.min.js"></script> 
</head>
<body>
	<h1>Lista  Art�culos</h1>
	<table>
		<tr>
			<td><a href="adminArticulo?action=index" >Ir al men�</a> </td>
		</tr>
	</table>
	
	<table class="table table-striped">
            <thead>
		<tr>
		  <th scope="col"> ID</th>
		  <th scope="col"> CODIGO</th>
		  <th scope="col"> NOMBRE</th>
		  <th scope="col">DESCRPICION</th>
		  <th scope="col">EXISTENCIA</th>
                  <th scope="col">PRECIO</th>
                  <th scope="col" colspan=2>ACCIONES</th>
		</tr>
            </thead>
            <tbody>
		<c:forEach var="articulo" items="${lista}">
			<tr>
				<td><c:out value="${articulo.id}"/></td>
				<td><c:out value="${articulo.codigo}"/></td>
				<td><c:out value="${articulo.nombre}"/></td>
				<td><c:out value="${articulo.descripcion}"/></td>
				<td><c:out value="${articulo.existencia}"/></td>
				<td><c:out value="${articulo.precio}"/></td>
				<td><a href="adminArticulo?action=showedit&id=<c:out value="${articulo.id}" />">Editar</a></td>
                                <td><a class="text-danger" href="adminArticulo?action=eliminar&id=<c:out value="${articulo.id}"/>">Eliminar</a> </td>				
			</tr>
		</c:forEach>
            </tbody>
	</table>
	
</body>
</html>
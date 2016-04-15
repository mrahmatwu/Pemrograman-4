<%@page import="java.sql.Time"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Praktikum 2</title>
</head>

<center>
<h1>Tanggal dan Waktu</h1>
</center>
<%
   Date dNow = new Date( );
   SimpleDateFormat dt = new SimpleDateFormat ("E, dd-MM-yyyy ");
   SimpleDateFormat ft = new SimpleDateFormat ("hh:mm:ss");
   out.print( "<h2 align=\"center\">Hari dan tanggal saat ini : " + dt.format(dNow) + "</h2>");
   out.print( "<h2 align=\"center\">Waktu saat ini : " + ft.format(dNow) + "</h2>");
%>
  

<h2>DAFTAR PRODUK</h2>
<sql:setDataSource  var="snapshot" 
                     driver="com.mysql.jdbc.Driver"
                     url="jdbc:mysql://localhost/latihan_prak2p4"
                     user="root" password=""/>
 
<sql:query dataSource="${snapshot}" var="result"> 
    SELECT * FROM produk
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>Kode</th>
   <th>Nama</th>
   <th>Harga</th>
   <th>Teakhir Update</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.kode}"/></td>
   <td><c:out value="${row.nama}"/></td>
   <td>Rp. <c:out value="${row.harga}"/></td>
   <td><c:out value="${row.terakhir_update}"/></td>
</tr>
</c:forEach>
</table>

</html>

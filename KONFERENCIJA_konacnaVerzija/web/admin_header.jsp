<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link rel="stylesheet" href="css/stranica.css"/>
        <link rel="stylesheet" href="css/login.css">
        
    </head>
    <body>
        
        <div id="page-container">

            <div id="header">
                <h3> <img src="slike/etran.gif" alt="ETRAN Logo" title="ETRAN"/> 
                    58. konferencija za elektroniku, telekomunikacije, računarstvo, automatiku i nuklearnu tehniku
                </h3>
                <h3> Vrnjačka Banja, 2-5. septembra 2016.</h3>


                <div>
                    <ul id="nav">
                        <li><c:if test="${sessionScope.alogged!=null}"><a href="admin_spisakAutora.jsp">Spisak autora</a></c:if></li>
                     </ul>


                       </div>
            </div>
 
            <div id="main">

                <div id="reg">
                    <ul>
                      
                          
                          <li><c:if test="${sessionScope.alogged!=null}"><a href="adminLogOut">Izloguj se</a></c:if></li>
                          <li><c:if test="${sessionScope.alogged==null}"><a href="admin.jsp">Uloguj se kao admin</a></c:if></li>
                         
                    </ul>

                </div>
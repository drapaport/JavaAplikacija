

<%-- učitavanje deskriptora osnovne biblioteke tagova - core  --%>
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
                <h3> Vrnjačka Banja, 2-5. juna 2016.godine</h3>


                <div>
                    <ul id="nav">
                        <li><a href="index.jsp">Naslovna</a></li>
                        <li><a href="#">Komiteti</a>

                            <ul class="sub-menu">
                                <li><a href="predsednistvo.jsp">Predsedništvo</a></li>
                                <li><a href="tehnicki komitet.jsp">Tehnički komitet</a></li>
                                <li><a href="savet.jsp">Savet</a></li>
                            </ul>
                        </li>

                        <li><a href="poziv.jsp">Poziv za radove</a></li>

                        <li><a href="uputstvo.jsp">Uputstvo za autore</a></li>
                        <li><a href="ListaOdobrenihRadova.jsp">Odobreni radovi</a></li>



                        <c:if test="${sessionScope.logged!=null}"> <li><a href="prijava rada.jsp">Prijava rada</a></li> </c:if>
                        <c:if test="${sessionScope.logged!=null}"> <li><a href="mojiRadovi.jsp">Moji radovi</a></li> </c:if>

                        </ul>

                    </div>
                </div>
                <div id="main">

                    <div id="reg">
                        <ul>
                        <c:if test="${sessionScope.logged!=null}"> <li><a href="mojProfil.jsp">Moj profil</a></li> </c:if>
                        <c:if test="${sessionScope.logged==null}"> <li><a href="registracija.jsp">Registruj se</a></li></c:if>
                        <li><c:if test="${sessionScope.logged==null}"><a href="login strana.jsp">Uloguj se</a></c:if></li>
                        <li><c:if test="${sessionScope.logged!=null}"><a href="LogOut">Izloguj se</a></c:if></li>

                    </ul>

                </div>

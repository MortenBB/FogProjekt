<%-- 
    Document   : allOrdersCust
    Created on : 02-05-2018, 13:36:24
    Author     : morten
--%>

<%@page import="FunctionLayer.LogicFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%for (int i = 0; i < LogicFacade.getOrders().size(); i++) {
                out.print(LogicFacade.getOrders().get(i)+"<br>");}%>
                <h2>To mark an order as sent enter the order id below </h2>
    </body>
</html>
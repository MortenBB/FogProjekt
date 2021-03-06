<%-- 
    Document   : changematerials
    Created on : May 18, 2018, 12:19:10 PM
    Author     : kristoffer
--%>

<%@page import="FunctionLayer.LogicFacade"%>
<%@page import="FunctionLayer.OrderLine"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Opdater Materialer</title>
        <style>
    .zui-table {
    border: solid 1px #DDEEEE;
    border-collapse: collapse;
    border-spacing: 0;
    font: normal 14px Arial, sans-serif;
    width: 60%;
    height: 35%

    }
    .zui-table thead th {
    background-color: #DDEFEF;
    border: solid 1px #DDEEEE;
    color: #336B6B;
    padding: 10px;
    text-align: left;
    text-shadow: 1px 1px 1px #fff;
    }
    .zui-table tbody td {
    border: solid 1px #DDEEEE;
    color: #333;
    padding: 10px;
    text-shadow: 1px 1px 1px #fff;
    }

    input[type=text]:focus {
    border: 3px solid #555;
	}

	input[type=number] {
    margin-bottom: 30px;
	}

* {
    box-sizing: border-box;
}


input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
    padding-bottom: 30px;
    margin-bottom: 30px;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: left;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
        </style>
    </head>
    <body>
        
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
        <h1>Denne side kan bruges til at ændre diverse materialer i databasen</h1>
        <h2> Herunder ses en liste af alle materialer</h2>
        
         
          <table class="zui-table table-hover">
         
         <thead>
         <tr>
            <th>Id</th> 
            <th>Beskrivelse</th>
            <th>Længde</th>
            <th>Beskrivelse</th>
            <th>Pris</th>
            <th>Materiale Gruppe</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td> 1 </td>
            <td>25X200 mm. trykimp. Brædt</td>
            <td>360</td>
            <td>understernbrædder til for & bag ende</td>
            <td>200 kr</td>
            <td>1</td>
        </tr>
        <tr>
            <td>2</td>
            <td>25X200 mm. trykimp. Brædt</td>
            <td>540</td>
            <td>understernbrædder til siderne</td>
            <td>200 kr</td>
            <td>1</td>
        </tr>
        <tr>
            <td>3</td>
            <td>25X200 mm. trykimp. Brædt</td>
            <td>360</td>
            <td>oversternbrædder til forenden</td>
            <td>200 kr</td>
            <td>1</td>
        </tr>
        <tr>
            <td>4</td>
            <td>25X200 mm. trykimp. Brædt</td>
            <td>540</td>
            <td>oversternbrædder til siderne</td>
            <td>200 kr</td>
            <td>1</td>
        </tr>
        <tr>
            <td>5</td>
            <td>38x73 mm. Lægte ubh.</td>
            <td>420</td>
            <td>til z på bagside af dør </td>
            <td>89 kr</td>
            <td>1</td>
        </tr>
    </tbody>
</table>
            
        
            <form name="materialListOrder" action="FrontController" method="POST">
            <input type="hidden" name="command" value="changematerialsdo"> Indtast idnummeret på det materiale du vil opdatere
            <input type="number" name="id" placeholder="ID" min="0"> 
            <input type="text" name="name" placeholder="Beskrivelse" size="20"> 
            <input type="number" name="length" placeholder="Længde" min="0"> 
            <input type="number" name="price" placeholder="Pris" min="0"> 
            <input type="number" name="materialgroup" placeholder="Materiale Grupoe" min="0">
            <textarea rows="4" cols="50" name="desc" placeholder="Beskrivelsen af Produktet..."></textarea>
            <input type="submit" value="OK">
            </form>
              <%@include file="footer.jsp" %>
    </body>
</html>

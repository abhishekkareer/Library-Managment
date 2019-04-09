<%-- 
    Document   : BookRegister
    Created on : Apr 8, 2019, 11:26:13 PM
    Author     : ABHISHEK KAREER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="" method="post">
        <table>
            <tr>
                <td>Book Name:-</td>
                <td>
                    <input type="text" name="BookName" placeholder="Book Name">
                </td>
            </tr>
            <tr>
                <td>Book No:-</td>
                <td>
                    <input type="text" name="BookNo" placeholder="Book No">
                </td>
            </tr>
            <tr>
                <td>Qty:-</td>
                <td>
                    <input type="text" name="Qty" placeholder="book qty">
                </td>
            </tr>
            <tr>
                <td>Book Author:-</td>
                <td>
                    <input type="text" name="BookAuthor" placeholder="Book Author">
                </td>
            </tr>
            <tr>
                <td>book Publisher:-</td>
                <td>
                    <input type="text" name="BookPublisher" placeholder="Book Publisher">
                </td>
            </tr>
            <tr>
                <td><input type="reset"></td>
                <td><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form>
    </body>
</html>

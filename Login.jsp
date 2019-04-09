<%-- 
    Document   : Login
    Created on : Apr 8, 2019, 2:21:57 PM
    Author     : ABHISHEK KAREER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login_page</title>
    <style>
        body
	{
		margin:0;
	}
	.div1
	{
		height: 600px;
		display: flex;
		font-size: 40px;
		justify-content: center;
		padding: 20px;
		align-items: center;
		box-sizing: border-box;
		flex-wrap: wrap;
                position: relative;

	}
	.div2
	{
		display: flex;
		padding: 30px;
		color: black;
		height: 400px;
		width: 450px;
                border: 1px solid lightgray;
		border-radius: 15px;
		justify-content: center;
		flex-wrap: wrap;
	}
        b
        {
            color:green;
            font-family: fantasy;
            font-size:50px; 
        }
        td
        {
            font-size:20px;
            color:red;
        }
        input[type=text]
	{
        border-radius: 20px;
        width: 400px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        background-color: lightgray;
	}
        select
        {
        border-radius: 20px;
        width: 400px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        background-color: lightgray;
        }
        input[type=password]
        {
        border-radius: 20px;
        width: 400px;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        background-color: lightgray;
        }
	input[type=submit] 
	{
        width: 400px;
        background-color: #4CAF50;
        color: #f1f1f1;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 20px;
        background-color: green;
        }
        input[type=text]:focus 
       {
        border: 1px solid green;
       }
       input[type=password]:focus 
       {
        border: 1px solid green;
       }
       select:focus
       {
           border: 1px solid green;
       }
        </style>
    </head>
    <body>
        
        <div class="div1">
            <div class="div2">
                </br>
                <form action="loginServlet" method="post">
                    <table>
                        <tr>
                            <td ><center><b>Login</b></center></td>
                        </tr>
                        <tr>
                            <td>
                            <input type="text" name="UserId" placeholder="User Id"  id="id" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" name="Password" placeholder="Password" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <select name="Batch" id="bth" required>
                <option>Batch</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                </select>
                            </td>
                        </tr>
                        <tr>
            <%
            HttpSession hts = request.getSession();
            Object obj = hts.getAttribute("LoginFailed");
            String s = (String) hts.getAttribute("LoginFailed");
            try
            {
                if(obj == null)
                {
                    System.out.println(obj);
                }
                else if(obj!=null && s.equalsIgnoreCase("failed"))
                {
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("Login failed");
                    out.println("</td>");
                    out.println("</tr>");
                hts.removeAttribute("LoginFailed");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            %>
                            <td>
                                <input type="submit" value="Login">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>

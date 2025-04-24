<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Division Calculator</title>
</head>
<body>
    <h1>Division Calculator</h1>
    
    <form method="post" action="">
        <label>Enter first number: </label>
        <input type="number" name="num1" required><br><br>

        <label>Enter second number: </label>
        <input type="number" name="num2" required><br><br>

        <input type="submit" value="Divide">
    </form>

<%
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");

    if (n1 != null && n2 != null) {
        try {
            double num1 = Double.parseDouble(n1);
            double num2 = Double.parseDouble(n2);

            if (num2 == 0) {
%>
                <h2 style="color: red;">Error: Cannot divide by zero.</h2>
<%
            } else {
                double result = num1 / num2;
%>
                <h2>Result: <%= num1 %> ÷ <%= num2 %> = <%= result %></h2>
<%
            }
        } catch (NumberFormatException e) {
%>
            <h2 style="color: red;">Invalid input! Please enter valid numbers.</h2>
<%
        }
    }
%>

</body>
</html>

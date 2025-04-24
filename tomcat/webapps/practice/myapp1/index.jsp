<html>
<head><title>JSP Test</title></head>
<body>
    <h1>Hello from JSP on Mac M1!</h1>
    <p>Current time: <%= new java.util.Date() %></p>
    <% 
        String name = "Ahmad";
        out.println("<p>Welcome, " + name + "!</p>");
    %>
</body>
</html>

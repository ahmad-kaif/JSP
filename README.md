# JSP

## JSP lets you embed Java code into HTML pages. It runs on the server using Apache Tomcat, and generates HTML to send to the browser.


## Basic Structure of JSP
```bash
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello JSP</title>
</head>
<body>
    <h1>Hello, JSP World!</h1>
    
    <%
        // This is a scriptlet: you can write Java code here
        String name = "Faizan";
        out.println("<p>Welcome, " + name + "!</p>");
    %>
</body>
</html>

```

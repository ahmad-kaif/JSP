<!-- greet.jsp -->
<%
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");

    if (name == null || name.trim().isEmpty()) {
        name = "Guest";
    }
%>

<html>
<body>
    <h2>Hello, <%= name %>!</h2>
    <h2>Your phone number: <%= phone %></h2>
    <h2>Your email: <%= email %></h2>
    <p>Welcome to the Simple Form application.</p>
</body>
</html>

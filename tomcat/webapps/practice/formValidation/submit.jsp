<%
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");

    boolean hasError = false;
    String errorMessage = "";

    if (name == null || name.trim().isEmpty()) {
        hasError = true;
        errorMessage += "Name is required.<br>";
    }
    if (phone == null || phone.trim().isEmpty()) {
        hasError = true;
        errorMessage += "Phone number is required.<br>";
    }

    if (hasError) {
%>
        <html>
        <body>
            <h2>Error!</h2>
            <p style="color:red;"><%= errorMessage %></p>
            <a href="form.jsp">Go Back</a>
        </body>
        </html>
<%
    } else {
%>
        <html>
        <body>
            <h2>Hello, <%= name %>!</h2>
            <h2>Your phone number: <%= phone %></h2>
            <p>Welcome to the Simple Form application.</p>
        </body>
        </html>
<%
    }
%>

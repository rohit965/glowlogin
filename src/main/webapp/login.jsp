<%@ page import="java.sql.*" %>
<%
    try {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.31.3.214/users", "loginwebapp", "password");
        Statement st = con.createStatement();
        ResultSet rs;

        String query = "SELECT * FROM USER WHERE username='" + userName + "' AND password='" + password + "'";
        rs = st.executeQuery(query);

        if (rs.next()) {
            // User authenticated, redirect to test2.jsp
            session.setAttribute("userid", userName);
//            response.sendRedirect("typing.jsp");
            response.sendRedirect("success.jsp");
        } else {
            // Invalid credentials, display error message
%>
            <html>
            <head>
                <style>
                    body {
                        background-color: #f2f2f2;
                        font-family: Arial, sans-serif;
                        text-align: center;
                    }

                    .error-container {
                        margin-top: 200px;
                    }

                    h1 {
                        font-size: 24px;
                        color: #ff0000;
                    }

                    p {
                        font-size: 16px;
                        color: #666666;
                    }
                </style>
            </head>
            <body>
                <div class="error-container">
                    <h1>Invalid Credentials</h1>
                    <p>The username or password you entered is incorrect. Please try again.</p>
                    <a href="index.jsp">Go back to login page</a>
                </div>
            </body>
            </html>
<%
        }

        rs.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
%>
        <html>
        <head>
            <style>
                body {
                    background-color: #f2f2f2;
                    font-family: Arial, sans-serif;
                    text-align: center;
                }

                .error-container {
                    margin-top: 200px;
                }

                h1 {
                    font-size: 24px;
                    color: #ff0000;
                }

                p {
                    font-size: 16px;
                    color: #666666;
                }
            </style>
        </head>
        <body>
            <div class="error-container">
                <h1>Error</h1>
                <p>An error occurred during login. Please try again later.</p>
            </div>
        </body>
        </html>
<%
    }
%>


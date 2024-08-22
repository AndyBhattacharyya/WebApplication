<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
    <title>Andy Login Page</title>
    <!--<link rel="stylesheet" type="text/css" href="styles.css">-->
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">

    <div class="signup">
        <form method="POST">
            <label for="chk" aria-hidden="true">Sign up</label>
            <input type="text" name="username" placeholder="User name" required="">
            <input type="password" name="password" placeholder="Password" required="">
            <button>Sign up</button>
            <%

            %>
        </form>
    </div>
    <div class="login">
        <form method="POST">
            <label for="chk" aria-hidden="true">Login</label>
            <input type="text" name="username" placeholder="User name" required="">
            <input type="password" name="password" placeholder="Password" required="">
            <p>
                <%
                    doPost(request,response);
                %>
            </p>
            <button>Login</button>
        </form>
    </div>
</div>
</body>
</html>
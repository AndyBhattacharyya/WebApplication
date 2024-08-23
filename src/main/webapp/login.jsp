<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.http.HttpRequest" %>
<!DOCTYPE html>
<%!
    HashMap<String, String> credentials = new HashMap<String, String>();
%>
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
            <input type="hidden" name="postrequesttype" value="signup" placeholder="User name">
            <input type="text" name="username" placeholder="User name" required="">
            <input type="password" name="password" placeholder="Password" required="">
            <button>Sign up</button>
            <p>
                <%
                    if(request.getMethod().equals("POST")&&request.getParameter("postrequesttype").equals("signup")){
                        String signup_username=request.getParameter("username");
                        String signup_password=request.getParameter("password");
                        if(!credentials.containsKey(request.getParameter("username"))) {
                            credentials.put(signup_username,signup_password);
                            out.println("Congratz you can login now");
                        }
                        else{
                            out.println("Sorry, that username is taken");
                        }
                    }
                %>
            </p>
        </form>
    </div>
    <div class="login">
        <form method="POST">
            <label for="chk" aria-hidden="true">Login</label>
            <input type="hidden" name="postrequesttype" value="login" placeholder="User name">
            <input type="text" name="username" placeholder="User name" required="">
            <input type="password" name="password" placeholder="Password" required="">
            <p>
                <%
                    if(request.getMethod().equals("POST")&&request.getParameter("postrequesttype").equals("login")){
                        String username = request.getParameter("username");
                        String password = request.getParameter("password");
                        if (credentials.containsKey(username)&&credentials.get(username).equals(password)){
                            out.println("Congratz you are logged in now");
                        }
                        else{
                            out.println("invalid login information");
                        }
                    }
                %>
            </p>
            <button>Login</button>
        </form>
    </div>
</div>
</body>
</html>
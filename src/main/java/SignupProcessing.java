import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class SignupProcessing extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginProcessing.credentials.put(username,password);
        response.sendRedirect("/login.jsp");
        /*
        response.setContentType("text/html");
        out.println(
                "<html><head><title>Show Parameters</title></head><body>"
                        + "<h1>Parameters</h1><ul>");
        Map<String, String[]> params = request.getParameterMap();
        for (String names: params.keySet()){
           String [] values = params.get(names);
            out.println("<li>"+ names +" = "+ Arrays.asList(values) );
        }
        out.close();
         */
    }
}

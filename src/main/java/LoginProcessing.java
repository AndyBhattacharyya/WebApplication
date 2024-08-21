import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class LoginProcessing extends HttpServlet {
    /*
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
    }
    */
    static HashMap<String, String> credentials = new HashMap<>();
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(credentials.containsKey(username) && credentials.get(username).equals(password)){
            out.println("Welcome!");
        }
        else{
            out.println("Incorrect Password");
        }
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

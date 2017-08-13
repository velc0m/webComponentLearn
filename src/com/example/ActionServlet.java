package com.example;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ActionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Person person = new Employee();
        person.setName("servletPersonName");

        req.setAttribute("nameAtr", person);
        //String name = req.getParameter("name");
        //req.setAttribute("nameAtr", name);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/jsp/action.jsp");
        requestDispatcher.forward(req, resp);
    }
}

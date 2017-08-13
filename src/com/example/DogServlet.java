package com.example;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DogServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Employee employee = new Employee();
        Dog dog = new Dog();
        dog.setName("Bobiks");
        employee.setDog(dog);
        employee.setName("Employee's name");

        req.setAttribute("employee", employee);

//        HttpSession session = req.getSession();
//        session.setAttribute("employee", employee);

        String[] stringArray = {"one", "two", "three"};

        req.setAttribute("array", stringArray);

        List<String> list = new ArrayList<>();
        list.add("list value");
        list.add("list new value");

        req.setAttribute("list", list);

        Map<String, String> map = new HashMap<>();

        map.put("key1", "One");
        map.put("key3", "Three");

        req.setAttribute("map", map);
        req.setAttribute("atr", "key1");

        RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/actionDog.jsp");
        dispatcher.forward(req, resp);
    }
}

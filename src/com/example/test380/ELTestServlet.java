package com.example.test380;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ELTestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Person person = new Person();
        person.setName("LeeLu");

        Dog dog = new Dog();
        dog.setName("Clyde");

        Toy toy1 = new Toy();
        toy1.setName("stick");

        Toy toy2 = new Toy();
        toy2.setName("Neighbor's cat");

        Toy toy3 = new Toy();
        toy3.setName("doll head");

        dog.setToys(new Toy[]{toy1, toy2, toy3});
        person.setDog(dog);

        req.setAttribute("person", person);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("jsp/ELtest.jsp");
        requestDispatcher.forward(req, resp);
    }
}

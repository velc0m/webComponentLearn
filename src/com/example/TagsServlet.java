package com.example;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class TagsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String[] strings = new String[]{"New York", "Berlin", "Los Angeles"};
        req.setAttribute("cities", strings);

        String[] films = new String[]{"Without face", "Interstellar"};
        String[] cartoons = new String[]{"Cars", "Cars 2", "Cars 3"};

        List<String[]> list = new ArrayList<>();

        list.add(films);
        list.add(cartoons);

        req.setAttribute("video", list);

        List<String> counts = new ArrayList<>();
        counts.add("Zero");
        counts.add("One");
        counts.add("Two");
        counts.add("Three");
        counts.add("Four");
        counts.add("Five");
        counts.add("Six");
        counts.add("Seven");
        counts.add("Eight");
        counts.add("Nine");
        counts.add("Ten");

        req.setAttribute("counts", counts);

        List<String> comments = new ArrayList<>();
        comments.add("Super comment");
        comments.add("Hi guy!");
        comments.add("I pretty well");

        req.setAttribute("comm", comments);

        HttpSession session = req.getSession();
        session.setAttribute("userType", "admin");

        Map<String, String> map = new HashMap<>();
        map.put("old", "old value");

        map.entrySet().stream()
                .map(stringStringEntry -> session)
                .collect(Collectors)

        req.setAttribute("pageMap", map);

        //RequestDispatcher rd = req.getRequestDispatcher("jsp/tags.jsp");
        RequestDispatcher rd = req.getRequestDispatcher("jsp/tags2.jsp");
        rd.forward(req, resp);
    }
}

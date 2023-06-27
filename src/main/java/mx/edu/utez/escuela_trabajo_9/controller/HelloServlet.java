package mx.edu.utez.escuela_trabajo_9.controller;

import mx.edu.utez.escuela_trabajo_9.models.Escuela;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Tabla de Escuelas";
    }

    //metodo get
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        //id, nombre, especie,
        Escuela e1 = new Escuela(1, "Utez", "Calle siempre viva", "Superior", "2000-8-23", 1053, 6, false);
        Escuela e2 = new Escuela(2,"Uaem", "Calle de las flores", "Superior", "1828-5-3", 2400, 10, false);
        Escuela e3 = new Escuela(3, "Uvm", "Calle de la alegrian", "Superior", "1960-11-16", 153, 20, true);
        //fenix
        List<Escuela> escuelas = new ArrayList<Escuela>();
        escuelas.add(e1);
        escuelas.add(e2);
        escuelas.add(e3);

        request.setAttribute("escuelas",escuelas);
        request.getSession().setAttribute("escuelas", escuelas);
        this.getServletConfig().getServletContext().setAttribute("escuelas", escuelas);
        response.sendRedirect("index.jsp");

    }

    public void destroy() {
    }
}
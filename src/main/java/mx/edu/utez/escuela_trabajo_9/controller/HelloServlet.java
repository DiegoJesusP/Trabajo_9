package mx.edu.utez.escuela_trabajo_9.controller;

import mx.edu.utez.escuela_trabajo_9.models.Escuela;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.*;
import javax.servlet.annotation.*;

public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Tabla de Escuelas";
    }

    //metodo get
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        //id, nombre, especie,
        Escuela e1 = new Escuela(1, "Utez", "Calle siempre viva");
        Escuela e2 = new Escuela(2,"Uaem", "Calle de las flores");
        Escuela e3 = new Escuela(3, "Uvm", "Calle de la alegrian");
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
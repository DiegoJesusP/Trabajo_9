package mx.edu.utez.escuela_trabajo_9.controller;

import mx.edu.utez.escuela_trabajo_9.models.Escuela;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DeleteEscuela extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Escuela> escuelas = (ArrayList)req.getSession().getAttribute("escuelas");
        Escuela x = new Escuela();
        int id = Integer.parseInt(req.getParameter("id"));
        for (Escuela a: escuelas) {
            if (a.getId() == id){
                x=a;
            }
        }
        escuelas.remove(x);
        resp.sendRedirect("index.jsp");
    }
}

package mx.edu.utez.escuela_trabajo_9.controller;

import mx.edu.utez.escuela_trabajo_9.models.Escuela;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "CreateEscuela", urlPatterns = "/CreateEscuela")
public class CreateEscuela extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //fenix
        Escuela nuevo =new Escuela();
        resp.setContentType("text/html");

        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String direccion = req.getParameter("direccion");
        String niveleducativo = req.getParameter("niveleducativo");
        String fechaDeFundacion = req.getParameter("fechaDeFundacion");
        String totalAlumnos = req.getParameter("totalAlumnos");
        String totalMaestros = req.getParameter("totalMaestros");

        nuevo.setId(Integer.parseInt(id));
        nuevo.setNombre(nombre);
        nuevo.setDireccion(direccion);
        nuevo.setNiveleducativo(niveleducativo);
        nuevo.setFechaDeFundacion(fechaDeFundacion);
        nuevo.setTotalAlumnos(Integer.parseInt(totalAlumnos));
        nuevo.setTotalMaestros(Integer.parseInt(totalMaestros));

        //Regisrar este animal
        List<Escuela> escuelas = (ArrayList) req.getSession().getAttribute("escuelas");
        escuelas.add(nuevo);
        req.getSession().setAttribute("escuelas",escuelas);

        //redireccionar hacia pagina principal
        resp.sendRedirect("index.jsp");



    }

    @Override
    public void destroy() {
        super.destroy();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }
}
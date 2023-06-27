package mx.edu.utez.escuela_trabajo_9.controller;

import mx.edu.utez.escuela_trabajo_9.models.DaoEscuela;
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

public class CreateEscuela extends HttpServlet{

    @Override
    public void init() throws ServletException {
        super.init();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //fenix
        DaoEscuela daoEscuela = new DaoEscuela();
        Escuela nuevo = new Escuela();
        resp.setContentType("text/html");

        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String direccion = req.getParameter("direccion");
        String niveleducatuvo = req.getParameter("niveleducativo");
        String totalAlumnos = req.getParameter("totalAlumnos");
        String totalMaestros = req.getParameter("totalMaestros");
        String fechaDeFundacion = req.getParameter("fechaDeFundacion");
        String tipo = req.getParameter("tipo");

        nuevo.setId(Integer.parseInt(id));
        nuevo.setNombre(nombre);
        nuevo.setDireccion(direccion);
        nuevo.setNiveleducativo(niveleducatuvo);
        nuevo.setTotalAlumnos(Integer.parseInt(totalAlumnos));

        nuevo.setTotalMaestros(Integer.parseInt(totalMaestros));
        nuevo.setFechaDeFundacion(fechaDeFundacion);
        nuevo.setTipo(tipo);



        // html
        PrintWriter out = resp.getWriter();
        out.println("!DOCTYPE html");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Escuela</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<script>");

        boolean create = daoEscuela.create(nuevo);
        if (create) {
            out.println("alert('Se creo una nueva escuela');");
            out.println("window.location.href = 'index.jsp';");
        } else {
            out.println("alert('No se pudo crear una nueva escuela');");
            out.println("window.location.href = 'index.jsp';");
        }
        System.out.println("create = " + create);
        out.println("</script>");
        out.println("</body>");
        out.println("</html>");





        /*
        nuevo.setId(Integer.parseInt(id));
        nuevo.setNombre(nombre);
        nuevo.setDireccion(direccion);
        nuevo.setNiveleducativo(niveleducatuvo);
        nuevo.setTotalAlumnos(Integer.parseInt(totalAlumnos));
        nuevo.setTotalMaestros(Integer.parseInt(totalMaestros));
        nuevo.setFechaDeFundacion(fechaDeFundacion);
        nuevo.setTipo(tipo);
        */


        List<Escuela> escuelas = (ArrayList) req.getSession().getAttribute("escuelas");
        escuelas.add(nuevo);
        req.getSession().setAttribute("escuelas",escuelas);

        //redireccionar hacia pagina principal
        resp.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }




    @Override
    public void destroy() {
        super.destroy();
    }


}

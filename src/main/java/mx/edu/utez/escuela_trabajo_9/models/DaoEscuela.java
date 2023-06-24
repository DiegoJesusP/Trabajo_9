package mx.edu.utez.escuela_trabajo_9.models;

import mx.edu.utez.escuela_trabajo_9.utils.MysqlConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoEscuela implements DaoRepository<Escuela>{
    @Override
    public List<Escuela> findall() {
        List<Escuela> animales = new ArrayList<>();

        // Crear la conexión
        MysqlConnector conexion = new MysqlConnector();
        Connection con = conexion.connect();

        // Verificar si la conexión fue exitosa
        if (con != null) {
            try {
                PreparedStatement stmt = con.prepareStatement("SELECT * from Escuela");
                ResultSet resultado = stmt.executeQuery();

                while (resultado.next()) {
                    int id = resultado.getInt("id");
                    String nombre = resultado.getString("nombre");
                    String direccion = resultado.getString("direccion");


                    Escuela escuela = new Escuela(id, nombre, direccion);
                    animales.add(escuela);
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("No se pudo establecer la conexión a la base de datos");
        }
        return animales;
    }

    @Override
    public Escuela findOne(int id) {
        return null;
    }

    @Override
    public boolean create(Escuela object) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public boolean update(Escuela object, int id) {
        return false;
    }
}

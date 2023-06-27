package mx.edu.utez.escuela_trabajo_9.models;

import mx.edu.utez.escuela_trabajo_9.utils.MysqlConnector;
import com.mysql.cj.jdbc.Driver;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoEscuela implements DaoRepository<Escuela>{
    private Connection conexion;
    @Override
    public List<Escuela> findall() {

        return null;
    }

    @Override
    public Escuela findOne(int id) {
        return null;
    }
// crud
    @Override
    public boolean create(Escuela object) {
        boolean create = false;
        try {
            Connection conexion = new MysqlConnector().connect();
            String query = "INSERT INTO escuelas VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setInt(1, object.getId());
            sentencia.setString(2, object.getNombre());
            sentencia.setString(3, object.getDireccion());
            sentencia.setString(4, object.getNiveleducativo());
            sentencia.setInt(6, object.getTotalAlumnos());
            sentencia.setInt(7, object.getTotalMaestros());
            sentencia.setString(5, object.getFechaDeFundacion());
            sentencia.setString(8, object.getTipo());


            int resultadoCreate = sentencia.executeUpdate();
            if (resultadoCreate > 0) {
                create = true; //se creo una nueva escuela
                System.out.println("Se creo una nueva escuela :)");
            } else {
                create = false; //no se creo una nueva escuela
                System.out.println("No se pudo crear una nueva escuela :(");

            }
            conexion.close();


        } catch (Exception e) {
            System.out.println("Error en la conexion " + e);
        }
        System.out.println("registro: " + create);
        return create;
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

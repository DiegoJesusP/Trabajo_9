package mx.edu.utez.escuela_trabajo_9.models;

public class Escuela {
    private int id;
    private String nombre;
    private String direccion;
    private String niveleducativo;
    private int totalAlumnos;
    private int totalMaestros;
    private String fechaDeFundacion;
    private String tipo;//si es de paga o publica

    //constructores

    public Escuela() {
    }

    public Escuela(int id, String nombre, String direccion) {
        this.id = id;
        this.nombre = nombre;
        this.direccion = direccion;
    }

    public Escuela(int id, String nombre, String direccion, String niveleducativo, String fechaDeFundacion, int totalAlumnos, int totalMaestros, String tipo) {
        this.id = id;
        this.nombre = nombre;
        this.direccion = direccion;
        this.niveleducativo = niveleducativo;
        this.fechaDeFundacion = fechaDeFundacion;
        this.totalAlumnos = totalAlumnos;
        this.totalMaestros = totalMaestros;
        this.tipo = tipo;
    }

    //getter and setter

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getNiveleducativo() {
        return niveleducativo;
    }

    public void setNiveleducativo(String niveleducativo) {
        this.niveleducativo = niveleducativo;
    }

    public String getFechaDeFundacion() {
        return fechaDeFundacion;
    }

    public void setFechaDeFundacion(String fechaDeFundacion) {
        this.fechaDeFundacion = fechaDeFundacion;
    }

    public int getTotalAlumnos() {
        return totalAlumnos;
    }

    public void setTotalAlumnos(int totalAlumnos) {
        this.totalAlumnos = totalAlumnos;
    }

    public int getTotalMaestros() {
        return totalMaestros;
    }

    public void setTotalMaestros(int totalMaestros) {
        this.totalMaestros = totalMaestros;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
}

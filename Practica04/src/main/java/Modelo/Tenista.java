package Modelo;

import java.io.Serializable;

public class Tenista implements Serializable{
    private int codigo;
    private String nombre;
    private String apellido;
    private int puntos;
    private String fechaNac;

    public Tenista(){}

    public Tenista(int codigo, String nombre, String apellido, int puntos, String fechaNac) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.puntos = puntos;
        this.fechaNac = fechaNac;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }
    
    
}
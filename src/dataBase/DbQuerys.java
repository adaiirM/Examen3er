package dataBase;

public class DbQuerys {
    public final static String INSERTAR = "INSERT INTO usuarios(nombre, apellidos, matricula_clave, telefono, id_grupo, id_tipo_usuario, id_carrera) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?);";
    public final static String MOSTRARMATRICULAS = "SELECT matricula_clave FROM usuarios;";
}

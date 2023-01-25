package DTOs;

public class DTOUsuario {
    private int idUsuario;
    private String nombre;
    private String apellidos;
    private int matricula;
    private int telefono;
    private String nombreGrupo;
    private String tipoUsuario;
    private String nombreCarrera;

    public DTOUsuario(int idUsuario, String nombre, String apellidos, int matricula, int telefono, String nombreGrupo, String tipoUsuario, String nombreCarrera) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.matricula = matricula;
        this.telefono = telefono;
        this.nombreGrupo = nombreGrupo;
        this.tipoUsuario = tipoUsuario;
        this.nombreCarrera = nombreCarrera;
    }

    @Override
    public String toString() {
        return  "\n Id del Usuario = " + idUsuario +
                "\n Nombre = '" + nombre +
                "\n Apellidos='" + apellidos  +
                "\n Matricula=" + matricula +
                "\n Telefono=" + telefono +
                "\n Nombre de grupo ='" + nombreGrupo +
                "\n Tipo de usuario='" + tipoUsuario +
                "\n Nombre de su carrera='" + nombreCarrera;
    }
}

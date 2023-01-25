package DAOs;

import dataBase.DbConexion;
import dataBase.DbQuerys;

import java.sql.*;

public class DAOOperaciones {
    public static int insertar(String nombre, String apelldios, String matriculaClave, String telefono, int idGrupo, int idTipoUsuario, int idCarrera){
        int i = 0;
        try{
            Connection connection = DbConexion.abrirConexion();
            PreparedStatement preparedStatement = connection.prepareStatement(DbQuerys.INSERTAR);
            preparedStatement.setString(1, nombre);
            preparedStatement.setString(2, apelldios);
            preparedStatement.setString(3, matriculaClave);
            preparedStatement.setString(4, telefono);
            preparedStatement.setInt(5, idGrupo);
            preparedStatement.setInt(6, idTipoUsuario);
            preparedStatement.setInt(7, idCarrera);
            i = preparedStatement.executeUpdate();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }

    public static int comparar(String matricula_clave){
        int i = 0;
        try{
            Connection connection = DbConexion.abrirConexion();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(DbQuerys.MOSTRARMATRICULAS);
            while (resultSet.next()){
                if (matricula_clave.equals(resultSet.getString("matricula_clave"))){
                    i = 1;
                }
            }
        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
}

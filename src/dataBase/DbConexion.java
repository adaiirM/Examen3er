package dataBase;

import dataBase.DbConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConexion {
    public static Connection abrirConexion() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(DbConfig.URL, DbConfig.USER, DbConfig.PASSWORD);
            System.out.println("La conexión fue realizada correctamente");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return connection;
    }


}

package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import oracle.jdbc.OracleDriver;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author fatma
 */
public class DBHandler {

    protected Connection connection;
    protected Statement stm;
    protected String dbUser = "fatma";
    protected String dbPass = "fatma28";

    public DBHandler() {
        connect();
    }

    public final void connect() {

        try {
            DriverManager.registerDriver(new OracleDriver());
            connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe", dbUser, dbPass);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }

    public void disConnect() {
        try {
            connection.close();
            System.out.println("Connection Closed");
        } catch (SQLException ex) {
            System.out.println("Connection Failed!");
        }
    }

}

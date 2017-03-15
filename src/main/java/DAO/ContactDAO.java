package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import model.Contact;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author fatma
 */
public class ContactDAO extends DBHandler {

    private PreparedStatement pst;
    private ResultSet rs;
    int rows;

    public ContactDAO() {
        new DBHandler();
    }

    public boolean add(Contact contactObj) {
        boolean addFlag = false;
        int nextVal = 0;
        String getNextVal = "select c_seq.nextval from dual";
        try {
            pst = connection.prepareStatement(getNextVal);
            rs = pst.executeQuery();
            if (rs.next()) {
                nextVal = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        String addQuery = "INSERT INTO Contact (c_id,username, mail, phone) values('" + nextVal + "',?, ?, ?)";
//        String addQuery = "INSERT INTO Contact (username, mail, phone) values(?, ?, ?)";

        try {

            pst = connection.prepareStatement(addQuery);

            pst.setString(1, contactObj.getUserName());
            pst.setString(2, contactObj.getMail());
            pst.setInt(3, contactObj.getPhone());

            int rowNo = pst.executeUpdate();
            addFlag = true;
            System.out.println("Insertion Done!" + rowNo + " row");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return addFlag;
    }

    public Contact getID(Contact contactObj) {
        Contact cObj = null;
        String selectQuery = "SELECT username, mail, phone from Contact where c_id='" + contactObj.getId() + "' ";
        try {
            if (connection != null) {
                pst = connection.prepareStatement(selectQuery);
                rs = pst.executeQuery();
                while (rs.next()) {
                    String uName = rs.getString(1);
                    String uMail = rs.getString(2);
                    int uPhone = rs.getInt(3);

                    cObj = new Contact(uName, uMail, uPhone);
                }
            }
        } catch (SQLException ex) {
            System.out.println("Selection Failed");
        }
        return cObj;
    }

    public ArrayList<Contact> getAll() {

        ArrayList<Contact> contactVector = new ArrayList();
        String selectQuery = "SELECT username, mail, phone from Contact";
        try {
            pst = connection.prepareStatement(selectQuery);
            rs = pst.executeQuery();

            while (rs.next()) {
                Contact contactElement = new Contact();
                String uName = rs.getString(1);
                String uMail = rs.getString(2);
                int uPhone = rs.getInt(3);
                contactElement = new Contact(uName, uMail, uPhone);
                System.out.println("contactElement" + contactElement.getUserName());
//                contactObj.add(contactElement);

            }

        } catch (SQLException ex) {
            System.out.println("Selection Failed");
        }
        return contactVector;
    }

    public boolean deleteContact(int id) {
        try {
            pst = connection.prepareStatement("delete from CONTACT where C_ID='" + id + "'", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rows = pst.executeUpdate();
            if (rows != 0) {
                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean updateContact(Contact contact) {
        try {
            pst = connection.prepareStatement("update CONTACT set PHONE='" + contact.getPhone() + "' where C_ID='" + contact.getId() + "'", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rows = pst.executeUpdate();
            if (rows != 0) {
                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public Contact getName(Contact cObj) {

        Contact contactObj = new Contact();

        System.out.println("cObj**  "+ cObj);
        String selectQuery = "SELECT mail, phone from Contact where c_id='" + cObj.getUserName() + "' ";
        try {
            if (connection != null) {
                pst = connection.prepareStatement(selectQuery);
                rs = pst.executeQuery();
                while (rs.next()) {
                    contactObj.setMail(rs.getString(1));
                    contactObj.setPhone(Integer.parseInt(rs.getString(2)));
                    contactObj.setUserName(contactObj.getUserName());

                }
            }
        } catch (SQLException ex) {
            System.out.println("Selection Failed");
        }
        return contactObj;
    }

}

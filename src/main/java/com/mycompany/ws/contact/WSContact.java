/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ws.contact;

import DAO.ContactDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import model.Contact;

/**
 *
 * @author fatma
 */
@Path("/wsContact")
public class WSContact extends DAO.DBHandler {

    private PreparedStatement pst;
    private ResultSet rs;

    
    @POST
    @Path("/addContact")
//    public String add(@QueryParam("userName") String userName, @QueryParam("mail") String mail, @QueryParam("phone") int phone) {

    public String add(@FormParam("userName") String userName, @FormParam("mail") String mail, @FormParam("phone") int phone) {

        Contact contactObj = new Contact();
        contactObj.setUserName(userName);
        contactObj.setMail(mail);
        contactObj.setPhone(phone);

        ContactDAO contactDAO = new ContactDAO();
        contactDAO.add(contactObj);

        return "Insertion Done! UserName: " + contactObj.getUserName() + "<br/>"
                + " Mail: " + contactObj.getMail() + "<br/>"
                + " Phone: " + contactObj.getPhone();
    }

    
    //////////////////
   
    //fatma's part
    
    @POST
    @Path("/getSpecContact")
    public String search(@FormParam("id") int id) {

        Contact contactObj = new Contact();
        contactObj.setId(id);

        ContactDAO contactDAO = new ContactDAO();
        Contact contactReturn = contactDAO.get(contactObj);

        return "Retrieve Spec Contact Done! " + "<br/>" + " UserName: " + contactReturn.getUserName() + "<br/>"
                + "Mail: " + contactReturn.getMail() + "<br/>"
                + "Phone Number: " + contactReturn.getPhone();
    }
    ///
      @POST
    @Path("/getContactByName")
    public Contact searchByName(@FormParam("name") String name) {

        Contact contactObj = new Contact();
        contactObj.setUserName(name);

        ContactDAO contactDAO = new ContactDAO();
        Contact contactReturn = contactDAO.get(contactObj);

          System.out.println("contactReturn"+ contactReturn);
//        return "Retrieve Spec Contact Done! " + "<br/>" + " UserName: " + contactReturn.getUserName() + "<br/>"
//                + "Mail: " + contactReturn.getMail() + "<br/>"
//                + "Phone Number: " + contactReturn.getPhone();
return contactReturn;
    }
    ///

    @POST
    @Path("/getAllContact")
    public  List<Contact> getAllContact() {
//        List result = null;
//        Contact obj = new Contact();
        ContactDAO contactDAO = new ContactDAO();
        List<Contact> contactReturn = contactDAO.getAll();

//        for (Contact c : contactReturn) {
////            result.add(c.getUserName());
////            result.add(c.getMail());
////            result.add(c.getPhone());
//            System.out.println(c.getMail() + "\n");
//        }
System.out.println("contactReturn222"+ contactReturn);

//        return "Retrieve All Contact Done! " + "<br/>" + " UserName: " + contactReturn.getUserName() + "<br/>"
//                + "Mail: " + contactReturn.getMail() + "<br/>"
//                + "Phone Number: " + contactReturn.getPhone();
//result+ "..."+  contactReturn.iterator().next().getMail();

        return contactReturn;
    }

    
   
    

//////////////////////////////////////////////////
    //Ahmed part
    
    
    
    
    
    
    
    
    
    
    
    
    //////////////////
    
}

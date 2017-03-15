/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ws.contact;

import DAO.ContactDAO;
import com.google.gson.Gson;
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
import javax.ws.rs.Produces;
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

    ArrayList<Contact> contactList = new ArrayList<>();
    Contact c = new Contact();

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
         contactObj = contactDAO.getID(contactObj);

        return "Retrieve Spec Contact Done! " + "<br/>" + " UserName: " + contactObj.getUserName() + "<br/>"
                + "Mail: " + contactObj.getMail() + "<br/>"
                + "Phone Number: " + contactObj.getPhone();
    }

    ///
    @POST
    @Path("/getContactByName")
    public String searchByName(@FormParam("name") String name) {

        Contact contactObj = new Contact();
        contactObj.setUserName(name);

        System.out.println("name******" + name);

        ContactDAO contactDAO = new ContactDAO();
        Contact contactReturn = contactDAO.getName(contactObj);

        System.out.println("contactReturn" + contactReturn.getUserName());

        return "Retrieve Spec Contact Done! " + "<br/>" + " UserName: " + contactReturn.getUserName() + "<br/>"
                + "Mail: " + contactReturn.getMail() + "<br/>"
                + "Phone Number: " + contactReturn.getPhone();
    }
    ///

    @POST
    @Path("/getAllContact")
    @Produces("application/json")
    public String getAllContact() {
        String uName = " ";
        ContactDAO contactDAO = new ContactDAO();
        contactList = contactDAO.getAll();

//        System.out.println("contactReturn222" + contactList.get(0).getMail());
//
//        for (int i = 0; i < contactList.size(); i++) // return contactList.get(i).getMail();
//       
//            System.out.println(contactList.get(i).getUserName());
        c.setContactList(contactList);

        System.out.println("sdasd************" + c.getContactList());

        Gson gson = new Gson();
        return gson.toJson(contactList);

    }

//////////////////////////////////////////////////
    //Ahmed part
    @POST
    @Path("/deleteContact")
    public String deleteContact(@FormParam("id") int id) {

        ContactDAO contactDAO = new ContactDAO();

        boolean check = contactDAO.deleteContact(id);
        if (check) {
            return "contact deleted ! " + "<br/>" + "<br/>";
        } else {
            return "error";
        }
    }

    @POST
    @Path("/updateContact")
    public String updateContact(@FormParam("id") int id, @FormParam("phone") int phone) {
        Contact contactObj = new Contact();
        contactObj.setId(id);
        contactObj.setPhone(phone);

        ContactDAO contactDAO = new ContactDAO();

        boolean check = contactDAO.updateContact(contactObj);
        if (check) {
            return "contact updated ! " + "<br/>" + "<br/>";
        } else {
            return "error";
        }
    }

    //////////////////
}

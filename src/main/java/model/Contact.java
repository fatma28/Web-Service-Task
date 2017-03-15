package model;

import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author fatma
 */
public class Contact {

    private String userName;
    private String mail;
    private int phone;
    private int id;

    ArrayList<Contact> contactList = new ArrayList<>();

    public Contact(String uMail, int uPhone) {
        this.mail = mail;
        this.phone = phone;
    }

    public ArrayList<Contact> getContactList() {
//        System.out.println("getContactList ***"+ contactList.get(0).getUserName());
        return contactList;
    }

    public void setContactList(ArrayList<Contact> contactList) {
        this.contactList = contactList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Contact(String userName, String mail, int phone) {
        this.userName = userName;
        this.mail = mail;
        this.phone = phone;
    }

    public Contact() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

}

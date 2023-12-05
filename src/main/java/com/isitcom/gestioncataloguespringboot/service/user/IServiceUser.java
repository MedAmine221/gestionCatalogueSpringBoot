package com.isitcom.gestioncataloguespringboot.service.user;

import com.isitcom.gestioncataloguespringboot.entities.User;


public interface IServiceUser
{
    public void addUser(User u);
    public String connect (User u);
}
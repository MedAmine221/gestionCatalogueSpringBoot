package com.isitcom.gestioncataloguespringboot.service.categorie;


import com.isitcom.gestioncataloguespringboot.entities.Categorie;

import java.util.List;

public interface IServiceCategorie
{
    void addcategorie (Categorie c);

    void DeleteCategorie(long id);

    Categorie getCategorie ( long id);

    List<Categorie> getAllCategories ();
}

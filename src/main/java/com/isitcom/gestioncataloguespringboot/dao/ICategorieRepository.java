package com.isitcom.gestioncataloguespringboot.dao;

import com.isitcom.gestioncataloguespringboot.entities.Categorie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICategorieRepository extends JpaRepository<Categorie, Long>{}

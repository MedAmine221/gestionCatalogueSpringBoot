package com.isitcom.gestioncataloguespringboot.dao;

import com.isitcom.gestioncataloguespringboot.entities.Produit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IProductRepository extends JpaRepository<Produit, Long> {


    List<Produit> findByNomContains(String mc);
    /* or */
    @Query("select p from Produit p where p.nom LIKE %:x% ")
    List<Produit> chercherParNom (@Param("x") String mc);
}

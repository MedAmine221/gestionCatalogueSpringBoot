package com.isitcom.gestioncataloguespringboot.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Categorie
{
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;

    private String nom;

    @OneToMany (mappedBy = "categorie", cascade = CascadeType.ALL)
    private List<Produit> liste;


    public Categorie(String nom, List<Produit> liste) {
        this.nom = nom;
        this.liste = liste;
    }


}

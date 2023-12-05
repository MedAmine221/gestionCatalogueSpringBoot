package com.isitcom.gestioncataloguespringboot.service.produit;

import com.isitcom.gestioncataloguespringboot.entities.Produit;


import java.util.List;


public interface IServiceProduit {

    public void addProduct(Produit p);
    public void deleteProduct(long id);
    public void updateProduct(Produit p);
    public Produit getProduct(long id);
    public List<Produit>getAllProducts();
    public List<Produit> getProductsBMC(String mc);


}
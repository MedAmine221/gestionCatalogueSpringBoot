package com.isitcom.gestioncataloguespringboot.service.produit;


import com.isitcom.gestioncataloguespringboot.dao.IProductRepository;
import com.isitcom.gestioncataloguespringboot.entities.Produit;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ServiceProduitImplJPA implements IServiceProduit
{
    private final IProductRepository pr;



    @Override
    public void addProduct(Produit p)
    {
        pr.save(p);
    }

    @Override
    public void deleteProduct(long id)
    {
        pr.deleteById(id);

    }

    @Override
    public void updateProduct(Produit p) {
        pr.save(p);

    }

    @Override
    public Produit getProduct(long id) {
        return   pr.findById(id).orElseThrow(() ->  new RuntimeException(("Produit de l'id "+id+ "n'existe pas ")));
    }

    @Override
    public List<Produit> getAllProducts() {
        return pr.findAll();
    }

    @Override
    public List<Produit> getProductsBMC(String mc) {
        return pr.findByNomContains(mc);
    }
}

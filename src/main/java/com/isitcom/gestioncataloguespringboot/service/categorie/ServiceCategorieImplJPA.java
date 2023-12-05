package com.isitcom.gestioncataloguespringboot.service.categorie;

import com.isitcom.gestioncataloguespringboot.dao.ICategorieRepository;
import com.isitcom.gestioncataloguespringboot.entities.Categorie;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ServiceCategorieImplJPA implements IServiceCategorie
{
    private final ICategorieRepository cr;
    @Override
    public void addcategorie(Categorie c) {
        cr.save(c);
    }

    @Override
    public void DeleteCategorie(long id)
    {
        cr.deleteById(id);
    }

    @Override
    public Categorie getCategorie(long id) {
        return cr.findById(id).orElseThrow(() ->  new RuntimeException(("categorie de l'id "+id+ "n'existe pas ")));
    }

    @Override
    public List<Categorie> getAllCategories() {
        return cr.findAll();
    }
}

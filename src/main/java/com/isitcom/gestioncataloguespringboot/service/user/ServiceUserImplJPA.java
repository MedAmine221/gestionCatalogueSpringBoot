package com.isitcom.gestioncataloguespringboot.service.user;

import com.isitcom.gestioncataloguespringboot.dao.IUserRepository;
import com.isitcom.gestioncataloguespringboot.entities.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceUserImplJPA implements IServiceUser
{
    private final IUserRepository ur;
    @Override
    public void addUser(User u)
    {
        ur.save(u);
    }

    @Override
    public String connect(User u) {
        User us  =ur.findByEmailAndPassword(u.getEmail(),u.getPassword());
        if (us==null)
        {
            return "email ou password incorrecte";
        }
        else
        {
            return us.getUsername();
        }
    }
}

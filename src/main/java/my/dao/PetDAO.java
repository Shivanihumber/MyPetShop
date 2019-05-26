package my.dao;

import my.model.Pet;

import javax.ejb.Stateless;
import javax.persistence.*;
import java.util.List;

@Stateless
public class PetDAO extends DAO {

    public void addPet(Pet pet) {
        manager.getTransaction().begin();
        manager.persist(pet);
        manager.getTransaction().commit();
    }

    public List<Pet> listAllItems() {
        Query q = this.manager.createQuery("select pet from Pet pet");
        return q.getResultList();
    }

    public void updatePet(Pet pet) {
        manager.getTransaction().begin();
        manager.merge(pet);
        manager.getTransaction().commit();
    }

    public void deletePet(Pet pet) {
        manager.getTransaction().begin();
        manager.remove(pet);
        manager.getTransaction().commit();
    }

    public Pet findById(int id) {


      Pet pet = manager.find(Pet.class,id);
    // Pet pet = (Pet) this.manager.createQuery("select pet from Pet pet where pet.id='"+id+"'");
        if (pet == null) {
            throw new EntityNotFoundException("Can't find pet for ID "
                    + pet);
        }
        return pet ;
    }


}

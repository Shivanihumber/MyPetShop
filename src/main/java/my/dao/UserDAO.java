package my.dao;

import my.model.User;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;


@Stateless
public class UserDAO extends DAO {

    public void addUser(User user) {
        manager.getTransaction().begin();
        manager.persist(user);
        manager.getTransaction().commit();

    }


    public boolean login(User user) {


        String userEmail = user.getUserEmail();
        String userPassword = user.getUserPassword();

        String searchQuery =
                "select c from User c where c.userEmail='"
                        + userEmail
                        + "' AND c.userPassword='"
                        + userPassword
                        + "'";

        return manager.createQuery(searchQuery).getSingleResult()!=null;

    }

    public List<User> getRegisteredUsers() {
        Query q = manager.createQuery("select users from User users");
        return q.getResultList();
    }
}
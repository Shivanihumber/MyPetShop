package my.dao;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

public abstract class DAO {
	
    protected EntityManager manager;
    private static final String PERSISTENCE_UNIT_NAME = "users_pu";

    public DAO() {
        manager = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME).createEntityManager();
    }
}

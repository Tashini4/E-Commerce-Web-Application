package lk.ijse.assignment_1_aad.dao.custom.impl;


import lk.ijse.assignment_1_aad.config.FactoryConfiguration;
import lk.ijse.assignment_1_aad.dao.custom.LoginDAO;
import lk.ijse.assignment_1_aad.entity.Login;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.SQLException;
import java.util.List;


public class LoginDAOImpl implements LoginDAO {
    @Override
    public boolean save(Login entity) throws Exception {
        Session session = FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.save(entity);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public boolean update(Login entity) throws Exception {
        return false;
    }
    @Override
    public boolean delete(int ID) throws Exception {
        return false;
    }
    @Override
    public List<Login> getAll() throws SQLException, ClassNotFoundException {
        return List.of();
    }
    @Override
    public Login getLastLogin() {
        Login lastLogin = null;
        try (Session session = FactoryConfiguration.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();

            try {
                lastLogin = session.createQuery("FROM Login ORDER BY login DESC", Login.class)
                        .setMaxResults(1)
                        .uniqueResult();

                transaction.commit();
            } catch (Exception e) {
                // Rollback transaction in case of an exception
                if (transaction != null) transaction.rollback();
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return lastLogin;
    }

}


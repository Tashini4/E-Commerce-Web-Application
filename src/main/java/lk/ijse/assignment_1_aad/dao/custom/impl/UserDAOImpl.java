package lk.ijse.assignment_1_aad.dao.custom.impl;

import lk.ijse.assignment_1_aad.dao.custom.UserDAO;
import lk.ijse.assignment_1_aad.entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.SQLException;
import java.util.List;

public class UserDAOImpl implements UserDAO {
    @Override
    public boolean save(User en) throws Exception {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.save(en);
        tx.commit();
        session.close();
        return true;

    }
    @Override
    public boolean update(User en) throws Exception {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.update(en);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public boolean delete(int id) throws Exception {
        Session session =  lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        User user = new User();
        user.setUserId(id);
        session.delete(user);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public List<User> getAll() throws SQLException, ClassNotFoundException {
        return List.of();
    }
    @Override
    public User searchByEmail(String email) throws SQLException, ClassNotFoundException {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        User user = session.createQuery("FROM User WHERE email = :email", User.class).setParameter("email",email)
                .uniqueResult();
        transaction.commit();
        session.close();
        return user;
    }
    @Override
    public User getLastUser(){
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        User user = session.createQuery("FROM User ORDER BY userId DESC LIMIT 1", User.class).uniqueResult();
        transaction.commit();
        session.close();
        return user;

    }
}

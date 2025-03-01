package lk.ijse.assignment_1_aad.dao.custom.impl;

import lk.ijse.assignment_1_aad.dao.custom.CategoryDAO;
import lk.ijse.assignment_1_aad.entity.Category;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAOImpl implements CategoryDAO {
    @Override
    public boolean save(Category entity) throws Exception {
        Session session =  lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.save(entity);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public boolean update(Category entity) throws Exception {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.update(entity);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public boolean delete(int ID) throws Exception {
        Session session =  lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        Category category = new Category();
        category.setCategoryId(ID);
        session.delete(category);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public List<Category> getAll() throws SQLException, ClassNotFoundException {
        List<Category> all = new ArrayList<>();
        Session session =  lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        all = session.createQuery("from Category").list();
        transaction.commit();
        session.close();
        return all;
    }
    @Override
    public Category searchByID(String id) throws SQLException, ClassNotFoundException {
        Session session =  lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        Category category = session.createQuery("FROM Category WHERE categoryId = :categoryId", Category.class).setParameter("categoryId",id)
                .uniqueResult();
        transaction.commit();
        session.close();
        return category;
    }
}

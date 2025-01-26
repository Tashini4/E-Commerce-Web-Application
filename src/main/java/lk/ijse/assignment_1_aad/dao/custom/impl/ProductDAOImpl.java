package lk.ijse.assignment_1_aad.dao.custom.impl;

import lk.ijse.assignment_1_aad.dao.custom.ProductDAO;
import lk.ijse.assignment_1_aad.entity.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImpl  implements ProductDAO {
    @Override
    public boolean save(Product entity) throws Exception {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.save(entity);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public boolean update(Product entity) throws Exception {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.update(entity);
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public boolean delete(int ID) throws Exception {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("DELETE FROM Product WHERE id = :productId");
        query.setParameter("productId", ID);
        int result = query.executeUpdate();
        tx.commit();
        session.close();
        return true;
    }
    @Override
    public List<Product> getAll() throws SQLException, ClassNotFoundException {
        List<Product> all = new ArrayList<>();
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        all = session.createQuery("from Product").list();
        transaction.commit();
        session.close();
        return all;
    }
    @Override
    public Product searchByName(String name) throws SQLException, ClassNotFoundException {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        Product product = session.createQuery("FROM Product WHERE name = :name", Product.class).setParameter("name",name)
                .uniqueResult();
        transaction.commit();
        session.close();
        return product;
    }
    @Override
    public boolean updateQty(String id, int qty) {
        Session session = lk.ijse.assignment_1_aad.config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("UPDATE Product p SET p.quantity = p.quantity - :qty WHERE p.productId = :id");
        query.setParameter("qty", qty);
        query.setParameter("id", Integer.parseInt(id));

        query.executeUpdate();
        tx.commit();
        return true;
    }
}

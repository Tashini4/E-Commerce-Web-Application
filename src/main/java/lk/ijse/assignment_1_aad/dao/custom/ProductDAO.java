package lk.ijse.assignment_1_aad.dao.custom;

import lk.ijse.assignment_1_aad.dao.CrudDAO;
import lk.ijse.assignment_1_aad.entity.Product;

import java.sql.SQLException;

public interface ProductDAO extends CrudDAO<Product> {


    Product searchByName(String name) throws SQLException, ClassNotFoundException;

    boolean updateQty(String id, int qty);
}

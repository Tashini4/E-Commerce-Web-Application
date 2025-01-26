package lk.ijse.assignment_1_aad.dao.custom;

import lk.ijse.assignment_1_aad.dao.CrudDAO;
import lk.ijse.assignment_1_aad.entity.Category;

import java.sql.SQLException;

public interface CategoryDAO extends CrudDAO<Category> {
    Category searchByID(String id) throws SQLException, ClassNotFoundException;
}

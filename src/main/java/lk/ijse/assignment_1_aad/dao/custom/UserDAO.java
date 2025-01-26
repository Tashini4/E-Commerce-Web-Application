package lk.ijse.assignment_1_aad.dao.custom;

import lk.ijse.assignment_1_aad.dao.CrudDAO;
import lk.ijse.assignment_1_aad.entity.User;

import java.sql.SQLException;

public interface UserDAO extends CrudDAO<User> {
    User searchByEmail(String id) throws SQLException,ClassNotFoundException;


    User getLastUser();
}

package lk.ijse.assignment_1_aad.dao.custom;

import lk.ijse.assignment_1_aad.dao.CrudDAO;
import lk.ijse.assignment_1_aad.entity.Login;
import lk.ijse.assignment_1_aad.entity.User;

public interface LoginDAO extends CrudDAO<Login> {
    Login getLastLogin();

}

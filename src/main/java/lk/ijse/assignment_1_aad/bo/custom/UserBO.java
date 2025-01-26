package lk.ijse.assignment_1_aad.bo.custom;

import lk.ijse.assignment_1_aad.bo.SuperBO;
import lk.ijse.assignment_1_aad.dto.UserDTO;
import lk.ijse.assignment_1_aad.entity.User;

import java.sql.SQLException;

import java.util.List;

public interface UserBO extends SuperBO {
    boolean save(UserDTO dto) throws Exception;

    boolean update(UserDTO dto) throws Exception;

    boolean delete(String id) throws Exception;

    List<User> getAll() throws SQLException,ClassNotFoundException;
    User searchByEmail(String email) throws SQLException,ClassNotFoundException;


}

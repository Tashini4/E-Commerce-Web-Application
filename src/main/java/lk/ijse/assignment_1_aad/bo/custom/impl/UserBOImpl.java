package lk.ijse.assignment_1_aad.bo.custom.impl;

import lk.ijse.assignment_1_aad.bo.custom.UserBO;
import lk.ijse.assignment_1_aad.dao.DAOFactory;
import lk.ijse.assignment_1_aad.dao.custom.UserDAO;
import lk.ijse.assignment_1_aad.dto.UserDTO;
import lk.ijse.assignment_1_aad.entity.User;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserBOImpl implements UserBO {
    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.USER);
    @Override
    public boolean save(UserDTO dto) throws Exception {
        return userDAO.save(new User(
                dto.getUserId(),
                dto.getUsername(),
                dto.getPassword(),
                dto.getEmail(),
                dto.getRole(),
                new ArrayList<>(),
                new ArrayList<>()));
    }

    @Override
    public boolean update(UserDTO dto) throws Exception {
        return userDAO.update(new User(
                dto.getUserId(),
                dto.getUsername(),
                dto.getPassword(),
                dto.getEmail(),
                dto.getRole(),
                new ArrayList<>(),
                new ArrayList<>()));
    }

    @Override
    public boolean delete(String ID) throws Exception {
        return userDAO.delete(Integer.parseInt(ID));
    }

    @Override
    public List<User> getAll() throws SQLException, ClassNotFoundException {
        return List.of();
    }
    @Override
    public User searchByEmail(String email) throws SQLException, ClassNotFoundException {
        return userDAO.searchByEmail(email);
    }
}


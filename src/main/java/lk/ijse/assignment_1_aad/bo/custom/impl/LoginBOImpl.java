package lk.ijse.assignment_1_aad.bo.custom.impl;

import lk.ijse.assignment_1_aad.bo.custom.LoginBO;
import lk.ijse.assignment_1_aad.dao.DAOFactory;
import lk.ijse.assignment_1_aad.dao.custom.LoginDAO;
import lk.ijse.assignment_1_aad.dto.LoginDTO;
import lk.ijse.assignment_1_aad.entity.Login;
import lk.ijse.assignment_1_aad.entity.User;

public class LoginBOImpl implements LoginBO {
    LoginDAO loginDAO = (LoginDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.LOGIN);

    @Override
    public boolean save(LoginDTO dto) throws Exception {
        return loginDAO.save(new Login(dto.getLogin(),dto.getUserMail()));
    }

}


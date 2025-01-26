package lk.ijse.assignment_1_aad.bo.custom;

import lk.ijse.assignment_1_aad.bo.SuperBO;
import lk.ijse.assignment_1_aad.dto.LoginDTO;
import lk.ijse.assignment_1_aad.entity.User;

public interface LoginBO extends SuperBO {
    public boolean save(LoginDTO dto) throws Exception;
}

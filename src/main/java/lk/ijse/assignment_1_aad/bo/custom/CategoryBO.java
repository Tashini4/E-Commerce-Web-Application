package lk.ijse.assignment_1_aad.bo.custom;

import lk.ijse.assignment_1_aad.bo.SuperBO;
import lk.ijse.assignment_1_aad.dto.CategoryDTO;
import lk.ijse.assignment_1_aad.entity.Category;

import java.sql.SQLException;
import java.util.List;

public interface CategoryBO extends SuperBO {
    boolean save(CategoryDTO dto) throws Exception;

    boolean update(CategoryDTO dto) throws Exception;

    boolean delete(String ID) throws Exception;

    List<CategoryDTO> getAll() throws SQLException, ClassNotFoundException;
    Category searchByID(String id) throws SQLException ,ClassNotFoundException;
}

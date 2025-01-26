package lk.ijse.assignment_1_aad.bo.custom.impl;

import lk.ijse.assignment_1_aad.bo.custom.CategoryBO;
import lk.ijse.assignment_1_aad.dao.DAOFactory;
import lk.ijse.assignment_1_aad.dao.custom.CategoryDAO;
import lk.ijse.assignment_1_aad.dto.CategoryDTO;
import lk.ijse.assignment_1_aad.entity.Category;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryBOImpl implements CategoryBO {
    CategoryDAO categoryDAO = (CategoryDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.CATEGORY);

    @Override
    public boolean save (CategoryDTO dto) throws Exception{
        return categoryDAO.save(new Category(dto.getCategoryId(),dto.getName(),new ArrayList<>()));
    }
    @Override
    public boolean update(CategoryDTO dto) throws Exception {
        return categoryDAO.update(new Category(dto.getCategoryId(),dto.getName(),new ArrayList<>()));
    }
    @Override
    public boolean delete(String ID) throws Exception {
        return categoryDAO.delete(Integer.parseInt(ID));
    }
    @Override
    public List<CategoryDTO> getAll() throws SQLException, ClassNotFoundException {
        List<Category> categories = categoryDAO.getAll();
        List<CategoryDTO> categoryDTO = new ArrayList<CategoryDTO>();
        for(Category category : categories){
            categoryDTO.add(new CategoryDTO(category.getCategoryId(),category.getName()));
        }
        return categoryDTO;
    }
    @Override
    public Category searchByID(String id) throws SQLException, ClassNotFoundException {
        return categoryDAO.searchByID(id);
    }
}

package lk.ijse.assignment_1_aad.bo.custom.impl;

import lk.ijse.assignment_1_aad.bo.custom.ProductBO;
import lk.ijse.assignment_1_aad.dao.DAOFactory;
import lk.ijse.assignment_1_aad.dao.custom.ProductDAO;
import lk.ijse.assignment_1_aad.dto.CategoryDTO;
import lk.ijse.assignment_1_aad.dto.Order_detailsDTO;
import lk.ijse.assignment_1_aad.dto.ProductDTO;
import lk.ijse.assignment_1_aad.entity.Category;
import lk.ijse.assignment_1_aad.entity.Product;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductBOImpl implements ProductBO {

    ProductDAO productDAO = (ProductDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.PRODUCT);
    @Override
    public boolean save(ProductDTO dto) throws Exception {
        return productDAO.save(new Product(dto.getProductId(),dto.getName(),dto.getPrice(), dto.getDescription(),dto.getQuantity(),dto.getImagePath(),new Category(dto.getCategory().getCategoryId(),dto.getCategory().getName(),new ArrayList<>()),new ArrayList<>(),new ArrayList<>()));

    }

    @Override
    public boolean update(ProductDTO dto) throws Exception {
        return productDAO.update(new Product(dto.getProductId(),dto.getName(),dto.getPrice(), dto.getDescription(),dto.getQuantity(),dto.getImagePath(),new Category(dto.getCategory().getCategoryId(),dto.getCategory().getName(),new ArrayList<>()),new ArrayList<>(),new ArrayList<>()));
    }

    @Override
    public boolean delete(String ID) throws Exception {
        return productDAO.delete(Integer.parseInt(ID));
    }

    @Override
    public List<ProductDTO> getAll() throws SQLException, ClassNotFoundException {
        List<Product> products = productDAO.getAll();
        List<ProductDTO> productDTOS = new ArrayList<ProductDTO>();
        for(Product product : products){
            productDTOS.add(new ProductDTO(
                    product.getProductId(),
                    product.getName(),
                    product.getPrice(),
                    product.getDescription(),
                    product.getQuantity(),
                    product.getImagePath(),
                    new CategoryDTO(product.getCategory().getCategoryId(), product.getCategory().getName())));
        }
        return productDTOS;
    }
    @Override
    public boolean update1(List<Order_detailsDTO> odList) throws SQLException, ClassNotFoundException {
        for (Order_detailsDTO od : odList) {
            boolean isUpdateQty = updateQty(String.valueOf(od.getProduct().getProductId()), od.getQuantity());
            if(!isUpdateQty) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean updateQty(String Id, int qty) throws SQLException, ClassNotFoundException {
        return productDAO.updateQty(Id,qty);
    }
}

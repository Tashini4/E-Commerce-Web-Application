package lk.ijse.assignment_1_aad.bo.custom;

import lk.ijse.assignment_1_aad.bo.SuperBO;
import lk.ijse.assignment_1_aad.dto.Order_detailsDTO;
import lk.ijse.assignment_1_aad.dto.ProductDTO;

import java.sql.SQLException;
import java.util.List;

public interface ProductBO extends SuperBO {
    boolean save(ProductDTO dto) throws Exception;
    boolean update(ProductDTO dto) throws Exception;

    boolean delete(String ID) throws Exception;

    List<ProductDTO> getAll() throws SQLException, ClassNotFoundException;

    boolean update1(List<Order_detailsDTO> odList) throws SQLException, ClassNotFoundException;

    boolean updateQty(String Id, int qty) throws SQLException, ClassNotFoundException;
}

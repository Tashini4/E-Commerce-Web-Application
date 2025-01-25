package lk.ijse.assignment_1_aad.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Order_detailsDTO {
    private int order_detailsId;
    private Integer quantity;
    private Double price;
    private OrderDTO order;
    private ProductDTO product;
}

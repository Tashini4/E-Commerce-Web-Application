package lk.ijse.assignment_1_aad.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CartDTO {
    private int cartId;
    private UserDTO user;
    private ProductDTO product;
    private Integer quantity;
}

package lk.ijse.assignment_1_aad.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ProductDTO {
    private int productId;
    private String name;
    private Double price;
    private String description;
    private int quantity;
    private String imagePath;
    private CategoryDTO category;


}

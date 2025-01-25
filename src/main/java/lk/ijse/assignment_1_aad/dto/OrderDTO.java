package lk.ijse.assignment_1_aad.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDTO {
    private int orderId;
    private Double total_price;
    private Date order_date;
    private UserDTO user;
}

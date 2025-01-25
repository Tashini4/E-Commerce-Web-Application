package lk.ijse.assignment_1_aad.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "cart")
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cartId;

    @ManyToOne
    @JoinColumn(name = "user_id" , nullable = false)
    private  User user;

    @ManyToOne
    @JoinColumn(name = "product_id" , nullable = false)
    private Product product;

    private Integer quantity;
}

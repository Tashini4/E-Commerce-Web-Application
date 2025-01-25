package lk.ijse.assignment_1_aad.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "order")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderId;

    @ManyToOne
    @JoinColumn(name = "user_id" , nullable = false)
    private User user;

    private Date orderDate;
    private Double total_price;

    @OneToMany(mappedBy = "order" ,cascade = CascadeType.ALL,orphanRemoval = true)
    private List<Order_details> orderDetails = new ArrayList<>();
}

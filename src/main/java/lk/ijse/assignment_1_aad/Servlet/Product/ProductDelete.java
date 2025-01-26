package lk.ijse.assignment_1_aad.Servlet.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.assignment_1_aad.bo.BOFactory;
import lk.ijse.assignment_1_aad.bo.custom.ProductBO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "ProductDelete",value = "/productDeleteServlet")
public class ProductDelete extends HttpServlet {

    String DB_URL="jdbc:mysql://localhost:3306/ecommerce";
    String DB_USER = "root";
    String DB_PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String product_id = req.getParameter("product_id");

       try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection connection = DriverManager.getConnection(
                   DB_URL,
                   DB_USER,
                   DB_PASSWORD
           );
           String sql = "DELETE FROM product WHERE productId = ?";
           PreparedStatement pvsm = connection.prepareStatement(sql);
           pvsm.setString(1,product_id);
           int effectRowCount = pvsm.executeUpdate();
           if (effectRowCount > 0){
               resp.sendRedirect(
                       "productDelete.jsp?message=Product Delete Successfully"
               );
           }else {
               resp.sendRedirect(
                       "productDelete.jsp?error=Product not found"
               );
           }
       }catch (Exception e){
           e.printStackTrace();
           resp.sendRedirect(
                   "productDelete.jsp?error=Fail to delete product"
           );
       }
    }
}

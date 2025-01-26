package lk.ijse.assignment_1_aad.Servlet.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.assignment_1_aad.bo.BOFactory;
import lk.ijse.assignment_1_aad.bo.custom.CategoryBO;
import lk.ijse.assignment_1_aad.bo.custom.ProductBO;
import lk.ijse.assignment_1_aad.dto.CategoryDTO;
import lk.ijse.assignment_1_aad.dto.ProductDTO;
import lk.ijse.assignment_1_aad.entity.Category;

import java.io.IOException;

@WebServlet(name = "ProductUpdateServlet" , value = "/productUpdateServlet")
public class ProductUpdateServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.CATEGORY);
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.PRODUCT);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(req.getParameter("productID"));
            String name = req.getParameter("name");
            double price = Double.parseDouble(req.getParameter("price"));
            String description = req.getParameter("description");
            int quantity = Integer.parseInt(req.getParameter("quantity"));
            String imagePath = req.getParameter("image");
            int categoryId = Integer.parseInt(req.getParameter("categoryID"));

            System.out.println(productId);
            System.out.println(name);
            System.out.println(price);
            System.out.println(description);
            System.out.println(quantity);
            System.out.println(imagePath);
            System.out.println(categoryId);

            Category category = categoryBO.searchByID(String.valueOf(categoryId));
            CategoryDTO categoryDTO = new CategoryDTO(category.getCategoryId(),category.getName());
            boolean isUpdated = productBO.update(new ProductDTO(productId,name,price,description,quantity,imagePath,categoryDTO));

            if (isUpdated){
                req.setAttribute("alertType","success");
                req.setAttribute("alertMessage", "Product Update Successfully");
                req.getRequestDispatcher("productUpdate.jsp").forward(req,resp);
            }else {
                req.setAttribute("alertType","error");
                req.setAttribute("alertMessage","Failed to Update the product");
            }
        }catch (Exception e){
            req.setAttribute("alertType" , "error");
            req.setAttribute("alertMessage","An error occurred: " + e.getMessage());
        }
    }
}

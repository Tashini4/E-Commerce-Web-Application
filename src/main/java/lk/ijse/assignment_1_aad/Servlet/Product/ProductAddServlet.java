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
import lk.ijse.assignment_1_aad.entity.Product;

import java.io.IOException;

@WebServlet(name = "ProductAdd_Servlet",value = "/productAddServlet")
public class ProductAddServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.CATEGORY);
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.PRODUCT);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productId = Integer.parseInt(req.getParameter("productID"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String imagePath = req.getParameter("image");
        int categoryId = Integer.parseInt(req.getParameter("categoryID"));

        try {
            Category category = categoryBO.searchByID(String.valueOf(categoryId));
            CategoryDTO categoryDTO = new CategoryDTO(category.getCategoryId(),category.getName());
            boolean isSaved = productBO.save(new ProductDTO(productId,name,price,description,quantity,imagePath,categoryDTO));

            if (isSaved){
                req.setAttribute("alertType","success");
                req.setAttribute("alertMessage","Product added Successfully");
            } else {
                req.setAttribute("alertType","error");
                req.setAttribute("alertMessage","Failed to add the product.");
            }
        }catch (Exception e){
            req.setAttribute("alertType","error");
            req.setAttribute("alertMessage","An error occurred: " + e.getMessage());
        }
        req.getRequestDispatcher("productAdd.jsp").forward(req,resp);
    }
}

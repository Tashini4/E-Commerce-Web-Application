package lk.ijse.assignment_1_aad.Servlet.category;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.assignment_1_aad.bo.BOFactory;
import lk.ijse.assignment_1_aad.bo.custom.CategoryBO;
import lk.ijse.assignment_1_aad.dto.CategoryDTO;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryListServlet", value = "/categoryList")
public class CategoryList extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.CATEGORY);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<CategoryDTO> categories = categoryBO.getAll();
            req.setAttribute("categories", categories);
            RequestDispatcher rd  = req.getRequestDispatcher("category-List.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
            req.setAttribute("alertType", "danger");
            req.setAttribute("alertMessage", "Error loading categories: " + e.getMessage());
        }

    }
}

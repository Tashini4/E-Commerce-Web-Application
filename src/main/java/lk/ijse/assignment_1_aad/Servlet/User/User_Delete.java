package lk.ijse.assignment_1_aad.Servlet.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.assignment_1_aad.bo.BOFactory;
import lk.ijse.assignment_1_aad.bo.custom.UserBO;
import lk.ijse.assignment_1_aad.entity.User;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet(name = "UserDelete", value = "/deleteAccountServlet")
public class User_Delete extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.USER);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            // Check if the user exists
            User user = userBO.searchByEmail(email);

            if (user == null) {
                req.setAttribute("error", "The email address does not exist.");
                req.getRequestDispatcher("userUpdate.jsp").forward(req, resp);
                return;
            }

            // Verify password
            if (!BCrypt.checkpw(password, user.getPassword())) {
                req.setAttribute("error", "Incorrect password.");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                return;
            }

            // Delete the user account
            boolean isDeleted = userBO.delete(String.valueOf(user.getUserId()));

            if (isDeleted) {
                req.setAttribute("message", "Account deleted successfully.");
                req.getRequestDispatcher("userUpdate.jsp").forward(req, resp);
            } else {
                req.setAttribute("error", "Failed to delete the account. Please try again.");
                req.getRequestDispatcher("userUpdate.jsp").forward(req, resp);
            }

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "An unexpected error occurred. Please try again.");
            req.getRequestDispatcher("userUpdate.jsp").forward(req, resp);
        }
    }
}



package lk.ijse.assignment_1_aad.Servlet.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.assignment_1_aad.bo.BOFactory;
import lk.ijse.assignment_1_aad.bo.custom.LoginBO;
import lk.ijse.assignment_1_aad.bo.custom.UserBO;
import lk.ijse.assignment_1_aad.dto.LoginDTO;
import lk.ijse.assignment_1_aad.entity.User;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value ="/login-Servlet")
public class UserLogin extends HttpServlet {

     UserBO userBO = (UserBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.USER);
     LoginBO loginBO = (LoginBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.LOGIN);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userEmail = req.getParameter("username");
        String password = req.getParameter("password");

        try {
            // Validate input fields
            if (userEmail == null || password == null || userEmail.isEmpty() || password.isEmpty()) {
                req.setAttribute("error", "Username and password are required.");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                return;
            }

            // Search for user by email
            User user = userBO.searchByEmail(userEmail);

            if (user == null) {
                req.setAttribute("error", "User does not exist.");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                return;
            }

            // Verify password
            if (!BCrypt.checkpw(password, user.getPassword())) {
                req.setAttribute("error", "Incorrect password.");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                return;
            }

            // Save login details
            LoginDTO login = new LoginDTO(1, userEmail); // Assuming '1' as a placeholder login ID
            loginBO.save(login);

            // Redirect based on role
            String userRole = user.getRole();
            if ("Admin".equalsIgnoreCase(userRole)) {
                resp.sendRedirect("adminDashboard.jsp"); // Admin dashboard
            } else if ("Customer".equalsIgnoreCase(userRole)) {
                resp.sendRedirect("customerDashboard"); // Customer dashboard
            } else {
                req.setAttribute("error", "Unknown user role.");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            req.setAttribute("error", "Database error occurred. Please try again.");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Unexpected error occurred. Please try again.");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}



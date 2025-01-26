package lk.ijse.assignment_1_aad.Servlet.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.assignment_1_aad.bo.BOFactory;
import lk.ijse.assignment_1_aad.bo.custom.UserBO;
import lk.ijse.assignment_1_aad.dto.UserDTO;
import lk.ijse.assignment_1_aad.entity.User;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet(name = "UserSaveServlet", value = "/registerServlet")
public class User_Register extends HttpServlet {

    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.USER);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve parameters from the request

        try {
            String name = req.getParameter("username");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String confirmPassword = req.getParameter("confirmPassword");
            String role = "Admin"; // Default role for a new user

            // Check if the email already exists
            User existingUser = userBO.searchByEmail(email);
            if (existingUser != null) {
                req.setAttribute("error", "Email already exists. Please use a different email.");
                req.getRequestDispatcher("userRegister.jsp").forward(req, resp);
                return;
            }

            // Check if passwords match
            if (!password.equals(confirmPassword)) {
                req.setAttribute("error", "Passwords do not match. Please try again.");
                req.getRequestDispatcher("userRegister.jsp").forward(req, resp);
                return;
            }

            // Hash the password for secure storage
            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

            // Create a UserDTO object to save the user
            UserDTO userDTO = new UserDTO(0, name, hashedPassword, email, role);

            // Save the user using the business object
            boolean isSaved = userBO.save(userDTO);
            if (isSaved) {
                req.setAttribute("success", "Registration successful. Please log in.");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            } else {
                req.setAttribute("error", "Failed to register the user. Try again later.");
                req.getRequestDispatcher("userRegister.jsp").forward(req, resp);
            }

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "An unexpected error occurred. Please try again later.");
            req.getRequestDispatcher("userRegister.jsp").forward(req, resp);
        }
    }
}




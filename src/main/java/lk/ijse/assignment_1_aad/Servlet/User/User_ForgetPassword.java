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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UserForgetPassword" , value = "/forgetPasswordServlet")
public class User_ForgetPassword extends HttpServlet {
   UserBO userBO = (UserBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("newPassword");
        String confirmPassword = req.getParameter("confirmPassword");

        System.out.println(email);
        System.out.println(password);
        System.out.println(confirmPassword);

        try {
            User user = userBO.searchByEmail(email);

            if (user == null) {
                req.setAttribute("error", "Email does not exist.");
                req.getRequestDispatcher("userUpdate.jsp").forward(req, resp);
                return;
            }

            if (!password.equals(confirmPassword)) {
                req.setAttribute("error", "Passwords not match.");
                req.getRequestDispatcher("userUpdate.jsp").forward(req, resp);
                return;
            }

            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            UserDTO userDTO = new UserDTO(user.getUserId(), user.getUsername(), hashedPassword, user.getEmail(), user.getRole());
            userBO.update(userDTO);
            req.setAttribute("message", "Password updated successfully.");
            req.getRequestDispatcher("userUpdate.jsp").forward(req, resp);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

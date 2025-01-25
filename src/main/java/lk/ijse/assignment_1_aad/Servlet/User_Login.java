package lk.ijse.assignment_1_aad.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.assignment_1_aad.dto.LoginDTO;
import lk.ijse.assignment_1_aad.entity.User;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UserLoginServlet" ,value = "/loginServlet")
public class User_Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userEmail = req.getParameter("username");
        String password = req.getParameter("password");
        LoginDTO login = new LoginDTO(1,userEmail);


        String role = "";

        try {
            User user = userBO.searchByEmail(userEmail);

            if (user == null){
                req.setAttribute("error","Invalid username!");
                req.getRequestDispatcher("index.jsp").forward(req,resp);
                return;
            }
            if (!BCrypt.checkpw(password,user.getPassword())){
                req.setAttribute("error","Invalid Password!");
                req.getRequestDispatcher("index.jsp").forward(req,resp);
                return;
            }
            switch (role){
                case "Admin":
                    resp.sendRedirect("adminDashboard.jsp");
                    loginBO.save(login);
                    break;
                case "Customer":
                    resp.sendRedirect("customerdashboard.jsp");
                    loginBO.save(login);
                    break;
                default:
                    req.setAttribute("error", "Invalid user role :" + role);
            }

        }catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
            req.setAttribute("error","Please try Again");
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}

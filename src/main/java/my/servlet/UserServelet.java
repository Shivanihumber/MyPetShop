package my.servlet;

import my.model.User;

import my.dao.UserDAO;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/users")
public class UserServelet extends HttpServlet {

    @EJB
    private UserDAO u;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "";
        String validationMessage;
        String userName = req.getParameter("userName");
        String userPassword = req.getParameter("userPassword");
        String userEmail = req.getParameter("userEmail");



        if (userName.isEmpty()) {
            validationMessage = "Please specify User Name,Password,Email!";
            req.setAttribute("validationMessage", validationMessage);
            url += "/index.jsp";
            getServletContext().getRequestDispatcher(url).forward(req, resp);
        }
        else {
            User newUser = new User(userName,userPassword ,userEmail);
            //UserDAO u = new UserDAO();
              u.addUser(newUser);
          //  getServletContext().getRequestDispatcher("/loginRegister").forward(req, resp);
           resp.sendRedirect("login.jsp");
            // out.print("You are successfully registered...");



         // url += "/userList.jsp";
          // req.setAttribute("userList", u.getRegisteredUsers());
         // getServletContext().getRequestDispatcher(url).forward(req, resp);
        }
    }

    }




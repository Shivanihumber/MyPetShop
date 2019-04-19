package my.servlet;

import my.model.User;
import my.dao.UserDAO;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginRegister")
public class LoginServelet extends HttpServlet {
    @EJB
    private UserDAO userDAO;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "";

            User user = new User();

            user.setUserEmail(req.getParameter("userEmail"));
            user.setUserPassword(req.getParameter("userPassword"));


         if (userDAO.login(user)) {

             HttpSession session = req.getSession(true);
             session.setAttribute("currentSessionUser", user);
             if (user.getUserEmail().equals("Admin@admin.com")) {
                 resp.sendRedirect("adminLogged.jsp"); //logged-in page
                // getServletContext().getRequestDispatcher(url).forward(req, resp);
             } else {
                 resp.sendRedirect("userList"); //error page
             }
         }
    }
}
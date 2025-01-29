package SprintTask2_4;

import SprintTask2_4.db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/additem")
public class AddTask extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       req.getRequestDispatcher("index2.jsp").forward(req, resp);
   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String name = req.getParameter("name");
       String description = req.getParameter("description");
       String deadlineDate = req.getParameter("deadlineDate");

       Tasks task = new Tasks();
       task.setName(name);
       task.setDescription(description);
       task.setDeadlineDate(deadlineDate);

       DBManager.addTask(task);
       resp.sendRedirect("/task1");
   }
}

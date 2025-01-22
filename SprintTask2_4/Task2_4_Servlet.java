package SprintTask2_4;

import SprintTask2_4.db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet(value = "/task1")
public class Task2_4_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Tasks> taskList = DBManager.getAllTasks();
        for (int i = 0; i < taskList.size(); i++) {
            System.out.println(taskList.get(i).getName());
        }

        req.setAttribute("tasks", taskList);
        req.getRequestDispatcher("index2.jsp").forward(req, resp);
    }
}
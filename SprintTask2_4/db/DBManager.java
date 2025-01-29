package SprintTask2_4.db;

import SprintTask2_4.Tasks;
import java.util.ArrayList;
import java.util.List;

public class DBManager {
   private static List<Tasks> taskList = new ArrayList<Tasks>();
   static {
       taskList.add(new Tasks(1L, "Создать Веб приложение на JAVA EE", "Нужно будет создать собственное приложение на Java EE для себя. Для начала я установлю себе на комп Composer. Затем тупо загружу Java EE и запущу.",
               "2021-10-23", true));
       taskList.add(new Tasks(2L, "Убраться дома и закупить продукты", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
               "2021-10-25", true));
       taskList.add(new Tasks(3L, "Выполнить все домашние задания", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
               "2021-10-28", false));
       taskList.add(new Tasks(4L, "Записаться на качку", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
               "2021-12-12", false));
       taskList.add(new Tasks(5L, "Учить Итальянский", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
               "2021-05-01", false));
   }

   private static Long id = 6L;
   public static void addTask(Tasks task) {
       task.setId(id);
       taskList.add(task);
       id++;
   }

   public static Tasks getTask(Long id) {
       Tasks foundTask = null;
       for (Tasks task: taskList) {
           if (task.getId() == id) {
               foundTask = task;
           }
       }
       return foundTask;
   }

   public static List<Tasks> getAllTasks() {
       return taskList;
   }

   public static void deleteTask(Long id) {
       for (int i = 0; i < taskList.size(); i++) {
           if (taskList.get(i).getId() == id) {
               taskList.remove(i);
           }
       }

//        Tasks foundTask = null;
//        for (Tasks task: taskList) {
//            if (task.getId() == id) {
//                foundTask = task;
//            }
//        }
//        if (foundTask != null) {
//            taskList.remove(foundTask);
//        }
   }

   public static void saveTask(Tasks task) {
       for (int i = 0; i < taskList.size(); i++) {
           if (taskList.get(i).getId() == task.getId()) {
               taskList.set(i, task);
           }
       }
   }
}

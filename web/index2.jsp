<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="SprintTask2_4.Tasks" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
<%--    <style>--%>
<%--        a {--%>
<%--            text-decoration: none;--%>
<%--            color: white;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <div class="container">--%>
<%--        <nav class="navbar navbar-expand-lg" data-bs-theme="dark" style="background-color: #07005d;">--%>
<%--            <div class="container-fluid">--%>
<%--                <a class="navbar-brand" href="/task1">TASK MANAGER</a>--%>
<%--                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--                    <span class="navbar-toggler-icon"></span>--%>
<%--                </button>--%>
<%--                <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--                        <a class="nav-link active" aria-current="page" href="/task1">Все задания</a>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </nav>--%>

<%--        <br>--%>
<%--        <button type="button" class="btn btn-primary" style="background-color: #07005d;" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">Добавить задание</button>--%>
<%--        <br>--%>
<%--        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--            <div class="modal-dialog">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <h1 class="modal-title fs-5" id="exampleModalLabel">Новое задание</h1>--%>
<%--                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>
<%--                        <form action="/additem" method="post">--%>
<%--                            <div class="mb-3">--%>
<%--                                <label for="recipient-name" class="col-form-label">Наименование:</label>--%>
<%--                                <input type="text" class="form-control" id="recipient-name" name="name">--%>
<%--                            </div>--%>
<%--                            <div class="mb-3">--%>
<%--                                <label for="message-text" class="col-form-label">Описание:</label>--%>
<%--                                <textarea class="form-control" id="message-text" name="description"></textarea>--%>
<%--                            </div>--%>
<%--                            <div class="mb-3">--%>
<%--                                <label for="date" class="col-form-label">Крайний срок:</label>--%>
<%--                                <input type="date" class="form-control" id="date" name="deadlineDate">--%>
<%--                            </div>--%>
<%--                            <div class="modal-footer">--%>
<%--                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>--%>
<%--                                <button class="btn btn-primary" type="submit">Добавить</button>--%>
<%--                            </div>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <br>--%>

<%--        <% List<Tasks> taskList = (List<Tasks>) request.getAttribute("tasks"); %>--%>
<%--        <table class="table">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th scope="col">Id</th>--%>
<%--                <th scope="col">Наименование</th>--%>
<%--                <th scope="col">Крайний срок</th>--%>
<%--                <th scope="col">Выполнено</th>--%>
<%--                <th scope="col">Детали</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <% if (taskList!=null) {--%>
<%--                    for (Tasks task: taskList) {--%>
<%--            %>--%>
<%--            <tr>--%>
<%--                <th scope="row"><%=task.getId()%></th>--%>
<%--                <td><%=task.getName()%></td>--%>
<%--                <td><%=task.getDeadlineDate()%></td>--%>
<%--                <% if (task.isCompleted()) { %>--%>
<%--                <td>Да</td>--%>
<%--                <% } else { %>--%>
<%--                <td>Нет</td>--%>
<%--                <% } %>--%>
<%--                <td><button type="button" class="btn btn-primary" style="background-color: #07005d;">--%>
<%--                    <a href="/details?id=<%=task.getId()%>">Детали</a> </button></td>--%>
<%--            </tr>--%>
<%--            <%      }--%>
<%--                }--%>
<%--            %>--%>
<%--            </tbody>--%>
<%--        </table>--%>
<%--    </div>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>
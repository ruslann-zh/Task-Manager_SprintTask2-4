<%@ page import="SprintTask2_4.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg" data-bs-theme="dark" style="background-color: #07005d;">
            <div class="container-fluid">
                <a class="navbar-brand" href="/task1">TASK MANAGER</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <a class="nav-link active" aria-current="page" href="/task1">Все задания</a>
                    </ul>
                </div>
            </div>
        </nav>

        <%
            Tasks tasks = (Tasks) request.getAttribute("zadanie");
            if (tasks!=null) {
        %>
        <form method="post" action="/save">
            <label class="col-form-label">Наименование:</label>
            <input type="hidden" value="<%=tasks.getId()%>" name="idshka">
            <input type="text" class="form-control" name="name" value="<%=tasks.getName()%>">

            <label class="col-form-label">Описание:</label>
            <textarea class="form-control" name="description"><%=tasks.getDescription()%></textarea>

            <label class="col-form-label">Крайний срок:</label>
            <input type="date" class="form-control" name="deadlineDate" value="<%=tasks.getDeadlineDate()%>">

            <label for="options">Выполнено:</label>
            <select class="form-select" name="completed" id="options">
                <option value="<%=true%>">Да</option>
                <option value="<%=false%>" selected>Нет</option>
            </select>
            <br>
            <button class="btn btn-success" type="submit">Сохранить</button>
        </form>

        <form method="post" action="/delete">
            <input type="hidden" value="<%=tasks.getId()%>" name="idshka">
            <button class="btn btn-danger" type="submit">Удалить</button>
        </form>
        <%
            }
        %>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
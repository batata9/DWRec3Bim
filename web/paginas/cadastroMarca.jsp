<%@page import="DAOs.DAOMarca"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/marca">
            <div>
                <div class="form-group">
                    <label>ID</label>
                    <% DAOMarca daoMarca = new DAOMarca();%>
                    <input class="form-control" name="idMarca" value="<%=daoMarca.autoIdMarca()%>" readonly="">
                </div>
                <div class="form-group">
                    <label>Marca</label>
                    <input class="form-control" name="nomeMarca">
                </div>
                <button type="submit" class="btn btn-default">Cadastrar</button>
                <button type="reset" class="btn btn-default">Apagar campos</button>
            </div>
        </form>
    </body>
</html>

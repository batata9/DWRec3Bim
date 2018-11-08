<%@page import="DAOs.DAOCor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/cor">
            <div>
                <div class="form-group">
                    <label>ID</label>
                    <% DAOCor daoCor = new DAOCor();%>
                    <input class="form-control" name="idCor" value="<%=daoCor.autoIdCor()%>" readonly="">
                </div>
                <div class="form-group">
                    <label>Cor</label>
                    <input class="form-control" name="nomeCor">
                </div>
                <button type="submit" class="btn btn-default">Cadastrar</button>
                <button type="reset" class="btn btn-default">Apagar campos</button>
            </div>
        </form>
    </body>
</html>

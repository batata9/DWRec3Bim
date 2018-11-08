<%@page import="DAOs.DAOVeiculo"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <jsp:useBean id="daoMarca" class="DAOs.DAOMarca"/>
    <jsp:useBean id="daoCor" class="DAOs.DAOCor"/>
    <jsp:useBean id="daoModelo" class="DAOs.DAOModelo"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/veiculo">
            <div>
                <div class="form-group">
                    <label>ID</label>
                    <% DAOVeiculo daoVeiculo = new DAOVeiculo();%>
                    <input class="form-control" name="idVeiculo" value="<%=daoVeiculo.autoIdVeiculo()%>" readonly="">
                </div>
                <div class="form-group">
                    <label>Preco por dia</label>
                    <input class="form-control" name="precoPorDiaVeiculo">
                </div>
                <div class="form-group">
                    <label>Placa</label>
                    <input class="form-control" name="placaVeiculo">
                </div>
                <div class="form-group">
                    <label>Selecione a Marca</label>
                    <select class="form-control" name="marcaIdMarca">
                        <c:forEach var="marca" items="${daoMarca.listInOrderId()}">                                                                                                   
                            <option value="${marca.getIdMarca()}">${marca.getNome()}</option>                                              
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label>Selecione o Modelo</label>
                    <select class="form-control" name="modeloIdModelo">
                        <c:forEach var="modelo" items="${daoModelo.listInOrderId()}">                                                                                                   
                            <option value="${modelo.getIdModelo()}">${modelo.getNomeModelo()}</option>                                              
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label>Selecione a cor</label>
                    <select class="form-control" name="corIdCor">
                        <c:forEach var="cor" items="${daoCor.listInOrderId()}">                                                                                                   
                            <option value="${cor.getIdCor()}">${cor.getNome()}</option>                                              
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-default">Cadastrar</button>
                <button type="reset" class="btn btn-default">Apagar campos</button>
            </div>
        </form>
    </body>
</html>

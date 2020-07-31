<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="classes.User" %>
<%@page import="classes.Mail" %>
<%  Connection db = null;
    try {
        // Carregando o JDBC Driver padrão
        String driverName = "com.mysql.cj.jdbc.Driver";
        Class.forName(driverName);
        // Configurando a nossa conexão com um banco de dados//
        String serverName = "localhost";    //caminho do servidor do BD
        String mydatabase = "vip";        //nome do seu banco de dados
        String port = "3306";        //nome do seu banco de dados
        String url = "jdbc:mysql://" + serverName + ":" + port + "/" + mydatabase + "?useTimezone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
        String username = "root";        //nome de um usuário de seu BD  
        String password = "root";      //sua senha de acesso
        db = DriverManager.getConnection(url, username, password);
        //Testa sua conexão//  
        if (db == null) {
            out.println("Não foi possivel realizar conexão");
        }
    } catch (ClassNotFoundException e) {
        //Driver não encontrado
        out.println("O driver expecificado nao foi encontrado.");
    } catch (SQLException e) {
        //Não conseguindo se conectar ao banco
        out.println("Nao foi possivel conectar ao Banco de Dados. Erro: " + e);
    }

    User user = new User(db);
%>

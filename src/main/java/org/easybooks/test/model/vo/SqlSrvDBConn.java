package org.easybooks.test.model.vo;

import java.sql.*;

public class SqlSrvDBConn {

    public void Getconnection(String username,String password){
        String RL="jdbc:sqlserver://localhost:1433;DatabaseName=yagnsen";

        String sqlStr="select * from users where usernames = \'"+username+"\' and password = \'"+password +"\'";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");	//驱动程序类
            Connection con=DriverManager.getConnection(RL,"sa","123456");	//创建于数据库的连接
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sqlStr);
            while(rs.next()){
                System.out.println("访问成功");


            }

            rs.close();
            con.close();

        }
        catch(Exception err) {

            err.printStackTrace(System.out);
        }
    }

    public static void main(String[] args){
        String username = "123456";
        String password = "123456";
        SqlSrvDBConn a = new SqlSrvDBConn();
        a.Getconnection(username,password);
    }
}

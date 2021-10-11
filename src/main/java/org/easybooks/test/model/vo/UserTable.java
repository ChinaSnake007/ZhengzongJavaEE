package org.easybooks.test.model.vo;

import java.sql.ResultSet;

public class UserTable {
    public String username;
    public String password;
    public int id = 12;

    public int getId() {
        return id;
    }

    public String getUsername(){
        return username;
    }
    public String getPassword() {
        return password;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username){
        this.username = username;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public int CheckAccount(String username,String password){
        SqlSrvDBConn a = new SqlSrvDBConn();
        ResultSet rs = a.GetResult(username,password);
        if(rs!=null)
            return 1;
        else
            return 0;
    }
    public static void main(String[] args){

    }
}

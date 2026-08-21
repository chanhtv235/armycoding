package com.bank.bank_transaction.repository;

import com.bank.bank_transaction.model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountRepository implements IAccountRepository {
//    private final String FIND_ACCOUNT="select * from account where username =? and password =?;";
//    @Override
//    public Account findByUsernameAndPassword(String username, String password) {
//        Connection connection = BaseRepository.getConnectDB();
//        Account account = null;
//        try {
//            PreparedStatement pre = connection.prepareStatement(FIND_ACCOUNT);
//            pre.setString(1,username);
//            pre.setString(2,password);
//            ResultSet resultSet = pre.executeQuery();
//            while (resultSet.next()){
//                String user = resultSet.getString("username");
//                String pass = resultSet.getString("password");
//                String role = resultSet.getString("role");
//                account = new Account(user,pass,role);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }finally {
//            try {
//                connection.close();
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//        }
//        return account;
//    }

    private static List<Account> accountList= new ArrayList<>();
    static {
        accountList.add(new Account("module1","112233",1));
        accountList.add(new Account("module2","aabbcc",2));
        accountList.add(new Account("module3","332211",3));
        accountList.add(new Account("module4","xxyyzz",4));
        accountList.add(new Account("module5","123456",5));
    }

    @Override
    public Account findByUsernameAndPassword(String username, String password) {
        for (Account account : accountList) {

            if (account.getUsername().equals(username)
                    && account.getPassword().equals(password)) {

                return account;
            }
        }
        return null;
    }
}

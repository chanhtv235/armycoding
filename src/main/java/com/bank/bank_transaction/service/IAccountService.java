package com.bank.bank_transaction.service;

import com.bank.bank_transaction.model.Account;

public interface IAccountService {
    Account findByUsernameAndPassword(String username, String password);
}

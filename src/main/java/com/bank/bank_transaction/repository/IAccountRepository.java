package com.bank.bank_transaction.repository;

import com.bank.bank_transaction.model.Account;

public interface IAccountRepository {
    Account findByUsernameAndPassword(String username, String password);
}

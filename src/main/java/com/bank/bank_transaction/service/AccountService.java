package com.bank.bank_transaction.service;

import com.bank.bank_transaction.model.Account;
import com.bank.bank_transaction.repository.AccountRepository;
import com.bank.bank_transaction.repository.IAccountRepository;

public class AccountService implements IAccountService {
    private IAccountRepository accountBankRepository = new AccountRepository();
    @Override
    public Account findByUsernameAndPassword(String username, String password) {
        return accountBankRepository.findByUsernameAndPassword(username,password);
    }
}

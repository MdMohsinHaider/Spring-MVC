package com.mohsin.gw.validator;

import com.mohsin.gw.form.OpenAccountForm;

import java.util.ArrayList;
import java.util.List;

public class OpenAccountFormValidator implements Validator<OpenAccountForm> {
    @Override
    public List<String> validate(OpenAccountForm openAccountForm) {
        final List<String> errors = new ArrayList<>();

        if (openAccountForm.getFirstName() == null
                || openAccountForm.getFirstName().trim().length() == 0) {
            errors.add("Firstname is required");
        }
        if (openAccountForm.getLastName() == null
                || openAccountForm.getLastName().trim().length() == 0) {
            errors.add("Lastname is required");
        }
        if (openAccountForm.getEmail() == null
                || openAccountForm.getEmail().trim().length() == 0) {
            errors.add("Email is required");
        }
        if (openAccountForm.getGender() == null
                || openAccountForm.getGender().trim().length() == 0) {
            errors.add("Gender is required");
        }
        if (openAccountForm.getDob() == null
                || openAccountForm.getDob().trim().length() == 0) {
            errors.add("Dob is required");
        }
        if (openAccountForm.getMobileNo() == null
                || openAccountForm.getMobileNo().trim().length() == 0) {
            errors.add("Mobile No is required");
        } else if (openAccountForm.getMobileNo().length() != 10) {
            errors.add("Mobile No must be 10 digits");
        }
        if (openAccountForm.getOpeningBalance() == null ||
                openAccountForm.getOpeningBalance().trim().length() == 0) {
            errors.add("Opening Balance is required");
        } else {
            double accountBalance = Double.parseDouble(openAccountForm.getOpeningBalance());
            if (accountBalance <= 0) {
                errors.add("Opening Balance must be greater than 0");
            }
        }
        if (openAccountForm.getAccountType() == null
                || openAccountForm.getAccountType().trim().length() == 0) {
            errors.add("Account Type is required");
        }
        return errors;
    }
}


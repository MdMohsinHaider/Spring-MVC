package com.mohsin.gw.form;

import lombok.Data;

@Data
public class OpenAccountForm {
    private String firstName;
    private String lastName;
    private String gender;
    private String dob;
    private String mobileNo;
    private String email;
    private String openingBalance;
    private String accountType;
}

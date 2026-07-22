package com.mohsin.mtvw.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder(toBuilder = true)
public class Transaction {
    private String transactionId;
    private LocalDate transactionDate;
    private String transactionType;
    private String description;
    private double amount;
}

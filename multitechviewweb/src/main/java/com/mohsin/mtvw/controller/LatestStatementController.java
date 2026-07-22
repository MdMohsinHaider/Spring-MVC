package com.mohsin.mtvw.controller;

import com.mohsin.mtvw.domain.Transaction;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jspecify.annotations.Nullable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@org.springframework.stereotype.Controller("/latestStatement")
public class LatestStatementController implements Controller {
    @Override
    public @Nullable ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        final List<Transaction> transactions = new ArrayList<>();
        final String type = request.getParameter("type");

        transactions.add(Transaction.builder()
                .transactionId("TXN001")
                .transactionDate(LocalDate.now().minusDays(1))
                .transactionType("DEBIT")
                .description("Grocery Store Purchase")
                .amount(54.75)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN002")
                .transactionDate(LocalDate.now().minusDays(2))
                .transactionType("CREDIT")
                .description("Salary Deposit")
                .amount(3500.00)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN003")
                .transactionDate(LocalDate.now().minusDays(3))
                .transactionType("DEBIT")
                .description("Online Subscription")
                .amount(12.99)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN004")
                .transactionDate(LocalDate.now().minusDays(4))
                .transactionType("DEBIT")
                .description("Restaurant Dinner")
                .amount(78.40)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN005")
                .transactionDate(LocalDate.now().minusDays(5))
                .transactionType("CREDIT")
                .description("Refund from Vendor")
                .amount(25.00)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN006")
                .transactionDate(LocalDate.now().minusDays(6))
                .transactionType("DEBIT")
                .description("Fuel Station")
                .amount(42.10)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN007")
                .transactionDate(LocalDate.now().minusDays(7))
                .transactionType("DEBIT")
                .description("Electricity Bill Payment")
                .amount(120.55)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN008")
                .transactionDate(LocalDate.now().minusDays(8))
                .transactionType("CREDIT")
                .description("Cashback Reward")
                .amount(5.00)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN009")
                .transactionDate(LocalDate.now().minusDays(9))
                .transactionType("DEBIT")
                .description("Movie Tickets")
                .amount(30.00)
                .build());

        transactions.add(Transaction.builder()
                .transactionId("TXN010")
                .transactionDate(LocalDate.now().minusDays(10))
                .transactionType("DEBIT")
                .description("Pharmacy Purchase")
                .amount(18.25)
                .build());

        final ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("transactions", transactions);
        final String lvn = type.equals("pdf") ? "latestStatementPdf" : "latestStatementXls";
        modelAndView.setViewName(lvn);

        return modelAndView;
    }
}


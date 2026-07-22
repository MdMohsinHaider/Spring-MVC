package com.mohsin.mtvw.views;

import com.mohsin.mtvw.domain.Transaction;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.*;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

@Component("latestStatementXls")
public class LatestStatementXlsView extends AbstractXlsView {
    @Override
    protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Transaction> transactions = (List<Transaction>) model.get("transactions");
        Sheet sheet = workbook.createSheet("Transactions");

        Row header = sheet.createRow(0);
        CellStyle headerStyle = workbook.createCellStyle();
        headerStyle.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
        header.setRowStyle(headerStyle);

        Cell headerCell1 = header.createCell(0);
        headerCell1.setCellValue("Transaction ID");

        Cell headerCell2 = header.createCell(1);
        headerCell2.setCellValue("Transaction Date");

        Cell headerCell3 = header.createCell(2);
        headerCell3.setCellValue("Description");

        Cell headerCell4 = header.createCell(3);
        headerCell4.setCellValue("Transaction Type");

        Cell headerCell5 = header.createCell(4);
        headerCell5.setCellValue("Amount");

        IntStream.range(0, transactions.size()).forEach(i -> {
            Row row = sheet.createRow(i+1);
            Transaction transaction = transactions.get(i);
            row.createCell(0).setCellValue(transaction.getTransactionId());
            row.createCell(1).setCellValue(transaction.getTransactionDate());
            row.createCell(2).setCellValue(transaction.getDescription());
            row.createCell(3).setCellValue(transaction.getTransactionType());
            row.createCell(4).setCellValue(transaction.getAmount());
        });
    }
}


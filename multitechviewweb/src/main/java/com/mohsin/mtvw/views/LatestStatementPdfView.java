package com.mohsin.mtvw.views;

import com.lowagie.text.Font;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.mohsin.mtvw.domain.Transaction;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import java.util.List;
import java.util.Map;

@Component("latestStatementPdf")
public class LatestStatementPdfView extends AbstractPdfView {
    @Override
    protected void buildPdfDocument(Map<String, Object> model, com.lowagie.text.Document document, com.lowagie.text.pdf.PdfWriter writer, HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Transaction> transactions = (List<Transaction>) model.get("transactions");
        Paragraph paragraph = new Paragraph("This statement provides a summary of your recent account activity, including deposits, withdrawals, purchases, and service charges. All transactions listed reflect activity posted to your account between June 1, 2026 and June 30, 2026.", new Font(Font.TIMES_ROMAN, 12, Font.NORMAL));
        paragraph.setAlignment(Paragraph.ALIGN_CENTER);
        paragraph.setSpacingBefore(10);
        paragraph.setSpacingAfter(10);


        Table table = new Table(5);
        table.addCell("Transaction ID");
        table.addCell("Transaction Date");
        table.addCell("Description");
        table.addCell("Transaction Type");
        table.addCell("Amount");

        transactions.forEach(transaction -> {
            table.addCell(transaction.getTransactionId());
            table.addCell(transaction.getTransactionDate().toString());
            table.addCell(transaction.getDescription());
            table.addCell(transaction.getTransactionType());
            table.addCell(String.valueOf(transaction.getAmount()));
        });
        document.addTitle("Latest Statement");
        document.add(paragraph);
        document.add(table);
    }
}


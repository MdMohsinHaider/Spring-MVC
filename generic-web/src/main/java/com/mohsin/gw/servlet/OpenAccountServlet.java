package com.mohsin.gw.servlet;

import com.mohsin.gw.exception.ValidationFailureException;
import com.mohsin.gw.form.OpenAccountForm;
import com.mohsin.gw.helper.FormHandler;
import com.mohsin.gw.validator.OpenAccountFormValidator;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = {"/open-account"})
public class OpenAccountServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final FormHandler<OpenAccountForm> openAccountFormFormHandler = new FormHandler<>();
        try {
            final OpenAccountForm openAccountForm = openAccountFormFormHandler.handleForm(req, OpenAccountForm.class, new OpenAccountFormValidator());

            System.out.println("processing request by invoking service...");

        } catch (ValidationFailureException e) {
            req.getRequestDispatcher("/open-account.jsp").forward(req, resp);
            return;
        } catch (InstantiationException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }

        req.getRequestDispatcher("/open-account-success.jsp").forward(req, resp);
    }
}


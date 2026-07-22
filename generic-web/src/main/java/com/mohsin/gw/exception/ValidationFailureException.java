package com.mohsin.gw.exception;

import jakarta.servlet.ServletContextListener;

public class ValidationFailureException extends RuntimeException implements ServletContextListener {
    public ValidationFailureException() {
    }
}

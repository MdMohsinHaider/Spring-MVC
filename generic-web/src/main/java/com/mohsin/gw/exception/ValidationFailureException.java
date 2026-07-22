package com.mohsin.gw.exception;

public class ValidationFailureException extends RuntimeException {
  public ValidationFailureException(String message) {
    super(message);
  }
}

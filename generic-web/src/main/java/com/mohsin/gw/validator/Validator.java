package com.mohsin.gw.validator;

import java.util.List;

public interface Validator<T> {
    List<String> validate(T t);
}


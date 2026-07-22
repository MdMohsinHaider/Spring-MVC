package com.mohsin.gw.helper;

import com.mohsin.gw.exception.ValidationFailureException;
import com.mohsin.gw.validator.Validator;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.util.List;

public class FormHandler<T> {
    public T handleForm(HttpServletRequest request,
                        Class<T> formClazz,
                        Validator<T> validator) throws ServletException, IOException, InstantiationException, IllegalAccessException {
        final GenericWrapper<T> genericWrapper = new GenericWrapper<>();
        final T form = genericWrapper.wrap(request, formClazz);

        final List<String> errors = validator.validate(form);
        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors);
            request.setAttribute("form", form);
            throw new ValidationFailureException();
        }
        return form;
    }
}

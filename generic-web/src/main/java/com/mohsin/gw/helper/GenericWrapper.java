package com.mohsin.gw.helper;

import jakarta.servlet.http.HttpServletRequest;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

public class GenericWrapper<T> {
    public T wrap(HttpServletRequest req, Class<T> formClazz) throws InstantiationException, IllegalAccessException {
        final T obj = formClazz.newInstance();
        final Map<String, String[]> reqParameterMap = req.getParameterMap();

        reqParameterMap.forEach((key, value) -> {
            final String attributeName = key;
            final String attributeValue = value[0];

            final String setterMethodName = "set" + attributeName.substring(0, 1).toUpperCase() + attributeName.substring(1);

            try {
                final Method setterMethod = formClazz.getDeclaredMethod(setterMethodName, String.class);
                setterMethod.invoke(obj, attributeValue);
            } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        });


        return obj;
    }
}


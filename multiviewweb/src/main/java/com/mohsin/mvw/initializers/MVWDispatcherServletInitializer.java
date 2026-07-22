package com.mvw.initializers;

import com.mvw.config.MVWRootConfig;
import com.mvw.config.MVWWebConfig;
import org.jspecify.annotations.Nullable;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MVWDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?> @Nullable [] getRootConfigClasses() {
        return new Class[]{MVWRootConfig.class};
    }

    @Override
    protected Class<?> @Nullable [] getServletConfigClasses() {
        return new Class[]{MVWWebConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}

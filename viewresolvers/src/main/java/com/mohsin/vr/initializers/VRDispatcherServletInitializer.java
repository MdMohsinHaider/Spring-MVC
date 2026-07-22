package com.vr.initializers;

import com.vr.config.VRRootConfig;
import com.vr.config.VRWebConfig;
import org.jspecify.annotations.Nullable;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class VRDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?> @Nullable [] getRootConfigClasses() {
        return new Class[]{VRRootConfig.class};
    }

    @Override
    protected Class<?> @Nullable [] getServletConfigClasses() {
        return new Class[]{VRWebConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}

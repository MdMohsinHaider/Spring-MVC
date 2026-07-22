package com.mcw.initializers;

import com.mcw.config.MCWRootConfig;
import com.mcw.config.MCWWebConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class MCWWebApplicationInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        // parent ioc container
        final AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
        rootContext.register(MCWRootConfig.class);

        final ContextLoaderListener contextLoaderListener = new ContextLoaderListener(rootContext);
        servletContext.addListener(contextLoaderListener);

        // child ioc container
        final AnnotationConfigWebApplicationContext webContext = new AnnotationConfigWebApplicationContext();
        webContext.register(MCWWebConfig.class);

        final DispatcherServlet dispatcherServlet = new DispatcherServlet(webContext);
        final ServletRegistration.Dynamic dyn = servletContext.addServlet("dispatcher", dispatcherServlet);
        dyn.setLoadOnStartup(1);
        dyn.addMapping("/");
    }
}

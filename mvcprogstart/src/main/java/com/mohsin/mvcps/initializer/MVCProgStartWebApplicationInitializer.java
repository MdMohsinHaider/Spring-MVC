package com.mohsin.mvcps.initializer;

import com.mohsin.mvcps.config.MVCProgStartWebConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class MVCProgStartWebApplicationInitializer implements WebApplicationInitializer {
    public void onStartup(ServletContext servletContext) throws ServletException {
        // #1. create ioc container
        final AnnotationConfigWebApplicationContext webApplicationContext = new AnnotationConfigWebApplicationContext();
        webApplicationContext.register(MVCProgStartWebConfig.class);

        // #2. register DispatcherServlet with underlying ServletContainer thru ServletContext
        final DispatcherServlet dispatcherServlet = new DispatcherServlet(webApplicationContext);
        ServletRegistration.Dynamic dispatcherRegistration = servletContext.addServlet("dispatcher", dispatcherServlet);
        dispatcherRegistration.setLoadOnStartup(1);
        dispatcherRegistration.addMapping("/");
    }
}

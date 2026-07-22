package com.mcw.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.mvc.ParameterizableViewController;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Properties;

@Configuration
public class MCWWebConfig {

    @Bean
    public HandlerMapping handlerMapping() {
        final SimpleUrlHandlerMapping handlerMapping = new SimpleUrlHandlerMapping();
        final Properties mappings = new Properties();
        mappings.put("/about-us", "aboutUsController");

        handlerMapping.setMappings(mappings);
        return handlerMapping;
    }

    @Bean
    public Controller aboutUsController() {
        final ParameterizableViewController aboutUsViewController = new ParameterizableViewController();
        aboutUsViewController.setViewName("about-us");
        return aboutUsViewController;
    }

    @Bean
    public ViewResolver jspViewResolver() {
        return new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
    }
}

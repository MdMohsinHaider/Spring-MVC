package com.mvw.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.mvc.UrlFilenameViewController;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Properties;

@Configuration
public class MVWWebConfig {

    @Bean
    public HandlerMapping handlerMapping() {
        final Properties mappings = new Properties();
        mappings.put("/our-mission", "urlViewController");
        mappings.put("/contact-us", "urlViewController");

        final SimpleUrlHandlerMapping handlerMapping = new SimpleUrlHandlerMapping();
        handlerMapping.setMappings(mappings);

        return handlerMapping;
    }

    @Bean
    public Controller urlViewController() {
        return new UrlFilenameViewController();
    }

    @Bean
    public ViewResolver jspViewResolver() {
        return new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
    }
}

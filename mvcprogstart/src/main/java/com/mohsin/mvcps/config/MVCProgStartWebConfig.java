package com.mvcps.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Properties;

@Configuration
@ComponentScan(basePackages = {"com.mvcps.controller"})
public class MVCProgStartWebConfig {

    @Bean
    public HandlerMapping handlerMapping() {
        final SimpleUrlHandlerMapping handlerMapping = new SimpleUrlHandlerMapping();
        Properties mappings = new Properties();
        mappings.setProperty("/home", "homeController");
        handlerMapping.setMappings(mappings);
        return handlerMapping;
    }

    @Bean
    public ViewResolver internalResourceViewResolver() {
        final InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/jsp/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
}

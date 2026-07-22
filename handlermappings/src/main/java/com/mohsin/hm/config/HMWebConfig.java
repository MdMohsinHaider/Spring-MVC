package com.mohsin.hm.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.mvc.ParameterizableViewController;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Properties;

@Configuration
public class HMWebConfig {

    @Bean
    @Order(1)
    public HandlerMapping simpleUrlHandlerMapping() {
        final Properties mappings = new Properties();
        mappings.put("/our-clients", "ourClientsController");

        final SimpleUrlHandlerMapping handlerMapping = new SimpleUrlHandlerMapping();
        handlerMapping.setMappings(mappings);
        return handlerMapping;
    }

    @Bean
    @Order(2)
    public HandlerMapping beanNameUrlHandlerMapping() {
        return new BeanNameUrlHandlerMapping();
    }


    @Bean
    public Controller ourClientsController() {
        final ParameterizableViewController ourClients = new ParameterizableViewController();
        ourClients.setViewName("our-clients");
        return ourClients;
    }

    @Bean(name = "/open-careers")
    public Controller careersController() {
        final ParameterizableViewController careers = new ParameterizableViewController();
        careers.setViewName("careers");
        return careers;
    }

    @Bean
    public ViewResolver jspViewResolver() {
        return new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
    }

}


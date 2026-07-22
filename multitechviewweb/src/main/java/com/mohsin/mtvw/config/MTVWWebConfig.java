package com.mohsin.mtvw.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.mvc.ParameterizableViewController;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = {"com.mohsin.mtvw.controller","com.mohsin.mtvw.views"})
public class MTVWWebConfig {

    @Bean
    public HandlerMapping handlerMapping(){
        return new BeanNameUrlHandlerMapping();
    }

    @Bean(name = "/myaccount")
    public Controller myAccountController(){
        final ParameterizableViewController myAccountController = new ParameterizableViewController();
        myAccountController.setViewName("myaccount");
        return myAccountController;
    }

    @Bean
    public ViewResolver beanNameViewResolver(){
        return new BeanNameViewResolver();
    }

    @Bean
    public ViewResolver jspViewResolver() {
        return new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
    }
}

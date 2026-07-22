package com.vr.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.mvc.UrlFilenameViewController;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
public class VRWebConfig {

    @Bean(name = {"/my-dashboard", "/locate-us"})
    public Controller dashboardController() {
        return new UrlFilenameViewController();
    }

    /**
     * Takes the logical viewName and matches with a bean definition id for resolving a View
     * @return
     */
    @Bean
    public ViewResolver viewResolver() {
        return new BeanNameViewResolver();
    }

    @Bean
    public ViewResolver internalResourceViewResolver() {
        return new InternalResourceViewResolver("/WEB-INF/views/", ".jsp");
    }

    @Bean(name = "my-dashboard")
    public View dashboardView() {
        return new JstlView("/WEB-INF/views/dashboard.jsp");
    }

    /*@Bean(name = "locate-us")
    public View localuseView() {
        return new JstlView("/WEB-INF/views/locate-us.jsp");
    }*/
}

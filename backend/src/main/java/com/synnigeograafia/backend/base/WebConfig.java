package com.synnigeograafia.backend.base;

import com.synnigeograafia.backend.util.UUIDConverter;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**").allowedOrigins("*");
//        registry.addMapping("/**").allowedMethods("*");
//        registry.addMapping("/**").allowedHeaders("*");
    }
}

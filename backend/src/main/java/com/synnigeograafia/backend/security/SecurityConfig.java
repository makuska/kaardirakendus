package com.synnigeograafia.backend.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    private final String MARKER_PATH = "/api/v1/marker";
    private final String PERSON_PATH = "/api/v1/person";
    private final String EMAIL_PATH = "/api/v1/email";


    @Bean
    SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
        http
//                .cors((cors) -> cors
//                        .configurationSource(request -> {
//                            CorsConfiguration config = new CorsConfiguration();
//                            //This code sets the allowed origins that are allowed to make cross-origin requests
//                            config.setAllowedOrigins(Collections.singletonList("http://localhost:4200"));
//                            //This code sets the allowed methods
//                            config.setAllowedMethods(Collections.singletonList("*"));
//                            //This code sets whether the browser should include credentials (such as cookies or authorization headers) in cross-origin requests.
//                            config.setAllowCredentials(true);
//                            config.setAllowedHeaders(Collections.singletonList("*"));
//                            //This code sets the maximum age (in seconds) for which the pre-flight response should be cached by the browser.
//                            //a pre-flight request is a CORS mechanism used by web browsers to check whether the actual request (the main request) is safe to send.
//                            config.setMaxAge(3600L);
//                            return config;
//                        })
//                );
                .cors().disable()
                .csrf().disable()
                .authorizeHttpRequests((authorize) -> authorize
                        .requestMatchers("/login").authenticated()
                        .requestMatchers(MARKER_PATH + "/**",  PERSON_PATH + "/**").permitAll()
                        .requestMatchers(HttpMethod.POST,EMAIL_PATH + "/sendEmail").permitAll()
                );
        http.formLogin();
        http.httpBasic();
        return http.build();
    }
}

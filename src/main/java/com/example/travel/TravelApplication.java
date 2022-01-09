package com.example.travel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

// test test
@EnableJpaAuditing
@SpringBootApplication
public class TravelApplication extends SpringBootServletInitializer {
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder){
        return builder.sources(TravelApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(TravelApplication.class, args);
    }

}

package com.hqz.wow;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.hqz.wow.mapper")
public class WowApplication {

    public static void main(String[] args) {
        SpringApplication.run(WowApplication.class, args);
    }

}

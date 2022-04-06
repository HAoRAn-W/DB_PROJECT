package com.hqz.wow.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.annotation.Resource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Resource
    UserDetailsService userDetailsService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        // 使用 BCryptPasswordEncoder
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web){
        web.ignoring()
                .antMatchers("/resources/**", "/static/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login", "/register","/home")
                .permitAll()
                .and()
                // Remember me configurations
                .rememberMe()
                .userDetailsService(this.userDetailsService)
                .tokenValiditySeconds(2000)
                .useSecureCookie(true)
                .rememberMeCookieName("wow-cookie")
                //Login configurations
                .and()
                .formLogin()
                .defaultSuccessUrl("/account/home")
                .loginPage("/login")
                .failureUrl("/login?error=true")
                .and()
                .logout()
                .deleteCookies("wow-cookie")
                .logoutSuccessUrl("/login");


        http.authorizeRequests().antMatchers("/admim/**").hasAuthority("ADMIN");
        //http.addFilterAfter(customHeaderAuthFilter(), UsernamePasswordAuthenticationFilter.class);


    }


}

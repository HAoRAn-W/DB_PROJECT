package com.hqz.wow.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.annotation.Resource;

/**
 * Customer pages security configurations
 */
@Configuration
@EnableWebSecurity
@Order(1)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Resource
    UserDetailsService userDetailsService;

    @Bean
    @Order(1)
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web){
        // configure Spring Security to ignore static resources
        web.ignoring()
                .antMatchers("/css/**", "/images/**", "/js/**", "/plugins/**");
    }
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("user").password("{noop}password").roles("USER");
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login","/login-admin", "/register-corp","/register-indiv", "/reset-password", "/confirm-info", "/reset-password-process").permitAll()
                .anyRequest().authenticated()
                .and()
                // Remember me configurations
                .rememberMe()
                .userDetailsService(this.userDetailsService)
                .tokenValiditySeconds(86400)
                .useSecureCookie(true)
                .rememberMeCookieName("wow-cookie")
                //Login configurations
                .and()
                .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/index", true)
                .failureUrl("/login?error=true")
                .permitAll()
                .and()
                .logout()
                .logoutSuccessUrl("/login")
                .invalidateHttpSession(true)
                .deleteCookies("wow-cookie");
    }
}

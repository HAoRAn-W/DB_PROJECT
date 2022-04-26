package com.hqz.wow.config;

import com.hqz.wow.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
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

@Configuration
@Order(2)
@EnableWebSecurity
public class AdminSecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    @Order(2)
    public static PasswordEncoder a_encoder() {
        return new BCryptPasswordEncoder();
    }


    @Resource
    UserDetailsService userDetailsService;

    public AdminSecurityConfig() {
        super();
    }

    @Override
    public void configure(WebSecurity web){
        // configure Spring Security to ignore static resources
        web.ignoring()
                .antMatchers("/css/**", "/images/**", "/js/**", "/plugins/**");
    }

//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//                .withUser("admin")
//                .password(a_encoder().encode("admin"))
//                .roles("ADMIN");
//    }
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("admin").password("{noop}password").roles("ADMIN");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login", "/login-admin").permitAll()
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
                .loginPage("/login-admin")
                .defaultSuccessUrl("/index", true)
                .failureUrl("/login-admin?error=true")
                .permitAll()
                .and()
                .logout()
                .logoutSuccessUrl("/login-admin")
                .invalidateHttpSession(true)
                .deleteCookies("wow-cookie");
    }

//    protected void configure(HttpSecurity http) throws Exception {
//        http.antMatcher("/admin*")
//                .authorizeRequests()
//                .anyRequest()
//                .hasRole("ADMIN")
//
//                .and()
//                .formLogin()
//                .loginPage("/loginAdmin")
//                .loginProcessingUrl("/admin_login")
//                .failureUrl("/loginAdmin?error=loginError")
//                .defaultSuccessUrl("/adminPage")
//
//                .and()
//                .logout()
//                .logoutUrl("/admin_logout")
//                .logoutSuccessUrl("/protectedLinks")
//                .deleteCookies("JSESSIONID")
//
//                .and()
//                .exceptionHandling()
//                .accessDeniedPage("/403")
//
//                .and()
//                .csrf().disable();
//    }
}

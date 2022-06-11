package com.example.osk.security;

import com.example.osk.service.ClientService;
import com.example.osk.service.InstructorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {



    private final ClientService clientService;

    private final InstructorService instructorService;
    public WebSecurityConfig(@Lazy ClientService clientService, @Lazy InstructorService instructorService) {
        this.clientService = clientService;
        this.instructorService = instructorService;
    }



    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationClientProvider() {
        DaoAuthenticationProvider auth = new DaoAuthenticationProvider();
        auth.setUserDetailsService(clientService);
        auth.setPasswordEncoder(passwordEncoder());
        return auth;
    }

    @Bean
    public DaoAuthenticationProvider authenticationInstructorProvider() {
        DaoAuthenticationProvider auth = new DaoAuthenticationProvider();
        auth.setUserDetailsService(instructorService);
        auth.setPasswordEncoder(passwordEncoder());
        return auth;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationClientProvider());
        auth.authenticationProvider(authenticationInstructorProvider());
        auth.inMemoryAuthentication()
                .withUser("user").password(passwordEncoder()
                        .encode("user")).roles("USER_TEST")
                .and()
                .withUser("admin").password(passwordEncoder()
                        .encode("admin")).roles("ADMIN_TEST");

    }

    @Bean
    public HttpFirewall getHttpFirewall() {
        return new DefaultHttpFirewall();
    }


    @Override
    protected void configure(final HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/bookPracticalLesson", "/editProfile")
                .hasAnyAuthority("ROLE_USER", "ROLE_USER_TEST", "ROLE_ADMIN", "ROLE_ADMIN_TEST")
                .antMatchers("/clients", "/instructors", "/vehicles")
                .hasAnyAuthority("ROLE_ADMIN", "ROLE_ADMIN_TEST")
                .and()
                .csrf().disable()
                .headers().frameOptions().disable()
                .and()
                .formLogin()
                .loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password")
                .loginProcessingUrl("/login")
                .failureUrl("/login?error=true")
                .defaultSuccessUrl("/")
                .and()
                .logout()
                .invalidateHttpSession(true)
                .clearAuthentication(true)
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/login?logout=true");
    }

}

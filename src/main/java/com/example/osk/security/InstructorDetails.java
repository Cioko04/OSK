package com.example.osk.security;

import com.example.osk.model.Instructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;


public class InstructorDetails implements UserDetails {
    private final Instructor instructor;

    public InstructorDetails(Instructor instructor) {
        this.instructor = instructor;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(instructor.getRole()));
        return authorities;

    }

    @Override
    public String getPassword() {
        return this.instructor.getPassword();
    }

    @Override
    public String getUsername() {
        return this.instructor.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
    public String getName(){
        return this.instructor.getName();
    }
}

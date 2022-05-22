package com.example.osk.service;

import com.example.osk.model.Client;
import com.example.osk.model.Role;
import com.example.osk.repository.ClientRepository;
import com.example.osk.web.dto.ClientRegistrationDto;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ClientServiceImpl implements ClientService {

    private final ClientRepository clientRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public ClientServiceImpl(ClientRepository clientRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.clientRepository = clientRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public Client getClientById(Long id) {
        return this.clientRepository.findById(id).orElse(null);
    }

    public List<Client> getAllClients() {
        return this.clientRepository.findAll();
    }

    public void editClient(Client client) {
        this.clientRepository.save(client);
    }

    public void deleteClient(Long id) {
        this.clientRepository.deleteById(id);
    }
    public Long getCountOfClients(){
        return clientRepository.count();
    }


    @Override
    public Client save(ClientRegistrationDto registrationDto) {
        Client client = new Client(registrationDto.getName(),
                registrationDto.getSurname(),
                registrationDto.getAge(),
                bCryptPasswordEncoder.encode(registrationDto.getPassword()),
                List.of(new Role("ROLE_USER")),
                List.of());
        return clientRepository.save(client);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Client client = clientRepository.findByName(username);
        if (client == null){
            throw new UsernameNotFoundException("Ivalid username or password.");
        }
        return new org.springframework.security.core.userdetails.User(
                client.getName(),
                client.getPassword(),
                mapRolesToAuthorities(client.getRoles()));
    }
    private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles){
        return  roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
    }
}

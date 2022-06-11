package com.example.osk.service;

import com.example.osk.security.ClientDetails;
import com.example.osk.dto.ClientRegistrationDto;
import com.example.osk.model.Client;
import com.example.osk.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Qualifier("client")
@Component
public class ClientServiceImpl implements ClientService {

    private final ClientRepository clientRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public ClientServiceImpl(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }

    @Autowired
    public void setbCryptPasswordEncoder(BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public Client getClientById(Long id) {
        return this.clientRepository.findById(id).orElse(null);
    }

    public Client getClientByEmail(String email) {
        return this.clientRepository.findByEmail(email);
    }

    public List<Client> getAllClients() {
        return this.clientRepository.findAll();
    }

    public Client editClient(Client client) {
        client.setPassword(bCryptPasswordEncoder.encode(client.getPassword()));
        return this.clientRepository.save(client);
    }

    public void deleteClient(Long id) {
        this.clientRepository.deleteById(id);
    }

    public Long getCountOfClients() {
        return clientRepository.count();
    }


    @Override
    public Client save(ClientRegistrationDto clientRegistrationDto) {
        Client client = new Client(clientRegistrationDto.getName(),
                clientRegistrationDto.getSurname(),
                clientRegistrationDto.getAge(),
                bCryptPasswordEncoder.encode(clientRegistrationDto.getPassword()),
                clientRegistrationDto.getEmail(),
                true,
                Set.of());
        return clientRepository.save(client);
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Client user = clientRepository.findByEmail(email);
        if (user == null) {
            throw new UsernameNotFoundException("Ivalid username or password.");
        }

        return new ClientDetails(user);
    }
}

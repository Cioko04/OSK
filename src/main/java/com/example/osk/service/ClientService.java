package com.example.osk.service;

import com.example.osk.model.Client;
import com.example.osk.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientService {

    private final ClientRepository clientRepository;

    @Autowired
    public ClientService(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }

    public void addClient(Client client) {
        this.clientRepository.save(client);
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

}

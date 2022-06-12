package com.example.osk.controller;

import com.example.osk.dto.ClientRegistrationDto;
import com.example.osk.model.Client;
import com.example.osk.service.ClientServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class ClientController {

    private final ClientServiceImpl clientService;

    public ClientController(ClientServiceImpl clientService) {
        this.clientService = clientService;
    }

    // getting all the clients for showing on page
    @GetMapping("/clients")
    public String getClientsList(Model model) {
        List<Client> allClients = this.clientService.getAllClients();
        model.addAttribute("client", allClients);
        return "clients/clientsList";
    }

    // only get view for add new client
    @GetMapping("/addClient")
    public String getAddClientView() {
        return "clients/addNewPerson";
    }

    // save client in DB then redirecting a view
    @PostMapping("/addClient")
    public RedirectView addClient(@ModelAttribute ClientRegistrationDto clientRegistrationDto) {
        clientService.save(clientRegistrationDto);
        return new RedirectView("/");
    }

    // get client for only edit view
    @GetMapping("/editClient/{id}")
    public String getEditClient(@PathVariable("id") Long id, Model model) {
        Client client = clientService.getClientById(id);
        model.addAttribute("client", client);
        return "clients/editPerson";
    }

    // save edit client
    @PostMapping("/addClient/{id}")
    public RedirectView postEditClient(@ModelAttribute Client newClient, @PathVariable("id") Long id) {
        clientService.editClient(newClient);
        return new RedirectView("/");
    }

    // delete client
    @PostMapping("/editClient/{id}")
    public RedirectView deleteClient(@PathVariable("id") Long id) {
        clientService.deleteClient(id);
        return new RedirectView("/clients");
    }


}
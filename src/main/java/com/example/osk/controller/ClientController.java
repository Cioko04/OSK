package com.example.osk.controller;

import com.example.osk.model.Client;
import com.example.osk.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import java.util.List;

@Controller
public class ClientController {

    private final ClientService clientService;

    @Autowired
    public ClientController(ClientService clientService) {
        this.clientService = clientService;
    }

    // getting a view of all the clients with model of those clients
    @GetMapping("/clients")
    public String getClientsList(Model model) {
        List<Client> allClients = this.clientService.getAllClients();
        model.addAttribute("client", allClients);
        return "clients/clientsList";
    }

    // getting the view of adding a new client
    @GetMapping("/addClient")
    public String getAddClientView() {
        return "clients/addCient";
    }

    //getting the view of editing a certain client with model of that client
    @GetMapping("/editClient/{id}")
    public String getEditClientView(@PathVariable Long id, Model model) {
        Client foundedClient = this.clientService.getClientById(id);
        model.addAttribute("client", foundedClient);
        return "clients/editClient";
    }

    // confirming of adding a new client on page then redirecting a view to /clients
    @PostMapping("/addClient")
    public RedirectView addClient (@ModelAttribute Client client) {
        this.clientService.addClient(client);
        return new RedirectView("/clients");
    }

    // confirming of editing a certain client and redirecting a view to  /clients
    @PostMapping("/editClient/{id}")
    public RedirectView acceptEditingClient(@ModelAttribute Client newClient) {
        this.clientService.editClient(newClient);
        return new RedirectView("/clients");
    }

    //confirming of removing a certain client on page from OSC and redirecting a view to  /clients
    @PostMapping("/removeClient/{id}")
    public RedirectView removeClient(@PathVariable("id") Long id) {
        this.clientService.deleteClient(id);
        return new RedirectView("/clients");
    }
}
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

    // getting all the clients for showing on page
    @GetMapping("/clients")
    public String getClientsList(Model model) {
        List<Client> allClients = this.clientService.getAllClients();
        model.addAttribute("client", allClients);
        return "clients/TODO";
    }

    // only get view for add new client
    @GetMapping("/addClient")
    public String getAddClientView() {
        return "clients/TODO";
    }

    // save client in DB then redirecting a view
    @PostMapping("/addClient")
    public RedirectView addClient (@ModelAttribute Client client) {
        this.clientService.addClient(client);
        return new RedirectView("/clients");
    }
}
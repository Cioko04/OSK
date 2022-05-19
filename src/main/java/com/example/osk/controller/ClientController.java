package com.example.osk.controller;

import com.example.osk.model.Client;
import com.example.osk.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class ClientController {

    private final ClientService clientService;

    @Autowired
    public ClientController(ClientService clientService) {
        this.clientService = clientService;
    }

    // to DELETE - Mateusz
    @GetMapping("/")
    public String getIndex() {
        return "index";
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
    public RedirectView addClient (@ModelAttribute Client client) {
        this.clientService.addClient(client);
        return new RedirectView("/clients");
    }

    // to DELETE - Mateusz
    // get client for only edit view
    @GetMapping("/editClient/{id}")
    public String getEditClient(@PathVariable("id") Long id, Model model) {
        Client client = clientService.getClient(id);
        model.addAttribute("client", client);
        return "clients/editPerson";
    }

    // to DELETE - Mateusz
    // save edit student
    @PostMapping("/addClient/{id}")
    public RedirectView postEditClient(@Valid @ModelAttribute Client newClient, @PathVariable("id") Long id) {
        clientService.editClient(newClient);
        return new RedirectView("/editClient/{id}");
    }

    // to DELETE - Mateusz
    // delete client
    @PostMapping("/editClient/{id}")
    public RedirectView deleteClient(@PathVariable("id") Long id) {
        clientService.deleteClient(id);
        return new RedirectView("/clients");
    }

// to DELETE - Mateusz
//    @GetMapping("/")
//    @ResponseBody
//    public String mateuszBTest(){
//        return"tesMB";
//    }
}
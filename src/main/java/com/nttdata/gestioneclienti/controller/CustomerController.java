package com.nttdata.gestioneclienti.controller;


import com.nttdata.gestioneclienti.model.Customer;
import com.nttdata.gestioneclienti.serivce.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
public class CustomerController {
    @Autowired
    private  CustomerService customerService;

    @GetMapping(path={"/index", "/"})
    public ModelAndView home(){
        return new ModelAndView("index.jsp");
    }

    @GetMapping("/create")
    public ModelAndView create(){
        return new ModelAndView("create.jsp");
    }

    @PostMapping(path={"/create"})
    public ModelAndView create(@RequestParam String name, @RequestParam String surname,
                               @RequestParam String fiscalCode, @RequestParam String birthYear,
                               @RequestParam String birthMonth, @RequestParam String birthDay,
                               @RequestParam Double balance) {
       try {
           Integer bYear = Integer.parseInt(birthYear);
           Integer bMonth = Integer.parseInt(birthMonth);
           Integer bDay = Integer.parseInt(birthDay);

           Customer customer = new Customer(name, surname, fiscalCode, bYear, bMonth, bDay, balance);
           customerService.createCustomer(customer);
       }catch(Exception e){
           e.getMessage();
       }
        return new ModelAndView("create.jsp");
    }


    @GetMapping("/show")
    public ModelAndView show(){
        return new ModelAndView("showAll.jsp", "listaCustomer",  customerService.getAllCustomer());
    }



    @GetMapping("/update")
    public ModelAndView update(){
        return new ModelAndView("update.jsp");
    }

    @PostMapping(path = {"/update"})
    public ModelAndView update(@RequestParam Long id, @RequestParam String name, @RequestParam String surname,
                               @RequestParam String fiscalCode, @RequestParam String birthYear,
                               @RequestParam String birthMonth, @RequestParam String birthDay,
                               @RequestParam Double balance) {
        try {
            Integer bYear = Integer.parseInt(birthYear);
            Integer bMonth = Integer.parseInt(birthMonth);
            Integer bDay = Integer.parseInt(birthDay);
            Customer customer = new Customer(name, surname, fiscalCode, bYear, bMonth, bDay, balance);
            customerService.update(id, customer);
        } catch (Exception e) {
            e.getMessage();
        }

        return new ModelAndView("update.jsp");
    }

    @GetMapping("/delete")
    public ModelAndView delete(){
        return new ModelAndView("delete.jsp");
    }

    @PostMapping("delete")
    public ModelAndView delete(@RequestParam Long id){
        try{
            customerService.deleteById(id);
        }catch(Exception e){
            e.getMessage();
        }

        return new ModelAndView( "delete.jsp");
    }



}


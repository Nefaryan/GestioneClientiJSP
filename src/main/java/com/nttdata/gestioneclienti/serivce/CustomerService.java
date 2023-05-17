package com.nttdata.gestioneclienti.serivce;

import com.nttdata.gestioneclienti.model.Customer;
import com.nttdata.gestioneclienti.repositroy.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    CustomerRepository customerRepository;

    public void createCustomer(Customer customer){
        customerRepository.save(customer);
    }
    public void update(Long id,Customer c) throws Exception {
       if(customerRepository.existsById(id)){
           c.setId(id);
           customerRepository.saveAndFlush(c);
       }else{
           throw new Exception("Customer not found");
       }
    }
    public void deleteById(Long id){
        customerRepository.deleteById(id);
    }
    public List<Customer> getAllCustomer(){
        return customerRepository.findAll();
    }

}

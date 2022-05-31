package ch.bbzw.m306.Webshop.business;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import ch.bbzw.m306.Webshop.business.testDao;

import ch.bbzw.m306.Webshop.data.Person;

@RestController
public class Controller {
    
    @Inject
    private testDao test;

    @GetMapping("/")
    public String getPage(){
        return "Welcome";
    }

    @GetMapping("/all")
    public List<Person> getAll(){
        return test.getAll();
    }
}

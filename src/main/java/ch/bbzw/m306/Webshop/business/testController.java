package ch.bbzw.m306.Webshop.business;

import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RestController; 

@RestController
public class testController { 
  
@RequestMapping("/")  
public String hello()   
{  
return "Hello User";  
}  
}  


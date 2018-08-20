package br.com.speedytec.waboxapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


/**
 * by leandro Scarassatti
 */
@Controller
public class HomeController {

    @GetMapping("/")
    public String home(){
        return "home";
    }
}

package com.nttdata.ejb.example;

import javax.ejb.Stateless;

@Stateless
public class HelloBean implements Hello {

    public String greet(String s) {
        return "Hello " + s + "!";
    }
}

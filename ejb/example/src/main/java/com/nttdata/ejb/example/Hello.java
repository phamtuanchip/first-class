package com.nttdata.ejb.example;

import javax.ejb.Local;

@Local
public interface Hello {

    public String greet(String s);

}

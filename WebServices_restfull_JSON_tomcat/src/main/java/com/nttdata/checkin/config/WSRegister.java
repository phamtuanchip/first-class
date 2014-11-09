 
package com.nttdata.checkin.config;

import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.spring.scope.RequestContextFilter;

import com.nttdata.checkin.ws.rest.UserWService;

 
public class WSRegister extends ResourceConfig {

   
    public WSRegister () {
        register(RequestContextFilter.class);
        register(UserWService.class);
    }
}

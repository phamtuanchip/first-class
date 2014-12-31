package com.nttdata.checkin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.nttdata.checkin.service.DSCService;
import com.nttdata.checkin.service.DSCServiceFactory;

public class LCA01ServiceFactory implements DSCServiceFactory {

	@Autowired
	LCA01Service lca1Service;
	
	public void setLca1Service(LCA01Service lca1Service) {
		this.lca1Service = lca1Service;
	}
	@Override
	public DSCService getDSCService() {
		return lca1Service;
	}

}

package com.nttdata.checkin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.nttdata.checkin.service.DSCService;
import com.nttdata.checkin.service.DSCServiceFactory;

public class LCA01ServiceMockFactory implements DSCServiceFactory {

	@Autowired
	LCAServiceMock lcaService;
	
	public void setLcaService(LCAServiceMock lcaService) {
		this.lcaService = lcaService;
	}
	@Override
	public DSCService getDSCService() {
		return lcaService;
	}

}

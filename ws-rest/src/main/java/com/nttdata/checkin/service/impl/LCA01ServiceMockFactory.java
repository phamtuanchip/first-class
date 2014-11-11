package com.nttdata.checkin.service.impl;

import com.nttdata.checkin.service.DSCService;
import com.nttdata.checkin.service.DSCServiceFactory;

public class LCA01ServiceMockFactory implements DSCServiceFactory {

	@Override
	public DSCService getDSCService() {
		return new LCAServiceMock();
	}

}

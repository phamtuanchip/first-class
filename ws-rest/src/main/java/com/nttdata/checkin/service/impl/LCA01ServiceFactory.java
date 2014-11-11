package com.nttdata.checkin.service.impl;

import com.nttdata.checkin.service.DSCService;
import com.nttdata.checkin.service.DSCServiceFactory;

public class LCA01ServiceFactory implements DSCServiceFactory {

	@Override
	public DSCService getDSCService() {
		return new LCA01Service();
	}

}

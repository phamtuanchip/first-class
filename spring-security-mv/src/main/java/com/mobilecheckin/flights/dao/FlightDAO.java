package com.mobilecheckin.flights.dao;

import com.mobilecheckin.flights.model.Flight;

public interface FlightDAO {
	
	Flight searchFlight(String username, String flightNumber, Boolean today, String resvNumber);
	
	

}

package com.mobilecheckin.jdbcMappers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import com.mobilecheckin.flights.model.Flight;
import com.mobilecheckin.users.model.User;

public class FlightMapper implements RowMapper<Flight>{
	
	public static final String FLIGHT_NUMBER = "FLIG_NUMBER";
	public static final String FLIGHT_STATUS = "FLIG_STATUS";
	public static final String FLIGHT_DATE = "FLIG_DATE";
	public static final String FLIGHT_FROM = "FLIG_FROM";
	public static final String FLIGHT_TO = "FLIG_TO";
	public static final String DEPART_TIME = "DEPA_TIME";
	public static final String ARRIVE_TIME = "ARRI_TIME";
	public static final String SEAT_MAP = "SEAT_MAP";
	

	@Override
	public Flight mapRow(ResultSet rs, int rowNum) throws SQLException {
		Flight flight = new Flight();
	
		
		flight.setFligNumber(rs.getString(FLIGHT_NUMBER));
		flight.setFligStatus(rs.getString(FLIGHT_STATUS));
		flight.setFligDate(rs.getDate(FLIGHT_DATE));
		flight.setFligFrom(rs.getString(FLIGHT_FROM));		
		flight.setFligTo(rs.getString(FLIGHT_TO));
		flight.setDepaTime(rs.getTime(DEPART_TIME));
		flight.setArriTime(rs.getTime(ARRIVE_TIME));
		flight.setSeatMap(rs.getString(SEAT_MAP));
		
		return flight;
		
	}

}

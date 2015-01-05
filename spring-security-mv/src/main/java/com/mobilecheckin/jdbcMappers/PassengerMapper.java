package com.mobilecheckin.jdbcMappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.mobilecheckin.passengers.model.Passenger;

public class PassengerMapper implements RowMapper<Passenger>{
	
	public static final String PASSENGER_FIRSTNAME = "FIRST_NAME";
	public static final String PASSENGER_LASTNAME = "LAST_NAME";
	public static final String PASSENGER_RESERVE_NUMBER = "RESER_NUMBER";
	public static final String PASSENGER_GENDER = "GENDER";
	public static final String PASSENGER_BAGS_AMOUNT = "NUMBER_BAGS";
	public static final String PASSENGER_BANGS_WEIGHT = "BAGS_WEIGHT";
	public static final String PASSENGER_ADDRESS = "ADD_INFOR";
	public static final String PASSENGER_BOARDING_NUMBER = "BOARD_NUMBER";
	public static final String PASSENGER_SEAT_NUMBER = "SEAT_NUMBER";
	public static final String PASSENGER_STATUS = "STATUS";
	public static final String PASSENGER_FLIGHT_NUMBER = "FLIGHT_FLIG_NUMBER";
	public static final String PASSENGER_FLIGHT_DATE = "FLIGHT_FLIG_DATE";


	@Override
	public Passenger mapRow(ResultSet rs, int rowNum) throws SQLException {
		Passenger psg = new Passenger();
	
		
		psg.setFirstName(rs.getString(PASSENGER_FIRSTNAME));
		psg.setLastName(rs.getString(PASSENGER_LASTNAME));
		psg.setReserNumber(rs.getString(PASSENGER_RESERVE_NUMBER));
		psg.setGender(rs.getString(PASSENGER_GENDER));
		psg.setNumberBags(rs.getInt(PASSENGER_BAGS_AMOUNT));
		psg.setBagsWeight(rs.getInt(PASSENGER_BANGS_WEIGHT));
		psg.setAddInfor(rs.getString(PASSENGER_ADDRESS));
		psg.setBoardNumber(rs.getString(PASSENGER_BOARDING_NUMBER));
		psg.setSeatNumber(rs.getString(PASSENGER_SEAT_NUMBER));
		psg.setStatus(rs.getString(PASSENGER_STATUS));
		psg.setFlightFligNumber(rs.getString(PASSENGER_FLIGHT_NUMBER));
		psg.setFlightFligDate(rs.getDate(PASSENGER_FLIGHT_DATE));
		
		return psg;
		
	}

}

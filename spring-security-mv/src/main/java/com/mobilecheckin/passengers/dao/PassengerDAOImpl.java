package com.mobilecheckin.passengers.dao;

import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mobilecheckin.jdbcMappers.PassengerMapper;
import com.mobilecheckin.passengers.model.Passenger;

public class PassengerDAOImpl implements PassengerDAO {
	
	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int save(Passenger psg) {
		String query = "INSERT INTO passenger (FIRST_NAME, LAST_NAME, RESER_NUMBER, GENDER, NUMBER_BAGS, BAGS_WEIGHT," +
				"ADD_INFOR, BOARD_NUMBER, SEAT_NUMBER, STATUS, FLIGHT_FLIG_NUMBER, FLIGHT_FLIG_DATE) VALUES (?,?,?,?,?,?,?,?,?,?,?,?";
		Object[] args = new Object[]{psg.getFirstName(),psg.getLastName(),psg.getReserNumber(),psg.getGender(),
				psg.getNumberBags(),psg.getBagsWeight(),psg.getAddInfor(),psg.getBoardNumber(),psg.getSeatNumber(),psg.getStatus(),psg.getFlightFligNumber(),psg.getFlightFligDate()};
		int out = jdbcTemplate.update(query, args);
		return out;
	}

	@Override
	public Passenger get(String lastName, String resvNumber, String flightNumber) {
		String query ="SELECT * from passenger WHERE LAST_NAME=? AND RESER_NUMBER=? AND FLIGHT_FLIG_NUMBER=?";
		
		Object[] args = new Object[]{lastName, resvNumber, flightNumber};	
		
		Passenger psg = (Passenger)jdbcTemplate.queryForObject(query, args, new PassengerMapper());
		return psg;
	}

	@Override
	public List<Passenger> getList(String flightNumber, Date flightDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Passenger psg) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Passenger psg) {
		// TODO Auto-generated method stub
		return 0;
	}

}

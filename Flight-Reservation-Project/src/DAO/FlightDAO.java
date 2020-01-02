package DAO;

import FlightEntity.Flight;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DatabaseConnection.ConnectionSetup;



public class FlightDAO {
	
	private Connection conn;

    public FlightDAO() {
    	conn = ConnectionSetup.getConnection();
    }

    public void addFlight(Flight flight) {
        try {
        	
    		String sql = "INSERT INTO flightinfo(id, flight_name, departure_city, arrival_city, departure_date, arrival_date, departure_time, arrival_time, seat_type, price, flight_type)" +
    		" values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1, flight.getId());
            ps.setString(2, flight.getFlightName());
            ps.setString(3, flight.getDepartureCity());     
            ps.setString(4, flight.getArrivalCity());
            ps.setString(5, flight.getDepartureDate());
            ps.setString(6, flight.getArrivalDate());
            ps.setString(7, flight.getDepartureTime());
            ps.setString(8, flight.getArrivalTime());
            ps.setString(9, flight.getSeatType());
            ps.setString(10, flight.getPrice());
            ps.setString(11, flight.getFlightType());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void removeFlight(int id) {
        try {
        	String sql = "DELETE FROM flightinfo WHERE id=?";
            PreparedStatement ps = conn
                    .prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
      }

    public void editFlight(Flight flight) {    	
    	try {
    		
			String sql="UPDATE flightinfo SET flight_name =?, departure_city=?, arrival_city=?, departure_date=?, arrival_date=?, departure_time=?, arrival_time=?, seat_type=?, price=?, flight_type=?" +
					 " WHERE id=?";

            PreparedStatement ps = conn.prepareStatement(sql);
           
            ps.setString(1, flight.getFlightName());
            ps.setString(2, flight.getDepartureCity());     
            ps.setString(3, flight.getArrivalCity());
            ps.setString(4, flight.getDepartureDate());
            ps.setString(5, flight.getArrivalDate());
            ps.setString(6, flight.getDepartureTime());
            ps.setString(7, flight.getArrivalTime());
            ps.setString(8, flight.getSeatType());
            ps.setString(9, flight.getPrice());
            ps.setString(10, flight.getFlightType());
            ps.setInt(11, flight.getId());
            
            ps.executeUpdate();            

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List getAllFlights() {
        List flights = new ArrayList();
        try {
        	String sql = "SELECT * FROM flightinfo";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Flight flight = new Flight();
                flight.setId(rs.getInt("id"));
                flight.setFlightName(rs.getString("flight_name"));
                flight.setDepartureCity(rs.getString("departure_city"));
                flight.setArrivalCity(rs.getString("arrival_city"));
                flight.setDepartureDate(rs.getString("departure_date"));
				flight.setArrivalDate(rs.getString("arrival_date"));
				flight.setDepartureTime(rs.getString("departure_time"));
				flight.setArrivalTime(rs.getString("arrival_time"));
				flight.setSeatType(rs.getString("seat_type"));
				flight.setPrice(rs.getString("price"));
				flight.setFlightType(rs.getString("flight_type"));                           
                flights.add(flight);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flights;
    }

    public Flight getFlightById(int id) {
    	Flight flight = new Flight();
        try {
        	String sql = "SELECT * FROM flightinfo WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	flight.setId(rs.getInt("id"));
            	flight.setFlightName(rs.getString("flight_name"));
                flight.setDepartureCity(rs.getString("departure_city"));
                flight.setArrivalCity(rs.getString("arrival_city"));
                flight.setDepartureDate(rs.getString("departure_date"));
				flight.setArrivalDate(rs.getString("arrival_date"));
				flight.setDepartureTime(rs.getString("departure_time"));
				flight.setArrivalTime(rs.getString("arrival_time"));
				flight.setSeatType(rs.getString("seat_type"));
				flight.setPrice(rs.getString("price"));
				flight.setFlightType(rs.getString("flight_type"));
            	                           
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flight;
    }

}

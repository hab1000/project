package Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FlightDAO;
import FlightEntity.Flight;

public class FlightController extends HttpServlet {
	private static String INSERT = "/flight.jsp";
    private static String Edit = "/editFlight.jsp";
    private static String FlightRecord = "/listFlight.jsp";
    private FlightDAO dao;

    public FlightController() {
        super();
        dao = new FlightDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String redirect="";
        String fId = request.getParameter("flightId");        
        String action = request.getParameter("action");
        if(!((fId)== null) && action.equalsIgnoreCase("insert"))
        {
        	int id = Integer.parseInt(fId);
        	Flight flightlist = new Flight();
        	flightlist.setId(id);
        	         
        	flightlist.setFlightName(request.getParameter("flight_name"));
        	flightlist.setDepartureCity(request.getParameter("departure_city"));
        	flightlist.setArrivalCity(request.getParameter("arrival_city"));
        	flightlist.setDepartureDate(request.getParameter("departure_date"));
        	flightlist.setArrivalDate(request.getParameter("arrival_date"));
			flightlist.setDepartureTime(request.getParameter("departure_time"));
			flightlist.setArrivalTime(request.getParameter("arrival_time"));
			flightlist.setSeatType(request.getParameter("seat_type"));
			flightlist.setPrice(request.getParameter("price"));
			flightlist.setFlightType(request.getParameter("flight_type"));
            
        	dao.addFlight(flightlist);
        	redirect = FlightRecord;
            request.setAttribute("flights", dao.getAllFlights());    
           	System.out.println("Record Added Successfully");
        }
        else if (action.equalsIgnoreCase("delete")){
            String flightId = request.getParameter("flightId");
            int fId1 = Integer.parseInt(flightId);
            dao.removeFlight(fId1);
            redirect = FlightRecord;
            request.setAttribute("flights", dao.getAllFlights());
            System.out.println("Record Deleted Successfully");
        }else if (action.equalsIgnoreCase("editform")){        	
        	redirect = Edit;            
        } else if (action.equalsIgnoreCase("edit")){
        	String flightId = request.getParameter("flightId");
            int fId1 = Integer.parseInt(flightId);
            Flight flight = new Flight();
        	flight.setId(fId1);
        	flight.setFlightName(request.getParameter("flight_name"));
        	flight.setDepartureCity(request.getParameter("departure_city"));
        	flight.setArrivalCity(request.getParameter("arrival_city"));
        	flight.setDepartureDate(request.getParameter("departure_date"));
        	flight.setArrivalDate(request.getParameter("arrival_date"));
			flight.setDepartureTime(request.getParameter("departure_time"));
			flight.setArrivalTime(request.getParameter("arrival_time"));
			flight.setSeatType(request.getParameter("seat_type"));
			flight.setPrice(request.getParameter("price"));
			flight.setFlightType(request.getParameter("flight_type"));
            dao.editFlight(flight);
           request.setAttribute("flights", flight);
            redirect = FlightRecord;
            System.out.println("Record updated Successfully");
         } else if (action.equalsIgnoreCase("listFlight")){
            redirect = FlightRecord;
            request.setAttribute("flights", dao.getAllFlights());
         } else {
            redirect = INSERT;
        }

        RequestDispatcher rd = request.getRequestDispatcher(redirect);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}

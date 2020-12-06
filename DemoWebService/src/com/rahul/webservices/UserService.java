package com.rahul.webservices;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.MatrixParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("/userservice")
public class UserService {
	

//*****************************************************************	

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	@Path("/path/{roll}/{name}")
	public String createUserUsingPathParam(@PathParam("roll") String roll, 
											@PathParam("name") String name) {

		if (roll != null && name != null) 
		{
			System.out.println("Received Details :: " + roll + " " + name);
			return "Success";
		}

		else 
		{
			return "Failed";
		}
	}

//**************************************************************************************

	@GET
	@Produces(MediaType.APPLICATION_XML)
	@Path("/query")
	public String createUserUsingQueryParam(@QueryParam("roll") String roll,
						  @QueryParam("name") String name) {
		if (roll != null && name != null) 
		{	
			System.out.println("Received Details : " + roll + " " + name);
			return "<result><status>Success</status></result>";
		}

		else 
		{
			return "<result><status>Failed</status></result>";
		}
	}
	
	
//***************************************************************************************
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/matrix")
	public String createUserUsingMatrixParam(@MatrixParam("roll") String roll,
											 @MatrixParam("name") String name) {
		if (roll != null && name != null) 
		{	
			System.out.println("Received Details : " + roll + " " + name);
			return "{\"status\", \"success\"}";
		}

		else 
		{
			return "{\"status\", \"fail\"}";
		}
	}
	
//****************************************************************************************	
	
	@POST
	@Produces(MediaType.TEXT_HTML)
	@Path("/form")
	public String createUserUsingFormParam(@FormParam("roll") String roll,
			 							   @FormParam("name") String name) {
		if (roll != null && name != null) 
		{	
			System.out.println("Received Details : " + roll + " " + name);
			return "<html><body bgcolor='khaki'>Success</body></html>";
		}

		else 
		{
			return "<html><body bgcolor='yellow'>Fail</body></html>";
		}
	}
	
	
}
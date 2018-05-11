package rest.user.app.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import rest.user.app.dao.Dao;
import rest.user.app.mapping.Membres;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
@Path("/framakollect")
public class Services {
    ArrayList<Membres> users = new ArrayList<Membres>();
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getUsers() {
        //Serialiser d'objets en JSON
        Dao selectall = new Dao(); // TEST --> OK appelle de la méthode  de la classe Dao
        users = selectall.SelectAllUser();// TEST --> OK  Application de la méthode

        ObjectMapper mapper = new ObjectMapper();
        String jsonInString = null;
        try {
            jsonInString = mapper.writeValueAsString(users);
        } catch (Exception e) {
            return e.getMessage();
        }
        return jsonInString;
    }
    @Path("/compte")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public String  CheckUser(@QueryParam("email") String email,@QueryParam("password") String password){
        System.out.println(email);
     Membres check = new Membres(email.trim(),password);
     ObjectMapper mapper = new ObjectMapper();
     Dao checkUser = new Dao();
     Membres res= checkUser.checkUser(check);
     String jsonInString = null;
     try {
         jsonInString = mapper.writeValueAsString(res);
     } catch (Exception e) {
         return e.getMessage();
     }
     return jsonInString;
    }
}

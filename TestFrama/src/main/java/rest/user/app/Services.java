package rest.user.app;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
@Path("/framakollect")
public class Services {
    ArrayList<User> users = new ArrayList<User>();
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
     User check = new User(email.trim(),password);
     ObjectMapper mapper = new ObjectMapper();
     Dao checkUser = new Dao();
     User res= checkUser.checkUser(check);
     String jsonInString = null;
     try {
         jsonInString = mapper.writeValueAsString(res);
     } catch (Exception e) {
         return e.getMessage();
     }
     return jsonInString;
    }
}

package rest.user.app;

import com.fasterxml.jackson.databind.ObjectMapper;
import rest.user.app.dao.Dao;
import rest.user.app.mapping.Medicament;
import rest.user.app.mapping.Membres;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;

@Path("/framakollect")
public class Services {
    ArrayList<Membres> users = new ArrayList<Membres>();
    ArrayList<Medicament> Med = new ArrayList<Medicament>();

    @Path("/medicament")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public String getMedicaments() {  // AFFICHE LES MEDICAMENTS
        //Serialiser d'objets en JSON
        Dao con = new Dao(); // TEST --> OK appelle de la méthode  de la classe Dao
        Med = con.selectAllMed();// TEST --> OK  Application de la méthode
        ObjectMapper mapper = new ObjectMapper();
        String jsonInString = null;
        try {
            jsonInString = mapper.writeValueAsString(Med);
        } catch (Exception e) {
            return e.getMessage();
        }
        return jsonInString;
    }
    @Path("/medicament/{med}")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public String getOneMedicament(@PathParam("med")int med){
        Medicament medi=null;
        Dao con = new Dao();
        ObjectMapper mapper = new ObjectMapper();
        medi=con.SelectMed(med);
        String jsonInString = null;
        try {
            jsonInString = mapper.writeValueAsString(medi);
        } catch (Exception e) {
            return e.getMessage();
        }
        return jsonInString;
    }
    @DELETE
    @Path("/medicament/delete")
    @Produces(MediaType.APPLICATION_JSON)
    public void deleteMedicament(@QueryParam("medId") int medId){
        Medicament id = new Medicament(medId);
        ObjectMapper mapper = new ObjectMapper();
        Dao deleteMed = new Dao();
        Medicament res = deleteMed.DeleteMedica(id);

    }


    // VERIFIE LES IDENTIFIANTS
    @POST
    @Path("/compte")
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

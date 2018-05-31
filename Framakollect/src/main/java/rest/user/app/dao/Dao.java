package rest.user.app.dao;


import rest.user.app.mapping.Medicament;
import rest.user.app.mapping.Membres;

import java.sql.*;
import java.util.ArrayList;

import static java.lang.System.out;

public class Dao {
    // METHODE CONNECTION OK
    private Connection get() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver"); // appelle
            out.println("Driver ok");
            String url = ("jdbc:mysql://localhost/framakollect?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"); // adresse de la base données  mysql://machine/nom de la SGBD
            //String url = ("jdbc:mysql://sl-eu-lon-2-portal.10.dblayer.com:26249/framakollect?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"); // adresse de la base données  mysql://machine/nom de la SGBD
            //String user = ("admin");
            String user = ("root");
            //String passwd = ("FFCMIJDYMIGYZFBP");
            String passwd = ("");
            con = DriverManager.getConnection(url, user, passwd);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }
    public Medicament SelectMed(int Med) {
        Medicament medica=null;
        try {
            Connection con3 = this.get();
            PreparedStatement ptt = con3.prepareStatement("select * from medicament where id_med=?");
            ptt.setInt(1, Med); // objet.setString ->> insérer le parametre du formulaire
            ResultSet result=ptt.executeQuery();
            ResultSetMetaData resultMeta = (ResultSetMetaData) result.getMetaData();


            ptt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return medica;
    }

    // Méthode qui affiche la liste des médicaments
    public ArrayList<Medicament> selectAllMed() {
        ArrayList<Medicament> Med = new ArrayList<Medicament>();
        try {
            Connection con1 = this.get();
            Statement reqselect = con1.createStatement();
            ResultSet result = reqselect.executeQuery("select * from medicament");
            ResultSetMetaData resultMeta = (ResultSetMetaData) result.getMetaData();
            while (result.next()){
                int medId=result.getInt(1);
                String depotLegal= result.getString(2);
                String nomCommercial= result.getString(3);
                String compositon = result.getString(4);
                String effet = result.getString(5);
                String contreIn = result.getString(6);
                String famCode = result.getString(7);
                Medicament profil = new Medicament(medId,depotLegal,nomCommercial,compositon,effet,contreIn,famCode);
                Med.add(profil);
            }
            result.close();
            reqselect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Med;
    }
    // Méthode vérifie les users
    public Membres checkUser(Membres u){ // objet de type User
        try {
            Connection con3 = this.get();
            PreparedStatement psmt = con3.prepareStatement("select * from membre where email=? AND password=?");
            psmt.setString(1,u.getEmail());
            psmt.setString(2,u.getPassword());
            System.out.println(psmt);
            ResultSet req = psmt.executeQuery();
            if(req.next()){
                System.out.println("ok");
                return u; // retourne l'objet User au client js
            }else {
                System.out.println("erreur");
                return null; // retourne
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    // Methode Delete
    public Medicament DeleteMedica(Medicament id){ // objet medicament a supprimer SGBD
        try{
            Connection con4=this.get();
            PreparedStatement pstmt=con4.prepareStatement("DELETE FROM medicament where id_med=?");
            pstmt.setInt(1, id.getMedId()); // recupère à travers  le paramètre u.getNom() , le paramètre mis dans la classe User => Nom
            int resultatinsert = pstmt.executeUpdate();
            if (resultatinsert == 1){
                System.out.println("requête réussi -> Delete");
                return id;
            }else{
                System.out.println("Non réussi -> Delete");
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }
    // METHODE UPDATE MEDICAMENT
    public Medicament UpdateMed(Medicament med){
        try{
            Connection con5=this.get();
            PreparedStatement pstmt=con5.prepareStatement("UPDATE medicament SET MED_DEPOTLEGAL=?,MED_NOMCOMMERCIAL=?,MED_COMPOSITION=?,MED_EFFETS=?,MED_CONTREINDIC=?,FAM_CODE=? WHERE id_med=?");
            pstmt.setString(1,med.getDepotLegal());
            pstmt.setString(2,med.getNomCommercial());
            pstmt.setString(3,med.getComposition());
            pstmt.setString(4,med.getEffet());
            pstmt.setString(5,med.getContreIndic());
            pstmt.setString(6,med.getFamCode());
            pstmt.setInt(7,med.getMedId());
            return med;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}


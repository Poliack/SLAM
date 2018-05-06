package rest.user.app;


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
            String user = ("root");
            String passwd = ("");
            con = DriverManager.getConnection(url, user, passwd);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }
    public ArrayList<User> SelectAllUser() {
        ArrayList<User> users = new ArrayList<User>();// Array list  dans chaque methode
// Test ok
        try {
            Connection con2 = this.get();
            Statement reqselect = con2.createStatement(); //  création de la requête
            ResultSet result = reqselect.executeQuery("select * from users"); //  execution de la requête  Resultset =tableau avec un curseur
            ResultSetMetaData resultMeta = (ResultSetMetaData) result.getMetaData();

            while (result.next()) {  // next() renvoie true or false et s'arete a false automatiquement
                String email = result.getString(1); // result parcours les lignes , result.getString("N*Colonne)
                String password = result.getString(2);
                User u = new User(email, password);
                users.add(u);//tab(u)  // ajouter au tableau
                for (int i = 1; i <= resultMeta.getColumnCount(); i++){
                    System.out.print("\t" + resultMeta.getColumnName(i).toUpperCase() + "\t *");

                    System.out.println("\n**********************************");
                }
                for (int e = 1; e <= resultMeta.getColumnCount(); e++) {
                    System.out.print("\t" + result.getObject(e).toString() + "\t |");

                    System.out.println("\n******");
                }
            }
            result.close();
            reqselect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    public User checkUser(User u){ // objet de type User
        try {
            Connection con3 = this.get();
            PreparedStatement psmt = con3.prepareStatement("select * from users where email=? AND password=?");
            psmt.setString(1,u.getEmail());
            psmt.setString(2,u.getPassword());
            System.out.println(psmt);
            ResultSet req = psmt.executeQuery();
            if(req.next()){
                System.out.println("ok");
                return u; // retourne l'objet User
            }else {
                System.out.println("erreur");
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

package rest.user.app.mapping;

public class Acces {
    private int idAcces;
    private String Libelle;

    public Acces (int idAcces,String Libelle){
        this.idAcces=idAcces;
        this.Libelle=Libelle;
    }
    public Acces(int Acces){ // class Specialities

    }

    public Acces() {
    }


    public int getIdAcces() {
        return idAcces;
    }

    public void setIdAcces(int roleId) {
        idAcces = idAcces;
    }

    public String getLibelle() {
        return Libelle;
    }

    public void setLibelle(String libelle) {
        Libelle = libelle;
    }
}

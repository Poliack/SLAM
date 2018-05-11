package rest.user.app.mapping;

public class Famille {

   private String famCode;
   private String libelle;

    public Famille(int idFam,String famCode,String libelle){
        this.famCode=famCode;
        this.libelle=libelle;
    }
    public String getFamCode() {
        return famCode;
    }

    public void setFamCode(String famCode) {
        this.famCode = famCode;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
}

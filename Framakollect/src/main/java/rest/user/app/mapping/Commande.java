package rest.user.app.mapping;

public class Commande {
    private  int ComId;
    private int UserId;
    private String MedId;
    private String ComQte;
    private String ComDate;
    private String ComEtat;

    public Commande(int idcommande,int idmed, String depotlegal,String famcode,String nomcommercial,String nbcommande,int prixht){
        this.ComId=ComId;
        this.UserId=UserId;
        this.MedId=MedId;
        this.ComQte=ComQte;
        this.ComDate=ComDate;
        this.ComEtat=ComEtat;
    }

    public int getComId() {
        return ComId;
    }

    public void setComId(int comId) {
        ComId = comId;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int userId) {
        UserId = userId;
    }

    public String getMedId() {
        return MedId;
    }

    public void setMedId(String medId) {
        MedId = medId;
    }

    public String getComQte() {
        return ComQte;
    }

    public void setComQte(String comQte) {
        ComQte = comQte;
    }
    public String getComDate() {
        return ComDate;
    }

    public void setComDate(String comDate) {
        ComDate = comDate;
    }

    public String getComEtat() {
        return ComEtat;
    }

    public void setComEtat(String comEtat) {
        ComEtat = comEtat;
    }
}

package rest.user.app.mapping;

public class Visiteur extends Visite {
    private int idVisiteur;
    private String visMatricule;
    private String visNom;
    private String visPrenom;
    private String visAdresse;
    private String visCp;
    private String visVille;
    private String visDate;

    public Visiteur(int vNum, String vDate, String vDescription,int idVisiteur,String visMatricule,String visNom,String visPrenom,String visAdresse,String visCp,String visVille,String visDate) {
        super(vNum);
        this.idVisiteur=idVisiteur;
        this.visMatricule=visMatricule;
        this.visNom=visNom;
        this.visPrenom=visPrenom;
        this.visAdresse=visAdresse;
        this.visCp=visCp;
        this.visVille=visVille;
        this.visDate=visDate;
    }
}

package rest.user.app.mapping;

public class Etablissement {
    private int EtatId;
    private String EtatNom;
    private String EtatAdresse;
    private int EtatCp;
    private String EtatVille;

    public Etablissement(int EtatId,String EtatNom,String EtatAdresse,int EtatCp,String EtatVille){
        this.EtatId=EtatId;
        this.EtatNom=EtatNom;
        this.EtatAdresse=EtatAdresse;
        this.EtatCp=EtatCp;
        this.EtatVille=EtatVille;
    }

    public int getEtatId() {
        return EtatId;
    }

    public void setEtatId(int etatId) {
        EtatId = etatId;
    }

    public String getEtatNom() {
        return EtatNom;
    }

    public void setEtatNom(String etatNom) {
        EtatNom = etatNom;
    }

    public String getEtatAdresse() {
        return EtatAdresse;
    }

    public void setEtatAdresse(String etatAdresse) {
        EtatAdresse = etatAdresse;
    }

    public int getEtatCp() {
        return EtatCp;
    }

    public void setEtatCp(int etatCp) {
        EtatCp = etatCp;
    }

    public String getEtatVille() {
        return EtatVille;
    }

    public void setEtatVille(String etatVille) {
        EtatVille = etatVille;
    }
}

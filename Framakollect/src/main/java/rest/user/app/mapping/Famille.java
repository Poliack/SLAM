package rest.user.app.mapping;

public class Famille extends Medicament{
    private int idFam;
    private String famCode;
    private String libelle;


    public Famille(int idFam,String famCode,String libelle,int MedId){
        super(MedId);
        this.idFam=idFam;
        this.famCode=famCode;
        this.libelle=libelle;


    }

    @Override
    public int getMedId() {
        return super.getMedId();
    }

    @Override
    public void setMedId(int medId) {
        super.setMedId(medId);
    }

    public int getIdFam() {
        return idFam;
    }

    public void setIdFam(int idFam) {
        this.idFam = idFam;
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

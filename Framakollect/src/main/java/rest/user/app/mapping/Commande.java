package rest.user.app.mapping;

public class Commande extends Medicament {
    private int idCommande;
    private String depotLegal;
    private String famCode;
    private String nomCommercial;
    private int nbCommande;
    private double prixHt;


    public Commande (int medId,int idCommande,String depotLegal, String famCode,String nomCommercial,int nbCommande,double prixHt){
        super(medId,depotLegal,nomCommercial,famCode);
        this.idCommande=idCommande;
        this.depotLegal=depotLegal;
        this.famCode=famCode;
        this.nomCommercial=nomCommercial;
        this.nbCommande=nbCommande;
        this.prixHt=prixHt;

    }

    @Override
    public int getMedId() {
        return super.getMedId();
    }

    @Override
    public void setMedId(int medId) {
        super.setMedId(medId);
    }

    public int getIdCommande() {
        return idCommande;
    }

    public void setIdCommande(int idCommande) {
        this.idCommande = idCommande;
    }

    public String getDepotLegal() {
        return depotLegal;
    }

    public void setDepotLegal(String depotLegal) {
        this.depotLegal = depotLegal;
    }

    public String getFamCode() {
        return famCode;
    }

    public void setFamCode(String famCode) {
        this.famCode = famCode;
    }

    public String getNomCommercial() {
        return nomCommercial;
    }

    public void setNomCommercial(String nomCommercial) {
        this.nomCommercial = nomCommercial;
    }

    public int getNbCommande() {
        return nbCommande;
    }

    public void setNbCommande(int nbCommande) {
        this.nbCommande = nbCommande;
    }

    public double getPrixHt() {
        return prixHt;
    }

    public void setPrixHt(double prixHt) {
        this.prixHt = prixHt;
    }

}


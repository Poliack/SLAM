package rest.user.app.mapping;

public class Prixht extends Medicament {
    private double prixHt;
    private int idPrix;

    public Prixht(double prixHt, int idPrix,int medId,String depotLegal,String nomCommercial){
        super(medId,depotLegal,nomCommercial);
        this.idPrix=idPrix;
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

    @Override
    public String getDepotLegal() {
        return super.getDepotLegal();
    }

    @Override
    public void setDepotLegal(String depotLegal) {
        super.setDepotLegal(depotLegal);
    }

    @Override
    public String getNomCommercial() {
        return super.getNomCommercial();
    }

    @Override
    public void setNomCommercial(String nomCommercial) {
        super.setNomCommercial(nomCommercial);
    }

    public double getPrixHt() {
        return prixHt;
    }

    public void setPrixHt(double prixHt) {
        this.prixHt = prixHt;
    }

    public int getIdPrix() {
        return idPrix;
    }

    public void setIdPrix(int idPrix) {
        this.idPrix = idPrix;
    }
}

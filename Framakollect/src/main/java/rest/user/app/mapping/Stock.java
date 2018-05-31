package rest.user.app.mapping;

public class Stock extends Medicament {
    private int idStock;
    private int nbStock;
    public Stock(int idStock,int nbStock,int medId,String depotLocal,String nomCommercial){
        super(medId,depotLocal,nomCommercial);
        this.idStock=idStock;
        this.nbStock=nbStock;
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

    public int getIdStock() {
        return idStock;
    }

    public void setIdStock(int idStock) {
        this.idStock = idStock;
    }

    public int getNbStock() {
        return nbStock;
    }

    public void setNbStock(int nbStock) {
        this.nbStock = nbStock;
    }
}

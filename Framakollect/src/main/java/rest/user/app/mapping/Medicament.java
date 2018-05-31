package rest.user.app.mapping;

public class Medicament {
    private int medId;
    private String depotLegal;
    private String nomCommercial;
    private String composition;
    private String effet;
    private String contreIndic;
    private String famCode;

    public Medicament(int medId, String depotLegal, String nomCommercial, String effet, String composition, String contreIndic, String famCode) {  // 4 constructeurs  LOL
        this.medId = medId;
        this.depotLegal = depotLegal;
        this.nomCommercial = nomCommercial;
        this.composition = composition;
        this.effet = effet;
        this.contreIndic = contreIndic;
        this.famCode = famCode;
    }

    public Medicament(int medId, String depotLegal, String nomCommercial, String famCode) { // class Commande

    }

    public Medicament(int medId) { // class famille

    }

    public Medicament(int medId, String depotLegal, String nomCommercial) { // class Prix ht et stock

    }


    public int getMedId() {
        return medId;
    }

    public void setMedId(int medId) {
        this.medId = medId;
    }

    public String getDepotLegal() {
        return depotLegal;
    }

    public void setDepotLegal(String depotLegal) {
        this.depotLegal = depotLegal;
    }

    public String getNomCommercial() {
        return nomCommercial;
    }

    public void setNomCommercial(String nomCommercial) {
        this.nomCommercial = nomCommercial;
    }

    public String getComposition() {
        return composition;
    }

    public void setComposition(String composition) {
        this.composition = composition;
    }

    public String getEffet() {
        return effet;
    }

    public void setEffet(String effet) {
        this.effet = effet;
    }

    public String getContreIndic() {
        return contreIndic;
    }

    public void setContreIndic(String contreIndic) {
        this.contreIndic = contreIndic;
    }

    public String getFamCode() {
        return famCode;
    }

    public void setFamCode(String famCode) {
        this.famCode = famCode;
    }


}


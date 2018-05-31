package rest.user.app.mapping;

public class Praticien extends Region  {
    private int praNum;
    private String praNom;
    private String praPrenom;
    private String praAdresse;
    private int praCp;
    private String praVille;
    private String coefNotoriete;
    private String typeCode;

    public Praticien(int praNum, String praNom, String praPrenom, String praAdresse, int praCp, String praVille, String coefNotoriete, String typeCode, int idReg){
        super(idReg);
        this.praNum=praNum;
        this.praNom=praNom;
        this.praPrenom=praPrenom;
        this.praAdresse=praAdresse;
        this.praCp=praCp;
        this.praVille=praVille;
        this.coefNotoriete=coefNotoriete;
        this.typeCode=typeCode;
    }
    public Praticien(int praNum){
    }

    public Praticien() {
    }

    @Override
    public int getIdReg() {
        return super.getIdReg();
    }

    @Override
    public void setIdReg(int idReg) {
        super.setIdReg(idReg);
    }


    public int getPraNum() {
        return praNum;
    }

    public void setPraNum(int praNum) {
        this.praNum = praNum;
    }

    public String getPraNom() {
        return praNom;
    }

    public void setPraNom(String praNom) {
        this.praNom = praNom;
    }

    public String getPraPrenom() {
        return praPrenom;
    }

    public void setPraPrenom(String praPrenom) {
        this.praPrenom = praPrenom;
    }

    public String getPraAdresse() {
        return praAdresse;
    }

    public void setPraAdresse(String praAdresse) {
        this.praAdresse = praAdresse;
    }

    public int getPraCp() {
        return praCp;
    }

    public void setPraCp(int praCp) {
        this.praCp = praCp;
    }

    public String getPraVille() {
        return praVille;
    }

    public void setPraVille(String praVille) {
        this.praVille = praVille;
    }

    public String getCoefNotoriete() {
        return coefNotoriete;
    }

    public void setCoefNotoriete(String coefNotoriete) {
        this.coefNotoriete = coefNotoriete;
    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }


}

   
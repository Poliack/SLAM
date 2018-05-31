package rest.user.app.mapping;

public class Region {
    private int idReg;
    private String regCode;
    private String secCode;
    private String regNom;
    public Region(int idReg, String regCode,String secCode,String regNom){
        this.idReg=idReg;
        this.regCode=regCode;
        this.secCode=secCode;
        this.regNom=regNom;
    }

    public Region(int idReg) {
    }

    public Region() {
    }


    public int getIdReg() {
        return idReg;
    }

    public void setIdReg(int idReg) {
        this.idReg = idReg;
    }

    public String getRegCode() {
        return regCode;
    }

    public void setRegCode(String regCode) {
        this.regCode = regCode;
    }

    public String getSecCode() {
        return secCode;
    }

    public void setSecCode(String secCode) {
        this.secCode = secCode;
    }

    public String getRegNom() {
        return regNom;
    }

    public void setRegNom(String regNom) {
        this.regNom = regNom;
    }
}

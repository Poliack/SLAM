package rest.user.app.mapping;

public class Specialitie extends Acces {
    private int idSpe;
    private String typCode;
    private String typLibelle;
    private String typLieu;

    public Specialitie(int idSpe,String typCode,String typLibelle,String typLieu,int idAcces){
        super(idAcces);
        this.idSpe=idSpe;
        this.typCode=typCode;
        this.typLibelle=typLibelle;
        this.typLieu=typLieu;
    }
    public Specialitie(int idSpe){

    }

    @Override
    public int getIdAcces() {
        return super.getIdAcces();
    }

    @Override
    public void setIdAcces(int roleId) {
        super.setIdAcces(roleId);
    }

    public String getTypCode() {
        return typCode;
    }

    public void setTypCode(String typCode) {
        this.typCode = typCode;
    }

    public String getTypLibelle() {
        return typLibelle;
    }

    public void setTypLibelle(String typLibelle) {
        this.typLibelle = typLibelle;
    }

    public String getTypLieu() {
        return typLieu;
    }

    public void setTypLieu(String typLieu) {
        this.typLieu = typLieu;
    }
}

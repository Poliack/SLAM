package rest.user.app.mapping;

public class Visite extends Praticien {
    private int vNum;
    private String vDate;
    private String vDescription;

    public Visite(int vNum,String vDate,String vDescription,int praNum){
        super(praNum);
        this.vNum=vNum;
        this.vDate=vDate;
        this.vDescription=vDescription;


    }
    public Visite(int vNum){

    }

    @Override
    public int getPraNum() {
        return super.getPraNum();
    }

    @Override
    public void setPraNum(int praNum) {
        super.setPraNum(praNum);
    }

    public int getvNum() {
        return vNum;
    }

    public void setvNum(int vNum) {
        this.vNum = vNum;
    }

    public String getvDate() {
        return vDate;
    }

    public void setvDate(String vDate) {
        this.vDate = vDate;
    }

    public String getvDescription() {
        return vDescription;
    }

    public void setvDescription(String vDescription) {
        this.vDescription = vDescription;
    }
}

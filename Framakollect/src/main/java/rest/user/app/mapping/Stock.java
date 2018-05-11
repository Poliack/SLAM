package rest.user.app.mapping;

public class Stock {
    private int MedId;
    private String StoNum;
    private String StoPrix;
    private int StoId;

    public Stock(int MedId,String StoNum,String StoPrix,int StoId ) {
        this.MedId = MedId;
        this.StoNum = StoNum;
        this.StoPrix = StoPrix;
        this.StoId = StoId;
    }

    public int getMedId() {
        return MedId;
    }

    public void setMedId(int medId) {
        MedId = medId;
    }

    public String getStoNum() {
        return StoNum;
    }

    public void setStoNum(String stoNum) {
        StoNum = stoNum;
    }

    public String getStoPrix() {
        return StoPrix;
    }

    public void setStoPrix(String stoPrix) {
        StoPrix = stoPrix;
    }

    public int getStoId() {
        return StoId;
    }

    public void setStoId(int stoId) {
        StoId = stoId;
    }
}

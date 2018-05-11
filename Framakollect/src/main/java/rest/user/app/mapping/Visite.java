package rest.user.app.mapping;

public class Visite {
    private int VisInt;
    private int UserId;
    private String VisCom;

    public Visite(int VisInt,int UserId,String VisCom){
        this.VisInt=VisInt;
        this.UserId=UserId;
        this.VisCom=VisCom;
    }

    public int getVisInt() {
        return VisInt;
    }

    public void setVisInt(int visInt) {
        VisInt = visInt;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int userId) {
        UserId = userId;
    }

    public String getVisCom() {
        return VisCom;
    }

    public void setVisCom(String visCom) {
        VisCom = visCom;
    }
}

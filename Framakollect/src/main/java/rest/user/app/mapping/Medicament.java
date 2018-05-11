package rest.user.app.mapping;

public class Medicament {
    private int MedId;
    private String MedLabel;
    private String FamCode;
    private String MedCompo;
    private String MedEffet;
    private String MedContredic;

    public Medicament(int MedId,String MedLabel,String FamCode,String MedCompo,String MedEffet,String MedContredic){
        this.MedId=MedId;
        this.MedLabel=MedLabel;
        this.FamCode=FamCode;
        this.MedCompo=MedCompo;
        this.MedEffet=MedEffet;
        this.MedContredic=MedContredic;
    }

    public int getMedId() {
        return MedId;
    }

    public void setMedId(int medId) {
        MedId = medId;
    }

    public String getMedLabel() {
        return MedLabel;
    }

    public void setMedLabel(String medLabel) {
        MedLabel = medLabel;
    }

    public String getFamCode() {
        return FamCode;
    }

    public void setFamCode(String famCode) {
        FamCode = famCode;
    }

    public String getMedCompo() {
        return MedCompo;
    }

    public void setMedCompo(String medCompo) {
        MedCompo = medCompo;
    }

    public String getMedEffet() {
        return MedEffet;
    }

    public void setMedEffet(String medEffet) {
        MedEffet = medEffet;
    }

    public String getMedContredic() {
        return MedContredic;
    }

    public void setMedContredic(String medContredic) {
        MedContredic = medContredic;
    }
}

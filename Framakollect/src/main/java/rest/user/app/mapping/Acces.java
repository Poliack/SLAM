package rest.user.app.mapping;

public class Acces {
    private int RoleId;
    private String Libelle;

    public Acces (int RoleId,String Libelle){
        this.RoleId=RoleId;
        this.Libelle=Libelle;
    }

    public int getRoleId() {
        return RoleId;
    }

    public void setRoleId(int roleId) {
        RoleId = roleId;
    }

    public String getLibelle() {
        return Libelle;
    }

    public void setLibelle(String libelle) {
        Libelle = libelle;
    }
}

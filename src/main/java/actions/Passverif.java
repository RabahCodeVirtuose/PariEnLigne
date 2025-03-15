package actions;

public class Passverif extends Contexte {
    @Override
    public String execute() throws Exception {
        if (getSession().get("utilisateur") == null) {
            addFieldError("error", getText("error.utilisateurDeconnecte"));
            return INPUT;
        }
        return SUCCESS;
    }
}

package actions;

import modele.Utilisateur;

import java.util.Objects;

public class Deconnextion extends Contexte {
    private Utilisateur utilisateur;

    @Override
    public String execute() {
        utilisateur = (Utilisateur) getSession().get("utilisateur");
        if (Objects.isNull(utilisateur)) {
            addFieldError("error", getText("error.nonConnecte"));
            return INPUT;
        }
        getFacadeParis().deconnexion(utilisateur.getLogin());
        getSession().clear();
        return SUCCESS;
    }
}

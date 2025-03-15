package actions;

import modele.Utilisateur;

public class Passverif2 extends Contexte {
    private Utilisateur utilisateur;

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    @Override
    public String execute() throws Exception {
        utilisateur = (Utilisateur) getSession().get("utilisateur");

        if (utilisateur == null) {
            addFieldError("error", getText("error.utilisateurDeconnecte"));
            return INPUT;
        }

        if (!utilisateur.isAdmin()) {
            addFieldError("error", getText("error.nonAdmin"));
            return INPUT;
        }

        return SUCCESS;
    }
}

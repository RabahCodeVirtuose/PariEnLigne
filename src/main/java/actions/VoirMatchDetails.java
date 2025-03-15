package actions;

import modele.*;

import java.util.Objects;

public class VoirMatchDetails extends Contexte {
    private long idMatch;
    private Utilisateur utilisateur;
    private Match match;

    public void setIdMatch(long idMatch) {
        this.idMatch = idMatch;
    }

    public Match getMatch() {
        return match;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    @Override
    public String execute() {
        utilisateur = (Utilisateur) getSession().get("utilisateur");

        if (Objects.isNull(utilisateur)) {
            addFieldError("error", getText("error.nonConnecte"));
            return INPUT;
        }

        match = getFacadeParis().getMatch(idMatch);
        getSession().put("match", match);
        return SUCCESS;
    }
}

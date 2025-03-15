package actions;

import modele.*;

import java.util.Collection;
import java.util.Objects;

public class VoirLesMatch extends Contexte {
    private Collection<Match> matches;
    private Utilisateur utilisateur;

    public Collection<Match> getMatches() {
        return matches;
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

        matches = getFacadeParis().getAllMatchs();
        return SUCCESS;
    }
}

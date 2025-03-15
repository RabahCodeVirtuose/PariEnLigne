package actions;

import modele.Pari;
import modele.Utilisateur;

import java.util.Collection;
import java.util.Objects;

public class VoirMesParis extends Contexte {
    private Collection<Pari> paris;
    private Utilisateur utilisateur;

    public Collection<Pari> getParis() {
        return paris;
    }

    @Override
    public String execute() throws Exception {
        utilisateur = (Utilisateur) getSession().get("utilisateur");

        if (Objects.isNull(utilisateur)) {
            addFieldError("error", getText("error.nonConnecte"));
            return INPUT;
        }

        paris = getFacadeParis().getMesParis(utilisateur.getLogin());
        return SUCCESS;
    }
}

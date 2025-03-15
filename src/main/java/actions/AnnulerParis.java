package actions;

import facade.exceptions.OperationNonAuthoriseeException;
import modele.Pari;
import modele.Utilisateur;

import java.util.Collection;
import java.util.Objects;

public class AnnulerParis extends Contexte {
    private Collection<Pari> paris;
    private long id;
    private Utilisateur utilisateur;

    public Collection<Pari> getParis() {
        return paris;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public String execute() {
        utilisateur = (Utilisateur) getSession().get("utilisateur");
        if (Objects.isNull(utilisateur)) {
            addFieldError("error", getText("error.nonConnecte"));
            return INPUT;
        }
        try {
            getFacadeParis().annulerPari(utilisateur.getLogin(), id);
        } catch (OperationNonAuthoriseeException e) {
            paris = getFacadeParis().getMesParis(utilisateur.getLogin());
            addFieldError("error", getText("error.operationNonAutorisee"));
            return INPUT;
        }
        paris = getFacadeParis().getMesParis(utilisateur.getLogin());
        return SUCCESS;
    }
}

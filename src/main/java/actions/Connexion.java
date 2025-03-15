package actions;

import facade.exceptions.InformationsSaisiesIncoherentesException;
import facade.exceptions.UtilisateurDejaConnecteException;
import modele.Utilisateur;

public class Connexion extends Contexte {

    private Utilisateur utilisateur;
    private String pseudo;
    private String password;

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    @Override
    public void validate() {
        if (pseudo == null || password == null || pseudo.isEmpty() || password.isEmpty()) {
            addFieldError("error", getText("error.champsVides"));
        }
    }

    @Override
    public String execute() throws Exception {
        try {
            utilisateur = (Utilisateur) getFacadeParis().connexion(pseudo, password);
            getSession().put("utilisateur", utilisateur);
        } catch (UtilisateurDejaConnecteException e) {
            addFieldError("error", getText("error.utilisateurDejaConnecte"));
            return INPUT;
        } catch (InformationsSaisiesIncoherentesException e) {
            addFieldError("error", getText("error.informationsIncoherentes"));
            return INPUT;
        }
        return SUCCESS;
    }
}

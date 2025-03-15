package actions;

import facade.exceptions.UtilisateurNonAdminException;
import modele.Match;
import modele.Utilisateur;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Objects;

public class AjouterMathyous extends Contexte {

    private Collection<Match> matches;
    private String sport;
    private String equipe1;
    private Utilisateur utilisateur;
    final String ZINGZANG = "zingzang";
    private String equipe2;

    public void setEquipe2(String equipe2) {
        this.equipe2 = equipe2;
    }

    public Collection<Match> getMatches() {
        return matches;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public void setEquipe1(String equipe1) {
        this.equipe1 = equipe1;
    }

    @Override
    public void validate() {
        if (sport == null || sport.length() < 4) {
            addFieldError("error", getText("error.sportCourt"));
        }
        if (equipe1 == null || equipe1.length() < 4) {
            addFieldError("error", getText("error.equipe1Court"));
        }
        if (equipe2 == null || equipe2.length() < 4) {
            addFieldError("error", getText("error.equipe2Court"));
        }
    }

    @Override
    public String execute() {
        utilisateur = (Utilisateur) getSession().get("utilisateur");
        if (Objects.isNull(utilisateur)) {
            addFieldError("error", getText("error.nonConnecte"));
            return ZINGZANG;
        }
        try {
            getFacadeParis().ajouterMatch(utilisateur.getLogin(), sport, equipe1, equipe2, LocalDateTime.now());
        } catch (UtilisateurNonAdminException e) {
            addFieldError("error", getText("error.nonAdmin"));
            return INPUT;
        }
        matches = getFacadeParis().getAllMatchs();
        return SUCCESS;
    }
}

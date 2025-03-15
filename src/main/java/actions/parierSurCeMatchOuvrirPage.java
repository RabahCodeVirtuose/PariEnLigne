package actions;

import modele.Match;
import modele.Utilisateur;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;

public class parierSurCeMatchOuvrirPage extends Contexte {
    private Match match;
    private Utilisateur utilisateur;
    private Collection<String> equipes = new ArrayList<>();

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public Match getMatch() {
        return match;
    }

    public Collection<String> getEquipes() {
        equipes.add(match.getEquipe1());
        equipes.add(match.getEquipe2());
        return equipes;
    }

    @Override
    public String execute() throws Exception {
        utilisateur = (Utilisateur) getSession().get("utilisateur");
        if (Objects.isNull(utilisateur)) {
            addFieldError("error", getText("error.nonConnecte"));
            return INPUT;
        }
        match = (Match) getSession().get("match");
        return SUCCESS;
    }
}

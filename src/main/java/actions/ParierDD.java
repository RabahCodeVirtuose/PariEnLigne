package actions;

import facade.exceptions.MatchClosException;
import facade.exceptions.MontantNegatifOuNulException;
import facade.exceptions.ResultatImpossibleException;
import modele.Match;
import modele.Pari;
import modele.Utilisateur;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;

public class ParierDD extends Contexte {
    private String equipeSelectionne;
    private double montant;
    private Utilisateur utilisateur;
    private Match match;
    private Collection<Pari> paris;
    private Collection<String> equipes = new ArrayList<>();

    public Match getMatch() {
        return match;
    }

    public Collection<Pari> getParis() {
        return paris;
    }

    public Collection<String> getEquipes() {
        match = (Match) getSession().get("match");
        equipes.add(match.getEquipe1());
        equipes.add(match.getEquipe2());
        return equipes;
    }

    public void setEquipeSelectionne(String equipeSelectionne) {
        this.equipeSelectionne = equipeSelectionne;
    }

    public void setMontant(String montant) {
        this.montant = Double.valueOf(montant);
    }

    @Override
    public void validate() {
        match = (Match) getSession().get("match");
        if (montant < 0) {
            addFieldError("error", getText("error.montantNegatif"));
        }
    }

    @Override
    public String execute() {
        utilisateur = (Utilisateur) getSession().get("utilisateur");
        if (Objects.isNull(utilisateur)) {
            addFieldError("error", getText("error.nonConnecte"));
            return INPUT;
        }
        match = (Match) getSession().get("match");

        try {
            getFacadeParis().parier(utilisateur.getLogin(), match.getIdMatch(), equipeSelectionne, montant);
        } catch (MatchClosException e) {
            addFieldError("error", getText("error.matchFerme"));
            return INPUT;
        } catch (ResultatImpossibleException e) {
            addFieldError("error", getText("error.resultatImpossible"));
            return INPUT;
        } catch (MontantNegatifOuNulException e) {
            addFieldError("error", getText("error.montantNegatif"));
            return INPUT;
        }
        paris = getFacadeParis().getMesParis(utilisateur.getLogin());
        return SUCCESS;
    }
}

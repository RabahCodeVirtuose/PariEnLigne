# 🌍 Application de Gestion Multilingue

## 📌 Présentation
Application de Pari en Ligne (avec internationalisation)

### 🎯 Objectif
L'application a été développée dans un cadre académique et professionnel pour démontrer la maîtrise des technologies web et la mise en œuvre des bonnes pratiques de développement.

## 🛠️ Fonctionnalités
- 🌍 **Sélecteur de langue dynamique** : Permet de basculer entre plusieurs langues (Français, Anglais, Espagnol, Italien, Allemand).
- 📄 **Gestion des paramètres utilisateur** : Stockage et gestion des préférences linguistiques.
- 🚀 **Interface réactive et intuitive** : Utilisation de Bootstrap pour un design responsive et accessible.
- 🔄 **Mise à jour automatique des préférences** : Changement instantané de la langue après sélection.

## 💻 Technologies utilisées
- **Front-end** : HTML, JSP, Bootstrap
- **Back-end** : Spring Boot
- **Langages** : Java, JavaScript, EL (Expression Language pour JSP)


### 📦 Installation
#### 🛠️ Cloner le projet


## 📂 Installation du modèle
Le modèle vous sera fourni dans un dossier séparé.  (td-struts-exercice2)
Il est impératif de l'installer via Maven avant de lancer le projet principal.  
Exécutez la commande suivante dans le dossier du modèle :

```bash
mvn  install
```

## 🏗️ Ajouter le modèle en dépendance
Dans le fichier `pom.xml` du projet principal, ajoutez la dépendance suivante :

```xml
<dependency>
    <groupId>com.exemple</groupId>
    <artifactId>nom-du-modele</artifactId>
    <version>1.0-SNAPSHOT</version>
</dependency>
```


### 🔗 Accéder à l'application
Ouvrir un navigateur et aller à :
```arduino
http://localhost:8080
```

## 📂 Structure du Projet
```bash
/src
  ├── main
  │   ├── java/com/exemple/app       # Code source Java
  │   ├── resources                  # Fichiers de configuration
  │   ├── webapp/WEB-INF/views        # Pages JSP
  ├── test                           # Tests unitaires
```

## 📝 Extrait de Code
Voici un aperçu du sélecteur de langue utilisé dans l'application :

```html
<select id="lang" name="request_locale" class="form-select mt-2" onchange="document.getElementById('langForm').submit();">
    <option value="fr" <s:if test='%{#parameters.request_locale == "fr"}'>selected</s:if>>🇫🇷 Français</option>
    <option value="en" <s:if test='%{#parameters.request_locale == "en"}'>selected</s:if>>🇬🇧 English</option>
    <option value="es" <s:if test='%{#parameters.request_locale == "es"}'>selected</s:if>>🇪🇸 Español</option>
    <option value="it" <s:if test='%{#parameters.request_locale == "it"}'>selected</s:if>>🇮🇹 Italiano</option>
    <option value="de" <s:if test='%{#parameters.request_locale == "de"}'>selected</s:if>>🇩🇪 Deutsch</option>
</select>
```

## 🚀 Améliorations Futures
- 🔹 Ajout d'un stockage des préférences en base de données
- 🔹 Support pour d'autres langues et formats de date
- 🔹 Optimisation des performances avec le cache navigateur

## 📌 Auteur
- **Nom** : TOUBAL
- **Email** : rabah.toubal.etudes@gmail.com



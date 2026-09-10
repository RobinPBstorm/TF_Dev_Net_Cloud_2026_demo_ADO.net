# ADO.NET

**ADO** pour **ActiveX Data Object**

ActiveX était une ancienne technologie de Microsoft permettant à des composants de communiquer avex l'application.

ADO.NET est la version moderne de ADO mais n'utilise plus ActiveX (le nom est juste gardé).

## Pour commencer

Dans le **Visual Studio Installer**:
- il faut activer le module *Charge de travail*/*stockage et traitement des données*
(en anglais: *workload/Data storage and processing*).

Une fois l'installation faite, vous avez accès à nouveau type de projet lorsque vous souhaitez en créer un noveau.

## Créer un *Projet de base de données SQL Server*/*SQL Server Databse Project*

Lors la création du projet, choississez *Projet de base de données SQL Server* (en anglais: *SQL Server Databse Project*).

Visual Studio vous demandera le nom du projet et éventuellement le nom de la solution.

## Importer une base de donnée existante

Si vous souhaitez importer la structure d'une base de données existante, vous pouvez faire ceci:

- **clique droit** sur votre **projet de base de donnée SQL** dans l'explorateur de solution.
- choisir **importer**, puis **Base de données ...**
- **établisser la connexion** à votre base de données
- **appuyer sur terminer** pour lancer le processus

## Créer la structure depuis Visual Studio

Dans le cas où vous créer la base de données depuis Visual Studio:

### Créer une table

- **clique droit** sur le projet/ dossier pour vos tables.
- choisisser **Ajouter**
- ensuite soit: 
    - **Tables...** et donner un nom à votre table.
    - **Nouvel élément...**, sélectionner **Table** et donner un nom à votre table.

Dans la fenêtre d'édition de votre table, il y a 2 parties:
- une première avec avec un tableau et des listes vides
- une seconde avec du SQL brut.

Libre à vous de ne faire que du SQL Brut.

Mais le tableau interactif vous permet aussi de rajouter des colonnes et les listes permettent de rajouter des **clés**, des **contraintes de vérification (check constraint)**, des **index**, des **clés étrangères** et des **déclencheurs (ou triggers)**.
La partie en bas à droite avec les **propriétés** vous permet de changer les paramètres comme la colonne concernée par exemple.

### Créer une vue / view

- **clique droit** sur le projet/ dossier pour vos vues.
- choisisser **Ajouter**
- ensuite soit: 
    - **Vues...** et donner un nom à votre vue.
    - **Nouvel élément...**, sélectionner **Vue** et donner un nom à votre vue.

Ici, l'élaboration de la vue se fait en **SQL Brut**.

### Création d'une procédure stockée

- **clique droit** sur le projet/ dossier pour vos procédures stockées.
- choisisser **Ajouter**
- ensuite soit: 
    - **Procédures stockées...** et donner un nom à votre procédure stockée.
    - **Nouvel élément...**, sélectionner **Procédure stockée** et donner un nom à votre procédure stockée.

Ici, l'édition de la procédure stockée se fait en **SQL Brut**.

### Créer un script post-déploiement

Une fois la structure créée, nous pouvons lancer des scripts (notamment pour remplir avec des données).

- **clique droit** sur le projet/ dossier pour vos vues.
- choisisser **Ajouter**
- **Script...**, Sélectionner **Script de post-déploiement** et donner un nom à votre script.

Le remplissage de ce script est en sql **brut**.

### Publier votre db

Une fois ce projet fini:

- **clique droit** sur le projet SQL
- choisissez **Publier...**
- soit:
    - **établir la connexion à votre base de donnée** via modifier...
        - et éventuellement sauver le profil de publication avec **eregistrer sous ...**
    - **charger le profil...**
- enfin **publier**

Regardez bien si le processus se passe bien, il donnera des logs pour savoir quelle partie a bloquée.
    
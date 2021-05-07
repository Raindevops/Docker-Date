# Rendu du TP docker

## Choix technique
- **Shell :** Utilisé en tant que script afin de générer et mettre un jour un fichier index.html
- **Ubuntu :** Distribution de linux qui permet de faire tourner le serveur. L'image connait par défaut le langage shell
- **Apache :** Solution de serveur web qui expose par défaut le dossier /var/www/html au port 80. Ce sera dans ce dossier que le fichier index.html

## Commandes docker
- **docker build -t datetimeapp . :** Commande docker permettant de construire l'image à partir du fichier **Dockerfile** qui se situe dans le dossier courant. L'option -t permet de préciser le nom de l'image créée, ici : *_datetimeapp_*


- **docker run --rm -d -it -p 80:80 datetimeapp :** Commande docker permettant de lancer un container à partir d'une image. Ici on reprend l'image créée précédement. Le container est lancé avec différents options :
    - **--rm :** supprime le container une fois que celui-ci est stoppé
    - **-d :** permet de lancer le container en mode détaché
    - **-it :** garde le terminal du container disponible pour l'execution de commande
    - **-p :** associe un port de sortie du container à un port d'entrée afin de le rendre accessible depuis l'exterieur

### Sortie standard des commandes
[Installation d'apache dans Ubuntu](./capture-d-ecran/install-apache.PNG) </br>
[Configure l'image docker à l'aide des instructions dans le Dockerfile](./capture-d-ecran/configure-docker-image.PNG)</br>
[Lance le container basé sur l'image datetimeapp](./capture-d-ecran/run-docker-image.PNG)</br>
[Vérifie si le script est bien entrain de tournér dans le container](./capture-d-ecran/verify-script-is-running.PNG)</br>
[Appel CURL pour récupéré le contenu du fichier index.html généré](./capture-d-ecran/curl-check.PNG)

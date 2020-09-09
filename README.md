# Staskme

Lien vers heroku : https://staskme.herokuapp.com/

Il s'agit d'un site internet dynamique qui permet de réserver des prestations de conciergerie de luxe mais à destination de la classe moyenne. L'interface te permet de t'inscrire rapidement et de choisir parmi les catégories suivantes :

- Courses livraison, lourd
- Courses livraison
- Réception de marchandises ou de personnes
- Ménage
- Préparation de dîner
- Garde d'enfants urgente

Le tarif est unique, à savoir 100 CHF (Francs suisses).

2. Parcours utilisateur

-Côté client : Lorsque qu'un utilisateur/client s’enregistre, il est redirigé vers un Dashboard qui lui permet de sélectionner quelle mission il souhaite voir effectuer. Par la suite il notifié si la mission proposée est acceptée et par quel collaborateur. L’utilisateur peut aussi créer un événement pour cela il doit remplir un formulaire chaque mission a une catégorie. L'utilisateur peut voir ses missions actives dans son profil.

-Côté collaborateur : lorsque qu'un utilisateur/collaborateur se logue, il est redirigé vers un Dashboard qui lui permet de sélectionner quelle mission il souhaite effectuer. S’il clique sur une mission et qu'il s'enregistre le créateur/client de la mission est notifié qu’un nouvel utilisateur/collaborateur s'est inscrit. L’utilisateur peut aussi créer un événement pour cela il doit remplir un formulaire chaque mission a une catégorie. L'utilisateur peut voir ses missions actives dans son profil.


3. Concrètement et techniquement

3.1. Base de données

Un prototype de BDD pour notre projet :

Un model User
Un model Mission
Un user peut s’inscrire à plusieurs missions et une mission peut avoir qu'un seul user. On passera par une table de jointure appelée Enrolment

3.2. Front :
-Une première page qui vous obligera à vous inscrire pour acceder à tout.
ie : Fb, Insta etc...
-Formulaire d'inscription +connexion + suppression de compte
-Des cards pour les profils mais aussi utilisable pour la mise en place de certain service qui seront proposer.
-Utilisation d'un Kit UI et/ou Bootstrap pour du responsive design.
-Ajout de slider ou d'animation en js.
-Le changement de leurs coordonnées sera autorisé y compris leur donne de connexion au site etc.


3.3. Back
Quelques services et outils qu’on va utiliser pour notre projet final :

Un service qui permet aux utilisateurs de s’inscrire et de s'identifier (Devise)
Un outil pour envoyer des mails aux utilisateurs quand il rejoigne le site ou qu’ils acceptent/proposent une mission (Action Mailer)
Des sessions administrateurs qu’on implémentera nous même avec namespaces pour que les personnes proposant une mission puissent la modifier ou la fermer
Des cookies qu’on utilisera pour stocker les identifiants des utilisateurs sur leurs navigateurs
Un système de paiement qui permettra de payer les honoraires (Stripe)


3.4. Mes besoins techniques
4 personnes coéquipiers. Deux plus à l'aise en Back et deux en Front.

4. La version minimaliste mais fonctionnelle qu'il faut avoir livré la première semaine
-Possibilité de se connecter en admin ou en collaborateur
-Possibilité de créer des missions


5. La version que l'on présentera aux jurys
Un site internet fonctionnel permettant de pouvoir s'inscrire, se connecter, payer et de proposer/accepter des missions.

6. Le mentor
Comme mentor, nous avons Julien Tribouillier(https://www.linkedin.com/in/julien-tribouillier), ancien de THP. C'est actuellement un Développeur Freelance Ruby on Rails Backend.



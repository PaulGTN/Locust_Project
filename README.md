# THP-Boutique

1. [Le travail sur Git](#git)
2. [Les règles à suivre](#rules)
3. [La lien du Trello](#trello)
4. [La lien Heroku](#app)
5. [Le diagramme des tables](#erb)
6. [Le barème THP](#grade)
5. [L'équipe](#team)

## Le travail sur Git <a name="git"></a> 

1. Déjà pour éviter la surprise d'hier soir, le travail s'effectuera sur trois branches principales :
 - La branche **master**, pour le travail final.
 - La branche **development** qui fera le tampon entre la branche test et la branche master et qui servira donc de sauvegarde principale en cas d'epic fail.
 - La branche **test**, ce sera la branche principale pour travailler, tout y sera testé avant d'être push sur le development et le master.

2. Evidemment il est **ABSOLUMENT INTERDIT de coder directement sur ces branches**. La marche à suivre sera toujours la même :
 - La personne crée sa branche correspondant à sa feature et la push directement pour que tout le monde puisse y accéder.
 - Une fois la travail effectué, il est vital de **tout tester en local** sur sa branche pour vérifier que tout fonctionne correctement. Ce n'est pas parce que l'index s'affiche et que l'on pense avoir bien suivi la marche à suivre que cela n'a pas causé de problème ailleurs.
 - Il est **INTERDIT de push sur la branche test si le travail n'est pas à 100% fonctionnel**. Il est bien plus simple de régler les problèmes sur une branche défectueuse qu'après un merge qui fout le bordel et où il est peu clair de savoir où se trouve le problème.
 - Une fois que la branche est parfaitement fonctionnelle, on peut merge sur TEST, on oublie pas de repush sa branche pour que tout le monde est le travail à jour si besoin.

3. Pour les manips :
 - Réferez-vous au repo que je vous ai fourni, l'essentiel des manips y est. (Au besoin: https://github.com/PaulGTN/Locust_helper)
 - En cas de conlit, on les résout puis on fait un git add et un git commit, pas besoin de plus.
 - Normalement c'est tout.

4. Pour plus de simplicité dans le gestion du repo, il serait bien qu'une seule personne s'occupe des merges sur DEVELOPMENT et MASTER. On a vu comment ça s'est passé, ça devient vite le bordel.

## Les règles à suivre <a name="rules"></a> 

1. **Il est vital de commenter tout ce que l'on fait au fur et à mesure.** Normalement ils doivent être ne anglais, mais si quelqu'un n'est pas à l'aise en anglais dîtes le tout de suite et on fera tous les comms en français. Ils sont absolument nécessaire pour :
 - Comprendre l'avancée du projet et qui a fait quoi.
 - Savoir ce qui a changé lors d'un merge et ainsi résoudre plus facilement les conflits.
 - Retrouver et résoudre un problème plus rapidement suite à un changement.
Je suis le spécialiste de l'absence de commentaires et j'ai ardemment regretté de ne pas l'avoir fait cette semaine. J'ai passé des heures à essayer de comprendre ce qui avait changé quand je me retrouvais avec des erreurs et des commentaire m'aurait fait gagné un temps précieux. Pas besoin d'écrire 20 lignes, indiquez juste :
 - Ce que fait le code.
 - La branche sur laquelle il a été écrit. 

2. **Ne restez pas bloqué plus de 30mn sur le même problème.** Demandez de l'aide sur le slack ou à Colin si vous buguez. Cela ne sert à rien de rester sur le même problème, de passer une journée sur un truc sans le résoudre et de finir frustré. Si vraiment vous ne trouvez pas d'aide le moment venu, passez à autre chose et revenez y plus tard, une fois que vous aurez obtenu de l'aide ou quand vous vous serez aéré l'esprit. **Et inspirez vous de vos anciens projets et du travail des autres**. On a quasiment tout vu dans ce que l'on va faire, il suffira bien souvent d'adaptez quelque chose que l'on a déjà codé.   

3. **Encore une fois il est vital de tout tester en local sur votre branche.** Et vraiment tout. Mettez-vous sur votre branche et lancer le server en local. A partir de là, testez toutes le fonctionnalités implantés dans l'application :
 - Les onglets
 - Les menus
 - Les formulaires d'inscription, connexion, etc..
 - Les liens et boutons
 - etc...
Bref tester tout ce qui est présent lors de votre travail. Sans le savoir vous avez peut-être affecté une méthode sur un autre controller ou que sais-je et il sera plus simple de résoudre cela au niveau de la branche et ainsi prévenir de gros problèmes. Oui c'est laborieux mais vital.

4. **Respectez scrupulesement la méthodologie de travail sur git.** Pas de push et de merge hasardeux, du travail à jour sur chaque branche et tout et tout. J'ai pas mal chibré de ce côté-là cette semaine en  oubliant de me mettre sur la bonne branche et ça devient vite hyper compliqué quand on rencontre un problème. 

5. **N'harcelez pas les membres de votre équipe.** Chacun à son travail à faire. Pas la peine de demander tout le temps où chacun en est, le trello est là pour ça. 

6. **Soyez réactif sur le Trello.** Mettez vous dans les cartes sur lesquelles vous bossez et mettez les à jour et déplacez les quand cela est nécessaire. On ne sera pas toujours ensemble et c'est le seul repère qu'on a pour savoir où en est le projet. Merci de bien et de bien complétez les cartes dès que vous avez fini quelque chose. C'est pas compliqué et ça aidera beaucoup. 

7. **Une seule personne gère le repo et l'heroku.** 

8. **Pas de nom en français(éliminatoire).**

## Le diagramme de tables <a name="erb"></a> 

On a pu voir cette semaine qu'il n'était pas si facile de se souvenir qui possède quoi comme attribut dans les différents élément de notre appli. Je vous ai donc mis une table qui montre les relations entre les différents élément et qui vous permettra de retrouver plus facilement ce que vous devez appeler comme attribut pour vos méthodes. 

## Le lien du Trello <a name="trello"></a> 

https://trello.com/b/hkruNiVc/locust

## Le lien Heroku <a name="app"></a> 

https://mon-petit-criquet.herokuapp.com/

## Le barème THP <a name="grade"></a> 

https://docs.google.com/document/d/1FCpDrL4c8lpUlRpDRycF2tE8JoSqzdAD8k7iH2jCRLE/edit

## L'équipe <a name="team"></a> 

- Tanguy / @Dillinger 
- Jacky / @jack 
- Djémil / @djémil 
- Steph / @Steph 
- Paul / @Paul 
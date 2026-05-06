# Pokémon Crystal Legacy - Traduction Française (W.I.P.)

### You can find the original README [HERE](og_README.md) with propers credits to the original developers !!!!

---

# Pokémon - L'héritage de Cristal
W.I.P d'une **tentative** de traduction de la Rom Hack Crystal Legacy réalisée par [TheSmithPlays](https://www.youtube.com/@TheSmithPlays).

Je suis tombé·e sur cette Rom Hack en cherchant une version reprenant le jeu de base tout en ajoutant quelques fonctionnalités permettant de rendre le jeu plus agréable et plus abouti. Cependant, elle n'est disponible qu'en anglais et bien que je n'ai pas de difficulté avec la langue, je préfère avoir les noms français des Pokémon. 

Sachant que cette Rom Hack se base sur la décompilation de [Pokémon Crystal](https://github.com/pret/pokecrystal) réalisée par Pret et qu'il existe un repo de la [décompilation française](https://github.com/qwilvove/pokecrystal-fr) du jeu par [Qwilvove](https://github.com/qwilvove) (un grand merci!), je me base sur cette dernière principalement permuter les dialogues et traduire au passage ceux ajoutés par TheSmithPlays.
## Traduction :
> [Lien vers l'index de traduction](trad/index.md)

Pour garder le projet propre et ordonné, je prends le temps de noter tous les dialogues que je traduis moi-même dans différents fichiers. Cela vous permet notamment de voir ce que j'ai choisi de changer et peut-être faire une demande de modification via une [issue](https://github.com/AuroraFloaroma/Pokemon_Crystal_Legacy_fr/issues/new) avec le label adéquat.

J'ai également pris la peine de modifier certains textes pour X ou Y raison, **TOUTES MES MODIFICATIONS Y SONT RÉFÉRENCÉES !** Mais bien entendu, **je ne cherche pas à m'écarter de la traduction française originale !**

Pour l'ajout du genre neutre, je me suis beaucoup basé sur le « Manuel d'Écriture Inclusive ». Vous pouvez le retrouver à [cette adresse](https://web.lmd.jussieu.fr/~crisi/egalite_diversite/Manuel-decriture.pdf).
Je sais pertinemment que ce n'est pas un choix qui plaira à tout le monde, mais c'est quelque chose que je trouve important. Malheureusement le français est dépourvu de genre neutre, c'est pourquoi je dois faire appel à l'écriture inclusive.
Le choix du point médian « · » est une façon pour moi de se détacher des parenthèses qui, selon moi, prennent une place visuelle plus importante, et également une manière de ne pas utiliser le simple point, cela aurait rendu les textes plus difficiles à lire.

### Éléments délibérément non traduits : 

> - `gfx/battle/weather/*_icon.png`

Je n'ai tout simplement pas réussi à traduire les mots dans l'espace restreint de 6x16 pixels en français (ex: "SUN" -> "SOLEIL"/"ZENITH") Si vous avez une proposition pour ces icônes, n'hésitez pas à faire une pull request!

> - Tout ce qui se rapporte à la fonctionnalité Mobile Adapter GB (plus d'informations [ici](https://www.serebii.net/crystal/mobilesystemgb.shtml)). 

Ce sont généralement des entrées qui n'ont pas été traduites en français car la fonctionnalité n'était disponible qu'au Japon. 
Aujourd'hui morte, je n'avais aucune raison de consacrer du temps à traduire ces éléments.

## À faire :

> [!warning] Attention
> Certains éléments peuvent être buggés !
> Je fais du mieux que je peux pour correctement adapter les affichages, mais il est fort possible que j'ai laissé passer des erreurs. 
> 
> Pour le moment, les problèmes identifiés sont dans le fichier [À faire](trad/À%20faire.md#Code) rubrique "Code".


> [Lien vers la to-do list](trad/À%20faire.md)

## Ressources :

Liste des différents logiciels que j'ai utilisé pour la traduction :

- Editeur de sauvegarde [en ligne](https://pkmds.app)
- Emulateurs avec debugger :
	- [Emulicious](https://emulicious.net)
	- [BGB](https://bgb.bircd.org)
- Tilemap Studio ([GitHub](https://github.com/Rangi42/tilemap-studio)) 
	- A servi à identifier les adresses des custom assets pour les charger correctement en jeu (charmap)
- [WinMerge](https://winmerge.org) 
	- Logiciel permettant de comparer des fichiers et merge les différences (incroyablement pratique pour merge les trads…)
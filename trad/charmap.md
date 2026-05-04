# Table des caractères français

Ci-dessous la liste des caractères que l'on retrouve dans le fichier `gfx/font/french_german.png`.

✅ = Utilisé dans le code
❌ = Non utilisé

| à   | è   | ù   | ß   | ç   |     |     |     |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ✅   | ✅   | ✅   | ❌   | ✅   |     |     |     |     |     |     |     |     |
| Ä   | Ö   | Ü   | ä   | ö   | ü   | ë   | ï   | â   | ô   | û   | ê   | î   |
| ❌   | ❌   | ❌   | ❌   | ❌   | ❌   | ❌   | ✅   | ✅   | ✅   | ✅   | ✅   | ✅   |
| c'  | d'  | j'  | l'  | m'  | n'  | p'  | s'  | 's  | t'  | u'  | y'  |     |
| ✅   | ✅   | ✅   | ✅   | ✅   | ✅   | ✅   | ✅   | ✅   | ✅   | ✅   | ✅   |     |

> [!NOTE] 
> Bien que `'s` puisse évoquer le possessif en anglais, il est en réalité utilisé dans les contractions telles que : "J'suis". 

Le problème pour changer le charmap de l'anglais au français est que [cRz-Shadows](https://github.com/cRz-Shadows) a retravaillé la manière dont le jeu charge les tiles, dans le but d'ajouter le "[Pokédex de Nayru](https://github.com/Nayru62/pokecrystal/tree/Nayrus-Pokedex-Vanilla-TypeGFX-BETA)" qui a besoin d'un tileset étendu (voir commit [32efdb2](https://github.com/cRz-Shadows/Pokemon_Crystal_Legacy/commit/32efdb2ad7acc457ae552278e28ffd3fb0a9d400)).

Par ailleurs, il a fourni le lien de l'article qui l'a aidé à procéder ([lien](https://github.com/pret/pokecrystal/wiki/Expand-tilesets-from-192-to-255-tiles#1-move-necessary-text-tiles-to-the-main-font-graphics)) (un grand merci à lui!).

<p align="center">
    <img src="assets/originals/font.png" alt="Description" width="400">
</p>

Ci-dessus, `font.png` utilisé dans le hack.

Ceci étant, il ne m'était pas possible de simplement remettre le layout français par dessus.
Le tableau présent en début de fichier m'a permis de retirer certains caractères inutiles pour commencer.


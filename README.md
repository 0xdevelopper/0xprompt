
# 0x Prompt

0x Prompt est une ressource pour FiveM qui permet de créer des invites de confirmation/annulation, ainsi que des annonces.


    
## Usage & Description

C'est une invite ou annonce autonome qui fonctionne avec n'importe quel framework (QB, ESX, ou votre propre framework). Pour utiliser cette ressource, il vous suffit de l'ajouter comme une ressource classique sur votre serveur, puis de la déclarer dans votre fichier server.cfg.

- ensure 0xprompt

Ensuite, je vais vous expliquer comment utiliser le système d'annonces intégré à cette ressource.

## Exports Annonces

```lua
exports["0xprompt"]:announce(true, "title", "text1", 5000)
```

- Cette exportation permet de créer une annonce côté client, visible uniquement par l'utilisateur. Elle est utile pour afficher des avertissements ou des annonces de mission destinées à une seule personne

```lua
exports["0xprompt"]:sannounce(true, "title", "text1", 5000)
```

- Cette exportation permet de créer une annonce qui interagit avec le serveur afin que tous les joueurs puissent la voir. À vous de bien l'utiliser.

## TriggerServerEvent pour les annonces
```lua
TriggerServerEvent("0x:announce", bool, title, text1, time)
```

Le "bool" peut être soit false, soit true. true signifie que l'annonce est affichée, tandis que false la supprime (en cas de bug, par exemple).

## Prompt confirmation/annulation

Usage : 
```lua
exports["0xprompt]:createPrompt({title = "", text1 = "", text2 = ""}, function(response)
     if response then 
        print("Le client à accepter")
     else
        print("Le client à refuser")
    end
end)
```

Vous devez ensuite adapter vos réponses, comme envoyer une notification ou effectuer une action de confirmation (envoi d'argent, etc.). 
Ce prompt peut être utile dans de nombreuses situations.

Je vous prie de ne pas changer le nom de la ressource par respect pour mon travail. 
En cas de problème ou d'incompréhension de la documentation, contactez-moi via DISCORD.
## Me contacter

Je vous pris de ne pas changer le nom de la resource pour le respect de mon travail.
En cas de problème, ou d'incompréhension de la documentation. Contactez moi via DISCORD.

# Discord : confessionsnocturnes

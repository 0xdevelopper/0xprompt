
# 0x Prompt

0x Prompt est une resource sur FiveM qui permet de créer des prompts de confirmation/annulation, mais également de créer des annonces.


    
## Usage & Description

C'est un prompt/annonce qui fonctionne en standalone, pour n'importe quel Framework (QB, ESX, votre propre FW). Pour l'utilisation de cette resource, vous devez simplement la mettre comme une simple resource dans votre serveur. Par la suite, vous la déclaré dans votre server.cfg.

- ensure 0xprompt

Par la suite, pour l'utilisation, je vais vous expliquer pour faire des Annonces, car il y'a également un système d'annonce.




## Exports Annonces

```lua
exports["0xprompt"]:announce(true, "title", "text1", 5000)
```

- Cette export va service à créer une annonce côté client. Que seul l'utilisateur peu voir lui même. Utile pour faire des avertissements, ou des annonces de mission pour une seule personne.

```lua
exports["0xprompt"]:sannounce(true, "title", "text1", 5000)
```

- Cette export permet de créer une annonce qui va intéragir avec le côté server afin que tous les joueurs du serveur puisse la voir. À vous de bien savoir l'utiliser.

## TriggerServerEvent pour les annonces
```lua
TriggerServerEvent("0x:announce", bool, title, text1, time)
```

Le "bool" c'est soit false, soit true. true = On affiche l'annonce. false = On enlève l'annonce. (En cas de bug.)

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

Vous devez après adatper vos réponses, comme envoyer une notification, faire une action de confirmations (Envoie d'argent ect). Ce prompt peut-être utile dans pleins de situation.

Je vous pris de ne pas changer le nom de la resource pour le respect de mon travail.
En cas de problème, ou d'incompréhension de la documentation. Contactez moi via DISCORD.
## Me contacter

Je vous pris de ne pas changer le nom de la resource pour le respect de mon travail.
En cas de problème, ou d'incompréhension de la documentation. Contactez moi via DISCORD.

# Discord : confessionsnocturnes

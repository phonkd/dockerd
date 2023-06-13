****
*Schau dir das gb-frontend Image nochmal genauer an. Fokusiere dich dabei auf Entrypoint und Cmd.*

1. Was ist generell der Unterschied zwischen den beiden Operationen. Wann eignet sich welche?
>[!answer]
>Der Entrypoint is flexibler und besser geeignet wenn man dem Command einnen Parameter mitgeben will.
>Mit einem `CMD` nach dem Entrypoint kann eine Default value gesetzt werden welche nur eingesetzt wird wenn beim starten des Containers kein anderer Parameter mitgegeben wird.
2. Starte einen Container und überschreibe den Befehl welcher dabei ausgeführt wird. Welche Möglichkeiten gibt es hier und was stellst du fest?  
>[!answer]
>`docker run --entrypoint echo c62 "hallo"`
>Man könnte auch nur hallo schreiben, dann würde der im image gesetzte entrypoint + hallo ausgeführt werden.
>Alternativ kann man in seinem eigenen Image den `Entrypoint` sowie auch `CMD` setzten.
      
3. Erstelle ein neues Image, z.b basierend auf Debian:latest. Adde zunächst einfach eine ENTRYPOINT Instruction (_echo eignet sich für die Visualisierung der Unterschiede_)  
3.1. Was wenn du den Befehl nun versuchst zu überschreiben beim Starten eines Containers?

>[!answer]
>`docker run imageid thisgetsechoed`
>**Wichtig:**
>`ENTRYPOINT [""]` so angeben     

3.2 Was geschieht, wenn du ENTRYPOINT und CMD setzt?
>[!answer]
>Wenn kein parameter beim `docker run` befehl mitgegeben wird, wird der werd von der `CMD` instruction genommen.

3.3 Setze jetzt mal nur CMD. Was stellst du fest?
>[!answer]
>Der befehl wird beim Start des containers ausgeführt.
4. Betrachtest du die verwendete Option beim gb-frontend als sinnvoll? Warum/Warum nicht?


   >[!answer]
   >Ich finde die verwendete Variante Sinnvoll `CMD`, da der Container mit anderen Startoptionen wohl nicht funktionieren würde.
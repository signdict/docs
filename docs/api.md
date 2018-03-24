## Allgemeines

Wir bieten eine [GraphQL](https://www.graphql.com/) basierende
API für SignDict an. Du kannst diese [hier](https://signdict.org/graphql-api/graphiql)
ausprobieren.

Ein Beispiel für eine Abfrage die alle Einträge mit dem Wort "Zug" findet:

```graphql
{
  search(word: "Zug") {
    id
    text
    type
    currentVideo {
      videoUrl
      license
      copyright
      originalHref
      user {
        name
      }
    }
  }
}
```

Wenn du diese API benutzt, respektiere bitte die Lizenz unter der diese
Videos stehen und zeige diese neben den Videos an. Zum Beispiel mit dem
folgenden Link:

```html
<a href='#{video.originalHref}'>#{video.copyright}</a> under 
<a href='https://creativecommons.org/licenses/#{video.license}'>#{video.license}</a>
```
Bitte kopiere die Videos auch auf ein eigenes CDN, direkt die Links von unserem
CDN benutzen verursacht hohe kosten bei uns. Ein Link zurück zu SignDict wäre
auch großartig.

# Einträge

Einträge enthalten Metadaten wie `text`und `type` und besitzen mindestens ein
Video. Das Video mit den meisten Stimmen findest du unter `currentVideos`. Alle
Videos findest du unter `videos`.

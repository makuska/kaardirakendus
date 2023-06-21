# Kaardirakendus- Eesti avalike tegelaste sünnigeograafia
![355542327_992423468565629_4488291471339597796_n](https://github.com/makuska/kaardirakendus/assets/114921877/4f23808f-6039-49a0-b158-2e430862c58b)

![355583760_978971566562630_2721446250448218827_n](https://github.com/makuska/kaardirakendus/assets/114921877/7d0d7a94-12a0-45dd-81ee-ddcd434df7dd)

## Eesmärk ja lühikirjeldus
Rakenduseks on Eesti sünnigeograafia avalike isikute ajalooline kaart. 
Rakendus peab olema kättesaadav igal ajal, ning pakkuma mugavat kasutajakogemust. 
Kuna rakenduse enda eesmärk on pakkuda võimalust inimeste teadmiste arendamiseks ja Eesti kultuuriruumi rikastamiseks, peab disain olema meeldejääv. 
Õpilastele pakub võimalust paremini ja efektiivsemalt õppida.

## Meist
Oleme informaatika esmakursuse tudengid Tallinna Ülikoolist. See projekt, "Eesti avalike tegelaste sünnigeograafia kaart", on koostatud kooli poolt pakutud praktika raames. 
Eesmärgiks on rikastada Eesti kultuuri ja hoida elus mälestusi meie riigi avalike elu tegelastest. 
Kõik, kes kaardil on, on võetud toimetaja Richard Kleisi poolt koostatud teosest "Eesti avalikud tegelased". 
Meile esitas tellimuse Kädi Riismaa, kes on Tallinna Ülikoolis digitehnoloogia instituudis teabehalduse lektor ning ka teadatuntud dokumendihalduse spetsialist. 
Suured tänuavaldused meie õppejõududele: Jaagup Kippar, Andrus Rinde, Tanel Toova ning Inga Petuhhov.

## Kasutatud tehnoloogiad ja nende funktsioonid
### Frontend
* JavaScripti Leaflet Library (1.9.4). 
* HTML, CSS.
  
### Backend 
* Springi “ökosüsteem”; Spring Boot (3.0.6); Spring Data JPA; JDBC Template; Spring Security (6.1).
* Python 3, andmete korrastamiseks ja koordinaatide leidmiseks (läbi API). 
* Andmebaas - Postgres (15.2)
  * Andmebaas oli ka konteineris, kasutades Dockerit, kuid on ka võimalik andmebaasi hoiustada lokaalsel masinak 
* Intellij Ultimate, Sublime Text olid peamised IDEd. 
* Postman - API otspunktide testimine jne.
* Git ja Github koodi üleslaadimiseks repositooriumisse.

Projekti autorid: Sander Nõlvak (juht), Susanna Veski, Kristiin Marleen Suik, Roland Silt ja Jan Henrik Levertand

## Projekti seadistamine lokaalsele masinale
1) Tuleb teha kloon Githubi repositooriumist (`git clone https://github.com/makuska/kaardirakendus.git`), kuna default branch on 'development', siis ei pea branchi muutma.
2) Kasutusel on Java 17, seega tuleb veenda, et arvutil oleks installeeritud vähamelt Java 15 (rakendus toimib ka Java 15 peal).
3) Tuleb luua Postgres andmebaas (võib ka kasutada muud relatsioonilist andmebaasi, nagu MySQL, kuid siis tuleb vahetada `application.yml` failis vastavad konfiguratsioonid). Kuna `application.yml` on `.gitignore` failis, siis tuleb see ise luua (sobib ka `application.properties` fail).
  3.1) tuleb luua andmebaas kasutades sql skripti (`avalikud_koos_koordinaatidega.sql`).
  3.2) tuleb luua schema nimega `synnigeograafia`.
  3.2) Tuleb importida csv fail (`avalikud_koos_koordinaatidega(uus).csv`), antud fail on csv formaadis, ning populaarsemad IDEd pakuvad võimekust seda lisada graafilise kasutajaliidese abil. 
```yml
spring:
  datasource:
    url: jdbc:postgresql://localhost:5432/andmebaas
    username: 
    password: 
  jpa:
    hibernate:
      ddl-auto: update
    properties:
      hibernate:
        dialect: org.hibernate.dialect.PostgreSQLDialect
        format_sql: true
    show-sql: true
  main:
    web-application-type: servlet
#  mail:
#    host: smtp.gmail.com
#    port: 587
#    username: 
#    password: 
#    properties:
#      mail:
#        smtp:
#          auth: true
#          starttls:
#            enable: true
#            required: true
  mail:
    host: 
    port: 
    username: 
    password: 

  security:
    user:
      name: admin
      password: 
``` 
4) Peab arvestama, et Java ranedused on mahukad, arvutil võiks olla piisavalt kettaruumi kõige jooksutamiseks (0.5-1 GB kettaruumi). UNIX laadsetel arvutitel on üldjuhul Python olemas, kuid praeguseid andmeid pole vaja enam mmuuta.

Viide litsentsile https://github.com/makuska/kaardirakendus/blob/development/LICENSE

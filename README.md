# Kaardirakendus - Eesti avalike tegelaste sünnigeograafia
![355542327_992423468565629_4488291471339597796_n](https://github.com/makuska/kaardirakendus/assets/114921877/4f23808f-6039-49a0-b158-2e430862c58b)

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
* Erinevaid teised teekid, nagu: mapstruct, lombok.
* Python 3, andmete korrastamiseks ja koordinaatide leidmiseks (läbi API). 
* Andmebaas - Postgres (15.2)
  * Andmebaas oli ka konteineris, kasutades Dockerit, kuid on ka võimalik andmebaasi hoiustada lokaalsel masinak 
* IntelliJ Ultimate, Sublime Text olid peamised IDEd. 
* Postman - API otspunktide testimine jne.
* Git ja Github koodi üleslaadimiseks repositooriumisse ja Workflow kontrollimine.

Projekti autorid: Sander Nõlvak (juht), Susanna Veski, Kristiin Marleen Suik, Roland Silt ja Jan Henrik Levertand

## Projekti seadistamine lokaalsele masinale
1) Arvutile tuleb alla laadida Git (kuni 250MB). [Giti allalaadimine](https://git-scm.com/downloads).
2) Kasutades UNIX/LINUX laadset arvutit, tuleb avada Terminal. Seejärel suunduda sobivasse asukohta failisüsteemis (Näiteks Desktop või Downloads). Asukohta saab muuta käsuga `cd`. Sama kehtib ka Windowsi arvutitel, kus tuleks avada `cmd.exe`. Näiteks kui hetkene asukoht on kasutaja kodukataloog (`~/Kasutaja`) siis tuleks kirjuatada käsk `cd Desktop` Terminali. Tuleb teha kloon Githubi repositooriumist (`git clone https://github.com/makuska/kaardirakendus.git`), kuna default branch on 'development', siis ei pea branchi muutma. 
3) Kasutusel on Java 17, seega tuleb veenda, et arvutil oleks installeeritud vähamelt Java 15 (rakendus toimib ka Java 15 peal).
4) Kasutasime ise `IntelliJ Ultimate IDE` (tekstiredaktor). Soovitame kasutada `IntelliJ Community Edition`, mis on tasuta versioon. Rakendus on üsna mahukas (kuni 4GB sõltuvalt lisadest). Samuti võib ka kasutada Terminali (`nano`, `vi/vim`) või Windowsil Notepadi
5) Tuleb luua Postgres andmebaas (võib ka kasutada muud relatsioonilist andmebaasi, nagu MySQL, kuid siis tuleb vahetada `application.yml` failis vastavad konfiguratsioonid). Kuna `application.yml` on `.gitignore` failis, siis tuleb see ise luua (sobib ka `application.properties` fail).
    * tuleb luua andmebaas kasutades sql skripti (`avalikud_koos_koordinaatidega.sql`). Andmebaasi nimi peaks olema (`avalikud_koos_koordinaatidega`) või vastasel juhul tuleb teha vastavad muutused `PersonJDBCDataAccessService` failis (backend).
    * tuleb luua schema nimega `synnigeograafia`.
    * Tuleb importida csv fail (`avalikud_koos_koordinaatidega(uus).csv`), antud fail on csv formaadis, ning populaarsemad IDEd pakuvad võimekust seda lisada graafilise kasutajaliidese abil. Näide: [`CSV` failide importimine IntelliJ Ultimates](https://www.jetbrains.com/help/idea/import-data.html)
   
`application.yml` fail (tuleb luua `backend/src/resources/` kausta)
```yml
#application.yml
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
6) Tuleb käivitada backend rakendus/server. [Õpetus](https://www.geeksforgeeks.org/how-to-run-spring-boot-application/). Seejärel tuleb avada `index.html` fail (`frontend/index.html`).
7) Peab arvestama, et Java rakendused on mahukad, arvutil võiks olla piisavalt kettaruumi kõige jooksutamiseks (0.5-1 GB kettaruumi). UNIX laadsetel arvutitel on üldjuhul Python olemas (kui on soovi ise kirutada skripte, soovides andmeid muuta), kuid praeguseid andmeid pole vaja enam mmuuta.
8) Kui kõik oli edukas, siit peaksid kõik isikud kaardil olema kuvatud ja teised kaardi funktsionaalsused toimima. Kui tekib probleeme rakenduse avamisel/käivitamisel siis võib [liikuda siia](https://github.com/makuska/kaardirakendus/issues) ja teavitada arendajaid probleemidest!

Viide litsentsile https://github.com/makuska/kaardirakendus/blob/development/LICENSE

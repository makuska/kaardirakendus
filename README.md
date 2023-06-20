Kaardirakendus- Eesti avalike tegelaste sünnigeograafia Image 20-06-2023 at 11.20.jpg

Eesmärk ja lühikirjeldus Rakenduseks on Eesti sünnigeograafia avalike isikute ajalooline kaart. 
Rakendus peab olema kättesaadav igal ajal, ning pakkuma mugavat kasutajakogemust. 
Kuna rakenduse enda eesmärk on pakkuda võimalust inimeste teadmiste arendamiseks ja Eesti kultuuriruumi rikastamiseks, peab disain olema meeldejääv. 
Õpilastele pakub võimalust paremini ja efektiivsemalt õppida.

Oleme informaatika esmakursuse tudengid Tallinna Ülikoolist. See projekt, "Eesti avalike tegelaste sünnigeograafia kaart", on koostatud kooli poolt pakutud praktika raames. 
Eesmärgiks on rikastada Eesti kultuuri ja hoida elus mälestusi meie riigi avalike elu tegelastest. 
Kõik, kes kaardil on, on võetud toimetaja Richard Kleisi poolt koostatud raamatust "Eesti avalikud tegelased". 
Meile esitas tellimuse Kädi Riismaa, kes on Tallinna Ülikoolis digitehnoloogia instituudis teabehalduse lektor ning ka teadatuntud dokumendihalduse spetsialist. 
Suured tänuavaldused meie õppejõududele: Jaagup Kippar, Andrus Rinde ning Inga Petuhhov.

Kasutatud tehnoloogiad ja nende funktsioonid Frontend - JavaScripti Leaflet Library(võimaldas meil lisada kaardi. 
Erinevad lisad veel peale kaardi- nt markerid; otsinguriba; navigatsiooniriba); SVG ikoonid, need on navigatsiooniribal olevad ikoonid; CSS, et stiilida erinevaid frontend elemente meie lehel, nt värve. 
HTML, lehe baasiks, võimaldas meil luua elemente ja nende elementidega vajalikku tööd teha. 
Backend - Springi “ökosüsteem”; Spring Boot; Spring Data JPA; JDBC Template; Spring Security; Python, et korrastada ja filtreerida andmeid. 
Andmebaas - Postgres, hetkel “konteineris” kasutades Dockerit Intellij Ultimate - kasutame seda ka koos koodi kirjutamiseks, ning üleüldiselt väga mugav IDE. 
Postman - API otspunktide testimine jne. Git ja Github

Projekti autorid Sander Nõlvak (juht) Susanna Veski Kristiin Marleen Suik Roland Silt Jan Henrik Levertand

Paigaldus- ja arenduskeskkonna ülesseadmise juhised Kasutaja peab githubist tegema pull requesti kasutajalt "makuska", repositooriumist "development", et see endale tervikuna arvutisse saada. 
Tuleks ka jälgida seda, et oleks kasutusel õige Java versioon, ehk versioon 17. Kui kood on tervikuna (nii frontend kui ka backend) arvutis, siis tuleb kas ise tekitada või võtta meie andmebaas ning paigaldada see enda kaarirakendusele. 
Seal andmebaasis on kõik isikud koos koordinaatide ja nende kohta käiva infoga. Seejärel, et kaardirakendus lõplikult tööle hakkaks, tuleb panna "backend application" käima, kuna backend teeb vajalike toimetusi, et see kogu kaardirakendus üldse töötaks. 
Oletame, et kasutaja kasutab IntelliJ keskkonda nagu meie, siis seda saab teha lihtsasti, vajutades paremal üleval olevat rohelist "play" nupu taolist nupukest. Kui backend läheb ilma vigadeta käima, siis tuleb avada "index.html" fail, ehk see tegelik veebileht. 
Seejärel peaks saama kõike seal teha, ilma, et ilmuks mingi viga.

Viide litsentsile https://github.com/makuska/kaardirakendus/blob/development/LICENSE

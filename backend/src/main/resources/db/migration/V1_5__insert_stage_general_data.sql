DO $$
    DECLARE width_id stage_data_type.id%TYPE; -- width
    DECLARE depth_id stage_data_type.id%TYPE; -- depth
    DECLARE step_amount_id stage_data_type.id%TYPE; -- step_amount
    DECLARE built_when_id stage_data_type.id%TYPE; -- built_when
    DECLARE built_by_id stage_data_type.id%TYPE; -- built_by
    DECLARE history_id stage_data_type.id%TYPE; -- history
    DECLARE weather_id stage_data_type.id%TYPE; -- weather
    DECLARE wind_id stage_data_type.id%TYPE; -- wind m/s
    DECLARE measure_date_id stage_data_type.id%TYPE; -- date of measuring
    DECLARE selected_stage_id INTEGER;

    BEGIN
        -- inserting categories
        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Laius', false, NOW(), NOW())
        RETURNING id INTO width_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Sügavus', false, NOW(), NOW())
        RETURNING id INTO depth_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Astmete arv', false, NOW(), NOW())
        RETURNING id INTO step_amount_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Kuna ehitati', false, NOW(), NOW())
        RETURNING id INTO built_when_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Kes ehitas', false, NOW(), NOW())
        RETURNING id INTO built_by_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Ajalugu', false, NOW(), NOW())
        RETURNING id INTO history_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Ilm', false, NOW(), NOW())
        RETURNING id INTO weather_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Tuul', false, NOW(), NOW())
        RETURNING id INTO wind_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Mõõtmise kuupäev', false, NOW(), NOW())
        RETURNING id INTO measure_date_id;

        -- selecting stage for data insertion -> inserting already existing data
        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kurepalu laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '12m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'Esmane kasutus 1935 (avaandmed.ee)', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Renoveeritud laulukaare projekteerinud tõenäoliselt Aivar Kõivistik', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kurepalu laululava ja vaba aja park on rajatis Kastre vallas Tartu maakonnas. Laululava katastriüksuse sihtotstarve on üldkasutatav maa, mida haldab Kastre vald. Kurepalu küla südames asuv laululava on kohalike sündmuste (jaanipäevad, rahvakalendri üritused, orienteerumine) kui ka kontsertide jaoks suurepärane paik. Viimati toimunud suur sündmus kooride seisukohalt oli Lõuna-Eesti meestelaulupäev 21. mail 2022. https://www.ohtuleht.ee/840002/uhe-mehe-missioon-vabariigi-aastapaevaks-10-laululava', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '11 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Aakre laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '12m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2017', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Aivar Kõivistik', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Aakre laululava on rajatis Elva vallas Tartu maakonnas. Laululava katastriüksuse sihtotstarve on ühiskondlike ehitiste maa, mida haldab Aakre Rahvamaja. Tänaseks kohalike sündmuste ja kontsertide süda sai alguse kingitusena Eesti Vabariigi sajandaks sünnipäevaks.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '8 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Helme laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '19.4m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Helme laululava asub Valga maakonnas ja on Tõrva vallavalitsuse omand. Ajalooline informatsioon puudub, kuna on ehitatud ENSV ajal. Sellest ajast ei ole säilinud kirjaliku ega suulist informatsiooni.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '8 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Pikasilla vabaõhulava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '8m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.2m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Pikasilla laululava asub Valga maakonnas ja on Tõrva vallavalitsuse omand. Ajalooline informatsioon puudub, kuna on ehitatud ENSV ajal. Sellest ajast ei ole säilinud kirjaliku ega suulist informatsiooni.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '7 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kasepää laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '20m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '5', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'kaar valmis 2013, 2010 laululava betoonkarkass', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'AS Cobra Grupp', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Arhitekt: Andres Kadarik. Esimene pidu peeti Tiheda külaväljakul 2009. aastal. Toimus Peipsi-äärsete maakondade laulu- ja tantsupidu. Platsile olid paigutatud ainult pingid, esinejatele oli seatud ajutine lava. Laululava betoonkarkass valmis 2010. aastal. 2012. aastal valmis terrassi laudis ja piirded ning lavale paigaldati elektrikilp. Tänu sellele pole vaja ürituste ajal kasutatava tehnika elektriga varustamise jaoks iga kord ajutisi kaableid vedada. 2013. aastal paigaldati puidust kaar. Laululava kaar meenutab kummuli paati. Info pärineb: https://www.vooremaa.ee/tiheda-laululava-saab-kaare/ ', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2.5 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '26.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Sadala kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7.3m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2018', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris FIE Aivar Kõivistik Tartumaalt, ehitajaks on Mauleman OÜ Põlvamaalt.', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Mitmed suved on laulu- ja tantsupidude korraldamiseks sobitatud Sadala rahvamaja kõrvale plats ning vajaduse korral püstitatud laulmisvõimaluse tekitamiseks mõned astmed. Kõlakoja rajamisega soovis kogukond hoida vanemate sõjaeelset traditsiooni, mil ehitati Eestis kõlakodasid, et oleks laulmiseks, pillimänguks ja tantsimiseks oma koht. Sadala Külade Seltsi juhatuse esimees Pille Tutt ütles, et laululava ja lipuväljak rajati nii piirkonna, Jõgeva valla ja Jõgevamaa ning ka üle-eestiliste sündmuste mitmekülgsemaks ja atraktiivsemaks korraldamiseks erinevatel aastaaegadel. „Sadalas said näiteks alguse EV 100 pidustused Jõgevamaal.” Laululava ja lipuväljaku ehitamine on Sadala Külade Seltsi kingitus oma kogukonnale ja Eesti Vabariigi 100. aastapäevaks. Oma kujult meenutab laululava pooleks lõigatud kirikukella. Laululava vorm moodustub liimpuidust kaartest ja neid katvast „koorikust”. Akustiliselt on tähtis tagaseina olemasolu. Hoone tagaosas on ruum esinejatele. Kaarjad asted laulava ees loovad laulukooridele omase asetuse. Lava tagumises osas on trepid ja uks esinejate jaoks. Info pärineb: https://kylauudis.ee/2018/07/12/haldusreformijargsesse-jogeva-valda-rajas-esimese-kolakoja-sadala-kulade-selts/ ', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '1.7 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '26.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Viljandi laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '41m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '17.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '13', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2013', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Kadarik Tüür Architects, Mihkel Tüür, Ott Kadarik; kaasautor Tanel Trepp. Konstruktsioonide insenertehniline projekt valmis firmas Printsiip OÜ. Laululava tellis Viljandi Linnavalitsus.', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Viljandi laululava on maakonna lavadest suurim. Seal korraldatavast Viljandimaa laulu- ja tantsupeost võttis 2022. aastal osa üle 2000 esineja. Samuti toimub seal ka erivajadusega inimeste laulu- ja tantsupidu. Tänu suurele lavaesisele platsile mahuvad sinna lisaks lauljatele ka tantsijad, sealhulgas ratastoolis tantsijad. Lisaks paljudele erinevatele kontsertidele on laululaval toimunud ka Eesti Segakooride Liidu laulupäev (2018). Ala on kasutatud Viljandi Pärimusmuusika festivali ajal, mil seal on paiknenud üks festivali lavadest. Lauluväljakul on ka ajalooliselt oluline väärtus - Eesti taasiseseisvumise ajal peeti seal Rahvarinde meeleavaldust, mille mälestuseks on väljaku kõrvale püstitatud mälestuskivi.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5.5 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '27.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Mustla laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '17m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2+3', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris Avo Saar', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Mustla laululaval on läbi aastate korraldatud mitmeid valla üritusi, nagu lastekaitsepäeva pidustusi ja jaanipidusid. Samuti on seal toimunud mitmeid tuntud artistide suvekontserte. Hiljaaegu toimunud üritustest suurim oli 2022. aasta kevadel laululaval korraldatud Viljandi valla lasteaedade ühine laulu- ja tantsupidu.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6.4 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '27.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Ahja laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3+4', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2009', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Aivar Kõivistik (arhitekt), OÜ Mauleman', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Võistles Eesti Parim Puitehitis 2009 auhindadele. Läheduses asub ka keskajast pärinev Ahja mõis.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vihmane', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '31.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Intsikurmu laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '23m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '17', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'Algselt 1969, kuid uuesti 2002', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Vadim Tšentropov (arhitekt), Põlva KEK', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitusaasta: 1969 (kuid põles 2002 volbriööl maha, misjärel see taastati esialgse projekti järgi). Mõõdud: 50m pikk ja 12m kõrge. Arhitekt: Vadim Tšentropov. Ehitaja: Põlva KEK. Ajalugu: Intsikurmus on aastakümnete jooksul korraldatud üle-eestilisi nais- ja meeskooride laulupäevi, Lõuna-Eesti laulupidusid ning suurejoonelisi rahvaüritusi. Koore on Intsikurmus dirigeerinud maestro Gustav Ernesaks, Kuno Areng, Alo ja Richard Ritsing, Jüri Variste, Arvo Ratassepp jpt. Siin on esinenud Eesti kõik popansamblid - Rock Hotelist ja Vitamiinist Fixi ning Vennaskonnani. Intsikurmus peeti legendaarse EÜE (Eesti Üliõpilaste Ehitusmalev?) kokkutulekuid (viide). Eestimaa esimesed laulupühad peeti puhkaeestis.ee andmetel 1855 ning 1857 just sellel laululaval. Lava mahutab ligikaudu 3500 lauljat.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vihmane', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '3 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '31.03.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kehtna laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2 (laval on nö 3. astmel)', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'okt.2018', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, '3 Seltsimeest OÜ', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kehtna laululava avati 2018. aasta oktoobris. Projektijuht oli Anne Ummalas, kes on Kehtna Kultuuriselts MTÜ liige. Ehituse tellis MTÜ Kehtna Kultuuriselts. Ehitas ettevõte nimega 3 Seltsimeest OÜ. Laval peatus 2019.aasta juubelilaulupeo tule rongkäik. Sel aastal on sel laval toimumas Raplamaa 35. Memme-Taadi suvepidu ja Kehtna valla jaanituli. Lava juures toimuvad ka erinevad laadad.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6.7 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '02.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Hageri laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2005', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'OÜ Alnus', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Lava rekonstrueerimise eest seisis Hageri Haridusselts MTÜ, eestvedajaks Virve Õunapuu. Lava kuulub Hageri rahvamaja juurde, mis on Kohila valla ainsaks rahvamajaks. Rahvamajas ja välilaululaval toimuvad Hageri kihelkonnapäevad (iga 5 a tagant), laste laulu- ja tantsupäevad, külapäevad, valla jaanituled ja vabaõhukontserdid. Lava lähistel on ka suur külakiik. Suurürituste ajal võib pargis viibijate arv ulatuda mitme tuhande osalejani.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6.4 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '02.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Paide laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '25m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '9.3m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '11', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1991', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Raul Vaiksoo', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Projekteeriti aastal 1989, valmis aastal 1991. 2008 viidi läbi renoveerimine. Laululava on läbi aastate kasutatud laulu- ja tantsupidude jaoks ning teiste ürituste läbiviimiseks.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '18 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Türi laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '26.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10.2m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '6+2', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1976', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris T.Zvorovski', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Nimetatud ka Türi estraadilavaks. Projekteeritud 2000 pealtvaatajale. Kohe laululava taga asub Türi tehisjärv. Aastal 2006 rekonstrueeriti Türi laululava AS KEK-i Ehitus poolt, mille käigus ehitati ümber lava ja lavatagused ruumid ning rajati seni puudunud vee- ja kanalisatsioonisüsteem. Paigaldati liimpuidust katusekonstruktsioonid. Laululaval korraldatakse vabaõhuetendusi ja kontserte', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '19 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kadrina laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '15.833', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6.043', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1979', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Laululava projekteeris Matti Bollverk', false, NOW(), NOW()),
            (selected_stage_id, history_id, '11. augustil 1979. aastal avati Viru mängude raames Kadrina laululava. Laululava ehitamisele andis tõuke Kadrina EPT läbiviidud VI Viru mängude finaalvõistlus, kus oli kavas kultuurilise isetegevuse võistlus. 1979. aasta mängude isetegevuskonkurss ja mängude lõputseremoonia toimusidki värskelt valminud laululaval. ', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Ebavere kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9.192m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7.139m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '4', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'Valmis 2010. aasta suvel', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Arhitekt Aare Uukado', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ebavere tervisespordikeskusesse rajati rahvaspordiklubi projektiga saadud toetusega puidust ja paekivist kõlakoda ja tribüün, mis said valmis 2010. a jaanipäevaks. Kõlakoja rajamise mõtte algatajaks oli MTÜ Väike-Maarja Valla Rahvaspordiklubi. Raha saadi PRIA-lt külade uuendamise ja arendamise investeeringutoetusena.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '4.7 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Võru-Kubija laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '78m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '30m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '22', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1999', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Fredi-Armand Tromps', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Võru laululava kerkis aastal 1950 kuid ebaõnnestunud akustika ja katuseta oleku pärast rekonstrueeriti see aastail 1995-1999. Nüüdseks on Võru-Kubija laululava oma kauni ning kergesti ligipääsetava asukoha tõttu Võrukatele üks tähtsaimatest kohtadest.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5.2 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '19.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Harjumäe laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '15m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2011', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Pasimare ehitus', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Harjumäe laululava Võrumaal on Varese küla sündmuste südames. Seal toimub jaanipäev kui ka palju muid väiksemaid üritusi, sünnipäevadest koorilauluni. Asukoht on idülliline: lava tagant jookseb läbi jõgi ning istumiskohad asuvad naturaalse künka nõlval, lava ümbritseb tihe männimets.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5.2 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '19.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Hellamaa laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '12m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1972 (2008)', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Taavi Stomma', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kõlakoda ja tantsupõrand ehitati 1972. a. V.I. Lenini nimelise kolhoosi poolt traditsioonilisele kokkusaamise kohale jaanipeoks esimest korda ja 2008.a. külaselts Hellatempa eestvedamisel teist korda. Mõlemal korral oli arhitekt Taavi Stomma, ehitajad tema alluvad töölised. Tantsupõrand on 10x12 m, kõlakoda tehti teisel korral pisut suurem. Samal platsil on külakiik, nüüd juba neljas ootab uuendamist. Lisaks taidlejate kontsertidele on toimunud Väikesaarte laulupidu, Grillfestid, Tarvitatud Massinate Kokkutulek, telkimisi, piknikke,suguvõsade kokkutulekuid, külapidusid ja neljad pulmad.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '23.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kärdla laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '18m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '13m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1936', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Alar Kotli?', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitati ta valmis 1936.a. Hiiumaa III laulupeoks. Kuni 1977.a. ainus pidude toimumise koht. Hiljem lisandus Kärdla rand tantsupidude kohana, kuid laulupeod ikka laululaval. Seega pea 55 aastat kasutati järjest pidude tegemiseks. Siis läksid peod mööda saart rändama. 2008 ehitati uus tantsupõrand. Läks algsest väiksemaks. nov 2008 põles laulukaare osa. Põrand jäi siis puutumata. Kuskilt on läbi käinud, et Alar Kotli ehk arhitekt.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '21.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Haapsalu kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '19.saj lõpus', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'R. Knüpferilt', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitati koos Haapsalu kuursaaliga. Eraldi infot selle kohta ei leia. Pigem kõik seotud kuursaaliga. Haapsalu Tagalahe rannale alustati jalutustee rajamist 1858. a. 1897. a tellis Haapsalu kaunistamise selts arh R. Knüpferilt kuursaali projekti koos kõlakojaga. Puitpitsiga ohtralt kaunistatud hoone ehitati rannapromenaadi veerde nii, et ta oli kolmest küljest ümbritsetud merega, kuursaal valmis 19. saj viimastel aastatel. Kuursaal koos kõlakojaga oli Vene keisrikoja ja Peterburi kõrgklassi lemmikkoht. Lava suund kagu suunas.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '17.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Risti laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '17.04.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kose laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '22m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '11', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2001', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitusregistri andmetel on Kose laululava ehitatud 2001. aastal. 2014ndal aastal hoone rekonstrueeriti.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '3 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.05.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Aruküla laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '11.2m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '4.8m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2008', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Aruküla lauluväljakule ehitati 1957. aastal laululava, mis mahutas kuni 300 inimest. Külaelu vaibus ja 1970ndatel lava lammutati. 1970ndate keskpaigas ehitati samasse kohta väike laululava, mis leidis kasutust kuni 2006 aasta oktoobrini MTÜ Aruküla Kultuuriseltsi ürituste läbiviimisel. 15. oktoober 2006 lava lammutati, kuna selle seisukord oli väga halb. Ehitusregistri andmetele tuginedes on uus laululava ehitatud 2008. aastal ja seal korraldab MTÜ Aruküla Kultuuriselts iga-aastaselt erinevaid kontserte ja külapidusid.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '3 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.05.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Muhu (Hellemaa) laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '13.05.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Jööri laululaval';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.4m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '4+3', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '13.05.2023', false, NOW(), NOW());

        -- Akustikaproov II data
        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Erra laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '5.7m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '4.6m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2013', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Jaanuaris 2012 peeti Erra kultuuriseltsis külakoosolek, mille põhiteemaks oli uue laululava rajamine Erra parki. Projekti juhtis külavanem Veiko Rosi, ehitustööd tehti talgutena. Lava valmis 2013. aasta novembris.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Oonurme laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.1m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '1.6m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Oonurme laulupäevad on olnud Ida-Virumaa kooride ja puhkpilliorkestrite hulgas väga populaarsed. Ants Üleoja kutsus 1995. aastal kokku koori ning tema eestvedamisel ja kohalike metsaärimeeste toetusel rajati Oonurme laululava. 1997. aastal toimus vastvalminud laval esimene kohalik laulupidu.  Laulupeo plats on ühe endise talu õu, piiratud vanade puudega, mis on suureks ja vägevaks kasvanud. Tänu sellele on seal tekkinud looduslik kõlakoda. Laululava asub suure puu all. Maa sisse taoti suured palgid, nii et astmestiku taga asub palksein. Palkide asetus sümboliseerib orelivilede asetust. Laululava haldab Oonurme Külaselts', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '10.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Jõhvi laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9.6m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.6m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '4', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1996', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Laululava rajati aastal 1996, praegusel kujul valmis peale põhjalikku remonti aastal 2019.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, vähene tuul', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Sonda kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.2m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7.1m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '4', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2013', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Rajati 2013. aastal ning ehitati MTÜ Sonda Arenduskoolituskeskuse eestvedamisel.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '10.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Toila laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '23m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '16.8m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '22', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '07.06.1995', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteerisid Rein Tomingas ja Vello Hütsi', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Toila laululava alustas tegevust 1960. aastal ja ehituse algatas kohalik rajoonikomitee. Praegune laululava avati 7. juunil 1995. aastal, hoone projekteerisid Rein Tomingas ja Vello Hütsi. Laval toimuvad kohaliku ja maakondliku tähtsusega laulu-ja tantsupeod, kontserdid, etendused.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kulja laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '5.3m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '3.8m', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1995. aastal', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Asub Kulja Hiiemäel ning rajati 1995. aastal.', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Lüganuse laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8.2m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Avati 2010. aastal.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kohtla-Nõmme laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '3.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kohtla-Nõmme laululava alustas tegevust 2019, ehitas Toila vallavalitsus. Laval toimuvad kohaliku ja maakondliku tähtsusega laulu-ja tantsupeod, etendused, kontserdid. Haldab laululava Toila valla allasutus Toila valla Spordi-ja kultuurikeskus.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Saka mõisa suvelava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '11.9m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.9m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kerge vihm ja tuul', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Saka laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '7.4m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '3.8m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Haldab laululava Toila valla allasutus Toila valla Spordi-ja kultuurikeskus.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kerge vihm ja tuul', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Iisaku laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.6m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6.3m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '6', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1960', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Iisaku laululava rajati algselt 1960. aastal, mil Johannes Karri eestvedamisel korrastati ühistööna rahvamaja põhjapoolse otsa võssakasvanud kruusaauk vabaõhuürituste tarvis. Iisaku uus laululava on valminud 2007. aasta juunis Iisaku vallavalitsuse eestvedamisel. Avatud kaanega klaverit meenutava kõlakoja on projekteerinud arhitekt Andres Toome eskiiside põhjal OÜ Argrov projekt. Igal aastal toimub laval traditsiooniline jaanipidu, lisaks mitmeid muid sündmusi, näiteks Ida-Virumaa kooride päev, kihelkondadevaheline laulupüha, mitmel korral maakonna folkloorifestival Kirde-Killad, noorte räpifestival NORF, rahvusvahelise folkloorifestivali Baltica Virumaa maapäev, Võsu Viis muusikafestivali galakontsert, Eestimaa Looduse Päev, erinevad suvelavastused, sealhulgas 2023. aastal etendus „Kõik roosid…“ , mis oli spetsiaalselt Iisakule kirjutatud.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Vasknarva kõlakoda (ordulinnuse varemed)';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.8m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '9.8m', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Esimese ordulinnuse rajas Vasknarva 1349. aastal Liivi ordumeister Goswin von Herike, et kontrollida Peipsi järve ja Narva jõe veeteid. Samal aastal hävitasid pihkvalased linnuse. 1427. aastal alustas Liivi ordu linnuse taastamisega, sellest sai ordufoogti residents. Liivi sõjas purustati linnus taas. Täna on  kunagisest võimsast kaitseehitisest võimalik näha vaid kolme meetri paksuseid müüre.Vasknarva ordulinnuse varemete juures toimub iga-aastaselt Peipsi Järvefestivali üks kontsertidest. Varemeid haldab Alutaguse Vallavalitsus.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Lohusuu';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.3m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '4.6m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2010', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Lohusuu laululava ajalugu on tihedalt seotud kohaliku eripäraga - kalanduse, mitmekultuurilisuse, kalalaatade, kalurite päeva ja kanuuretkedega. Lohusuu laululava on ehitatud aastal 2010 ning praeguseks on renoveeritud nii laululava tantsuplats, laululava katusekate kui ka  riietusruumi vaheseinad Peipsi-Alutaguse Koostöökoja toel. Lohusuu laululava aktiivne kultuuriline kasutamine aitab kaasa piirkonna jaoks väga olulise kultuuripärandi hoidmisele ja traditsioonide säilimisele ning edasikandmisele.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Kuiv, tuulevaikne', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '09.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Keava laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '5.8m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '3.9m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ajalugu ulatub 1930. aastatesse. Keava raudteejaama juures tegutses Keava Seltskondlik Ühing, mille eestvõttel koguti pidudel loterii, omaküpsetatud saiakeste, küpsiste jm müügiga raha kõlakoja ehituseks. 1938. aastal valmis vallalt renditud maatükile suuremõõtmeline näitelavaga kõlakoda, milles paiknesid ka ruumid isetegevuslastele. Kõlakoja ette ehitati puidust trepi ja pinkidega tantsuala. Samuti oli suveaias einelaud ning kogu ala ümbritses lippaed. Suveaia kõrval paiknes ka spordiplats, mistõttu sai kogu ala kiirelt väga populaarseks. Seal peeti rajoonide laulu- ja spordipäevi ning orkestriga tantsuõhtuid. Praegune kõlakoda ehitati 2005. aastal ning projekteerimisel võeti aluseks vähendatud mõõtmetega vana kõlakoda. Projekteerijaks Valtu Projekt, Tõnis Kurisoo. 2018. a valmis Eesti Külaliikumine Kodukant kogukondade EV 100 taotlusvooru projektiga suveaeda laste mänguväljak. 2020. aastal renoveeriti kohaliku omaalgatuse programmi toel laululava tantsupõrand. Haldab MTÜ Keava Haridus- ja Kultuuriselts', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilves, tuuline', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '11 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '08.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Valtu-Nurme laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '8m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.5m', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Avati 2012. aastal Nukuteatri etendusega „Naksitrallid“. Ideid külaplatsi kujundamiseks otsiti kogukondlikult, käies tutvumas ka teiste külaplatsidega. Ehituse esimeses etapis valmis suurem varjualune, mille ehitamisel kasutati oma küla Sarapiku talu enam kui 100 aasta vanuseid sarikaid ja penne ning teises etapis mänguväljaku atraktsioonid, grillikoda, välikäimla ning soetati mööbel. Külaplatsi ehitamist toetas LEADER-programm. 2023. aastal remonditi varjualune ja külaplatsi silt ning puidust varjualuse esine ala asendati tänavakividega.  Remondi- ja ehitustööde projekti rahastati kohaliku omaalgatuse programmist. Külaplats on kohtumispaigaks, vaba aja veetmiseks, koosolekute pidamiseks, väliõppeks, matkasihiks ja avalike sündmuste korraldamiseks avatud kõigile. Haldab MTÜ Valtu-Nurme külaselts.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilves, tuuline', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '4.7 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '08.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kumma laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '3m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '2m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kiigeplatsi katusealuse ja kõlakoja ehitamist alustati 1987. aastal toonase külavanema Valter Laurimaa initsiatiivil, projekteerijaks Tõnis Kurisoo. Toomi talu koppel oli saanud noortele kokkusaamiskohaks ning võrkpalli mängimiseks juba 1949. aastal. Ehitus oli kooskõlastatud Valtu kolhoosi juhatusega ja kindlustatud majandi rahastusega. Aastate jooksul on platsil tehtud mitmeid hooldus- ja remonditöid, hoonete sindlikatused on välja vahetatud laudkatuste vastu, publiku jaoks on paigaldatud lauad-pingid. Populaarses peopaigas peetakse küla kokkutulekuid, kontserte ja muid üritusi, võistlusi, see on ka praegu noortele tuntud kohtumispaigaks. Kõige ägedam üritus on siiski iga-aastane jaanituli, kuhu tullakse ka kaugematest küladest ning jaanikuks valmistudes peetakse ikka talguid, et plats kenasti korda sättida. Peopaika külastanud esinejad on öelnud, et platsi ümbritsev puudering tekitab väga hea akustika.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilves, tuuline', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '7 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '08.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Ingliste kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '7m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '1.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Lava kohta on leitud esimesed faktipõhised andmed 1972. aastast rajoonilehest Ühistöö. Artiklis kirjutati Ingliste parki uue tantsulava ehitamisest. Võib arvata, et laulutribüün valmis juba aasta varem, 1971. aastal Valtu ja Ingliste kolhoosi ühinemisel, ning seal peeti aastate jooksul mitmeid kolhoosi laulupidusid. 1990. aastal valmis Valtu kolhoosi VI laulupeoks lagunenud lava asemele uus tantsulava, projekteerijaks Tõnis Kurisoo. Seinte ehituseks vajalik paekivi veeti kohale Vao karjäärist, põrand ehitati terratsoplaadist. Vajaminev kogus muinsuskaitse nõuetele vastava profiiliga punaseid katusekive saadi restaureerimisel oleva Inglise mõisahoone varudest, need õnnestus Valtu kolhoosil paari kasti Valtu veiniga „välja ajada“ Leedust.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilves, tuuline', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '9 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '08.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Käru laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '7m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '4m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'Valmis 2022. aastal', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Uus laululava valmis 2022. aastal Türi valla kaasava eelarve abil.  Aastaid tuntud peokohana, kuid pikalt tühjana seisvale platsile ehitati kogukondlikuks kasutamiseks laululava Vändra kirivöö mustrist inspiratsiooni saanud suure kivist tantsupõrandaga. Vana laululava lauad läksid taaskasutusse Tolli metsa- ja Saunametsa matkaradade toestamiseks. Plats on kogukondlikuks kasutamiseks. Seal korraldatakse jaaniõhtuid, kontserte ja muid üritusi. Haldab Türi Kultuurikeskus (Käru rahvamaja).', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilves, tuuline', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '26 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '08.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Audru laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '11m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '9.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ruuporikujuline künkasse istuv vorm sobitub ja elavdab suhteliselt lauget mõisapargi maastikku. Kõlakoja kuju on tuletatud heli levimisest, mõjudes samas visuaalselt atraktiivsena. Küljelt vaadates meenutab fassaadi tasapindade mäng mustrilt lõõtsa. Sügavust loovad eenduvad termosaarest postid, mis tulevad hästi esile tumedaks peitsitud puidu taustal. Heledast ja avarast laulukaarest kasvab välja suur välilava. Laululava ees paikneva lava vorm jätkab orgaaniliselt laulukaare kumerusi, millest kasvab välja istumisala. Pealtvaatajad istuvad tuulte eest kaitsva valli sees. Laululaval on läbikäidav abiruum, kuhu saab paigutada ja  hoiustada esinejate rekvisiite ja tehnikat. Laululava juurde viib valgustatud tee. Romantilise meeleolu loovad sumedalt valgustatud ümberkaudsed puud ja kaare vormi rõhutav valgustus.Lava avati 30. mail 2018. aastal.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vahelduv, nõrk tuul', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '12.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Tootsi laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '8.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '3m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Uus laululava avati 21. detsembril 2021. aastal. Lava asub Kooli tänaval, lähiümbruses on nii poed kui ka mänguplatsid.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vahelduv, nõrk tuul', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '12.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Mädara laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '7.6m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.3m', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kõrgete küngaste vahel männimetsa varjus avaneb pahviks lööv vaade - ümarpalkidest kõlakoda ja pinkide rivi suure tantsulava ees. Kõlakojaga metsalagendikust, mida ühest küljest piirab jõekäänak ja teisest Mädara liivakünkad, kujunes populaarne kooskäimiskoht juba 1930ndatel, kui ümberkaudsed seal pidudel-simmanitel käisid. Metsaalustel kuplitel sõideti nii moto- kui jalgrattakrossi, käidi kelgutamas. Küla ettevõtmisi koondab külaselts MTÜ Mädara Mäed. Kuna varasemad ehitised olid ajale jalgu jäänud, kirjutati 2011. aastal projekt, et saada toetust kõlakoja, tantsulava, välikäimla, laste mänguväljaku, võrkpalliplatsi, grilliplatsi ja külakiige rajamiseks.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vahelduv, nõrk tuul', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '12.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Saue laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '12m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '4', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2003 mai', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteerijaks Kalle Koppel', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Laululava valmimine oli planeeritud Saue linna kümnendaks sünnipäevaks ning laululava kõlakoda valmis mais 2003, projekteerijaks linna arhitekt Kalle Koppel.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine, niiske', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Vanamõisa laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8m', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2010', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris Jaan Vene, ehitusöid teostas OÜ Ööbiksaare töömehed', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Vanamõisa laululava on Eesti suurim palk-laululava, mis valmis 2010. aasta suvel. Laululava projekteeris Jaan Vene ning ehitustöid teostas OÜ Ööbiksaare töömehed. Haldab MTÜ Vanamõisa Küla', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine, niiske', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '8 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Laitse laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Haldab MTÜ Laitse Seltsimaja', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vihmane', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kalju-Lava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '17m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2012', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Kalmer Kuningas', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kalju-lava on loodud Kloostri jõe endiste kallastele, kus loodus on säilitanud oma metsiku ilu. Enne õhtu saabumist avaneb hea võimalus näha kameruni kitsekarja ringi tantsimas või jälgida jões ujuvaid hanesid. Lava asub oru põhjas ning pealtvaatajad istuvad nõlval, kust avaneb hea vaade laval toimuvale. Lava valmis 2012. aastal ning selle loojaks ja ehitajaks oli Kallaste talu peremees Kalmer Kuningas. Lava on pühendatud Kalju Terasmaale.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vihmane', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Haeska laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '6.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '22.12.2018', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Haeska küla laululava avati 22. detsembril 2018. aastal  ning see valmis  EV100 programmi toel kingitusena Eesti vabariigile. Laululava asub endise nõukogudeaegse kasutuseta seisnud pumbamaja alal. Pumbajaama vundament sobis suurepäraselt laululava aluseks. Kogukonna ühiste jõupingutustega korrastati kaablikraavid ning laululava vundamendi ümbrus, muutes selle kohalikuks pärliks.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge, niiske', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Lihula laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '12.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6.7m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1997', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris Urmas Arike, ehitustöid teostas AS Helm', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Lihula mõisa kõrval asuv laululava valmis 1997. aasta  juunis. Lava projekteerijaks Urmas Arike, ehitustöid teostas AS Helm.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge, kuiv', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '7 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Pürksi kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '7.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '4.5m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2023 märts', false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'OÜ Resteh', false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Pürksi mõisa pargis asuv Noarootsi laululava valmis 2023. aasta märtsis. Lava ehitustöid teostas OÜ Resteh.', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge, niiske', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '4 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Haapsalu linnus';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '13.5m', false, NOW(), NOW()),
            (selected_stage_id, depth_id, '9m', false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge, niiske', false, NOW(), NOW()),
            (selected_stage_id, wind_id, '8 m/s', false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.10.2023', false, NOW(), NOW());
    END
$$;
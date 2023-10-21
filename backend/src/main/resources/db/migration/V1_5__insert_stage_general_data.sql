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
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '12m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'Esmane kasutus 1935 (avaandmed.ee)', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Renoveeritud laulukaare projekteerinud tõenäoliselt Aivar Kõivistik', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kurepalu laululava ja vaba aja park on rajatis Kastre vallas Tartu maakonnas. Laululava katastriüksuse sihtotstarve on üldkasutatav maa, mida haldab Kastre vald. Kurepalu küla südames asuv laululava on kohalike sündmuste (jaanipäevad, rahvakalendri üritused, orienteerumine) kui ka kontsertide jaoks suurepärane paik. Viimati toimunud suur sündmus kooride seisukohalt oli Lõuna-Eesti meestelaulupäev 21. mail 2022. https://www.ohtuleht.ee/840002/uhe-mehe-missioon-vabariigi-aastapaevaks-10-laululava', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '11 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Aakre laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '12m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2017', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Aivar Kõivistik', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Aakre laululava on rajatis Elva vallas Tartu maakonnas. Laululava katastriüksuse sihtotstarve on ühiskondlike ehitiste maa, mida haldab Aakre Rahvamaja. Tänaseks kohalike sündmuste ja kontsertide süda sai alguse kingitusena Eesti Vabariigi sajandaks sünnipäevaks.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '8 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Helme laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '19.4m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8.5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Helme laululava asub Valga maakonnas ja on Tõrva vallavalitsuse omand. Ajalooline informatsioon puudub, kuna on ehitatud ENSV ajal. Sellest ajast ei ole säilinud kirjaliku ega suulist informatsiooni.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '8 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Pikasilla vabaõhulava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '8m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.2m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Pikasilla laululava asub Valga maakonnas ja on Tõrva vallavalitsuse omand. Ajalooline informatsioon puudub, kuna on ehitatud ENSV ajal. Sellest ajast ei ole säilinud kirjaliku ega suulist informatsiooni.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '7 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '25.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kasepää laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '20m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '5', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'kaar valmis 2013, 2010 laululava betoonkarkass', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'AS Cobra Grupp', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Arhitekt: Andres Kadarik. Esimene pidu peeti Tiheda külaväljakul 2009. aastal. Toimus Peipsi-äärsete maakondade laulu- ja tantsupidu. Platsile olid paigutatud ainult pingid, esinejatele oli seatud ajutine lava. Laululava betoonkarkass valmis 2010. aastal. 2012. aastal valmis terrassi laudis ja piirded ning lavale paigaldati elektrikilp. Tänu sellele pole vaja ürituste ajal kasutatava tehnika elektriga varustamise jaoks iga kord ajutisi kaableid vedada. 2013. aastal paigaldati puidust kaar. Laululava kaar meenutab kummuli paati. Info pärineb: https://www.vooremaa.ee/tiheda-laululava-saab-kaare/ ', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2.5 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '26.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Sadala kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7.3m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2018', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris FIE Aivar Kõivistik Tartumaalt, ehitajaks on Mauleman OÜ Põlvamaalt.', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Mitmed suved on laulu- ja tantsupidude korraldamiseks sobitatud Sadala rahvamaja kõrvale plats ning vajaduse korral püstitatud laulmisvõimaluse tekitamiseks mõned astmed. Kõlakoja rajamisega soovis kogukond hoida vanemate sõjaeelset traditsiooni, mil ehitati Eestis kõlakodasid, et oleks laulmiseks, pillimänguks ja tantsimiseks oma koht. Sadala Külade Seltsi juhatuse esimees Pille Tutt ütles, et laululava ja lipuväljak rajati nii piirkonna, Jõgeva valla ja Jõgevamaa ning ka üle-eestiliste sündmuste mitmekülgsemaks ja atraktiivsemaks korraldamiseks erinevatel aastaaegadel. „Sadalas said näiteks alguse EV 100 pidustused Jõgevamaal.” Laululava ja lipuväljaku ehitamine on Sadala Külade Seltsi kingitus oma kogukonnale ja Eesti Vabariigi 100. aastapäevaks. Oma kujult meenutab laululava pooleks lõigatud kirikukella. Laululava vorm moodustub liimpuidust kaartest ja neid katvast „koorikust”. Akustiliselt on tähtis tagaseina olemasolu. Hoone tagaosas on ruum esinejatele. Kaarjad asted laulava ees loovad laulukooridele omase asetuse. Lava tagumises osas on trepid ja uks esinejate jaoks. Info pärineb: https://kylauudis.ee/2018/07/12/haldusreformijargsesse-jogeva-valda-rajas-esimese-kolakoja-sadala-kulade-selts/ ', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '1.7 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '26.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Viljandi laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '41m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '17.5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '13', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2013', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Kadarik Tüür Architects, Mihkel Tüür, Ott Kadarik; kaasautor Tanel Trepp. Konstruktsioonide insenertehniline projekt valmis firmas Printsiip OÜ. Laululava tellis Viljandi Linnavalitsus.', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Viljandi laululava on maakonna lavadest suurim. Seal korraldatavast Viljandimaa laulu- ja tantsupeost võttis 2022. aastal osa üle 2000 esineja. Samuti toimub seal ka erivajadusega inimeste laulu- ja tantsupidu. Tänu suurele lavaesisele platsile mahuvad sinna lisaks lauljatele ka tantsijad, sealhulgas ratastoolis tantsijad. Lisaks paljudele erinevatele kontsertidele on laululaval toimunud ka Eesti Segakooride Liidu laulupäev (2018). Ala on kasutatud Viljandi Pärimusmuusika festivali ajal, mil seal on paiknenud üks festivali lavadest. Lauluväljakul on ka ajalooliselt oluline väärtus - Eesti taasiseseisvumise ajal peeti seal Rahvarinde meeleavaldust, mille mälestuseks on väljaku kõrvale püstitatud mälestuskivi.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5.5 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '27.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Mustla laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '17m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2+3', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris Avo Saar', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Mustla laululaval on läbi aastate korraldatud mitmeid valla üritusi, nagu lastekaitsepäeva pidustusi ja jaanipidusid. Samuti on seal toimunud mitmeid tuntud artistide suvekontserte. Hiljaaegu toimunud üritustest suurim oli 2022. aasta kevadel laululaval korraldatud Viljandi valla lasteaedade ühine laulu- ja tantsupidu.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6.4 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '27.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Ahja laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3+4', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2009', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Aivar Kõivistik (arhitekt), OÜ Mauleman', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Võistles Eesti Parim Puitehitis 2009 auhindadele. Läheduses asub ka keskajast pärinev Ahja mõis.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vihmane', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '31.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Intsikurmu laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '23m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10.5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '17', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'Algselt 1969, kuid uuesti 2002', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Vadim Tšentropov (arhitekt), Põlva KEK', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitusaasta: 1969 (kuid põles 2002 volbriööl maha, misjärel see taastati esialgse projekti järgi). Mõõdud: 50m pikk ja 12m kõrge. Arhitekt: Vadim Tšentropov. Ehitaja: Põlva KEK. Ajalugu: Intsikurmus on aastakümnete jooksul korraldatud üle-eestilisi nais- ja meeskooride laulupäevi, Lõuna-Eesti laulupidusid ning suurejoonelisi rahvaüritusi. Koore on Intsikurmus dirigeerinud maestro Gustav Ernesaks, Kuno Areng, Alo ja Richard Ritsing, Jüri Variste, Arvo Ratassepp jpt. Siin on esinenud Eesti kõik popansamblid - Rock Hotelist ja Vitamiinist Fixi ning Vennaskonnani. Intsikurmus peeti legendaarse EÜE (Eesti Üliõpilaste Ehitusmalev?) kokkutulekuid (viide). Eestimaa esimesed laulupühad peeti puhkaeestis.ee andmetel 1855 ning 1857 just sellel laululaval. Lava mahutab ligikaudu 3500 lauljat.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Vihmane', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '3 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '31.03.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kehtna laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '2 (laval on nö 3. astmel)', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'okt.2018', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, '3 Seltsimeest OÜ', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kehtna laululava avati 2018. aasta oktoobris. Projektijuht oli Anne Ummalas, kes on Kehtna Kultuuriselts MTÜ liige. Ehituse tellis MTÜ Kehtna Kultuuriselts. Ehitas ettevõte nimega 3 Seltsimeest OÜ. Laval peatus 2019.aasta juubelilaulupeo tule rongkäik. Sel aastal on sel laval toimumas Raplamaa 35. Memme-Taadi suvepidu ja Kehtna valla jaanituli. Lava juures toimuvad ka erinevad laadad.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6.7 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '02.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Hageri laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2005', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'OÜ Alnus', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Lava rekonstrueerimise eest seisis Hageri Haridusselts MTÜ, eestvedajaks Virve Õunapuu. Lava kuulub Hageri rahvamaja juurde, mis on Kohila valla ainsaks rahvamajaks. Rahvamajas ja välilaululaval toimuvad Hageri kihelkonnapäevad (iga 5 a tagant), laste laulu- ja tantsupäevad, külapäevad, valla jaanituled ja vabaõhukontserdid. Lava lähistel on ka suur külakiik. Suurürituste ajal võib pargis viibijate arv ulatuda mitme tuhande osalejani.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '6.4 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '02.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Paide laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '25m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '9.3m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '11', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1991', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Raul Vaiksoo', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Projekteeriti aastal 1989, valmis aastal 1991. 2008 viidi läbi renoveerimine. Laululava on läbi aastate kasutatud laulu- ja tantsupidude jaoks ning teiste ürituste läbiviimiseks.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '18 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Türi laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '26.5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10.2m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '6+2', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1976', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Projekteeris T.Zvorovski', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Nimetatud ka Türi estraadilavaks. Projekteeritud 2000 pealtvaatajale. Kohe laululava taga asub Türi tehisjärv. Aastal 2006 rekonstrueeriti Türi laululava AS KEK-i Ehitus poolt, mille käigus ehitati ümber lava ja lavatagused ruumid ning rajati seni puudunud vee- ja kanalisatsioonisüsteem. Paigaldati liimpuidust katusekonstruktsioonid. Laululaval korraldatakse vabaõhuetendusi ja kontserte', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '19 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kadrina laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '15.833', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6.043', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1979', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Laululava projekteeris Matti Bollverk', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, '11. augustil 1979. aastal avati Viru mängude raames Kadrina laululava. Laululava ehitamisele andis tõuke Kadrina EPT läbiviidud VI Viru mängude finaalvõistlus, kus oli kavas kultuurilise isetegevuse võistlus. 1979. aasta mängude isetegevuskonkurss ja mängude lõputseremoonia toimusidki värskelt valminud laululaval. ', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Ebavere kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9.192m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '7.139m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '4', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, 'Valmis 2010. aasta suvel', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Arhitekt Aare Uukado', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ebavere tervisespordikeskusesse rajati rahvaspordiklubi projektiga saadud toetusega puidust ja paekivist kõlakoda ja tribüün, mis said valmis 2010. a jaanipäevaks. Kõlakoja rajamise mõtte algatajaks oli MTÜ Väike-Maarja Valla Rahvaspordiklubi. Raha saadi PRIA-lt külade uuendamise ja arendamise investeeringutoetusena.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Pilvine ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '4.7 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '15.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Võru-Kubija laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '78m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '30m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '22', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1999', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Fredi-Armand Tromps', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Võru laululava kerkis aastal 1950 kuid ebaõnnestunud akustika ja katuseta oleku pärast rekonstrueeriti see aastail 1995-1999. Nüüdseks on Võru-Kubija laululava oma kauni ning kergesti ligipääsetava asukoha tõttu Võrukatele üks tähtsaimatest kohtadest.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5.2 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '19.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Harjumäe laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '15m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '10m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2011', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Pasimare ehitus', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Harjumäe laululava Võrumaal on Varese küla sündmuste südames. Seal toimub jaanipäev kui ka palju muid väiksemaid üritusi, sünnipäevadest koorilauluni. Asukoht on idülliline: lava tagant jookseb läbi jõgi ning istumiskohad asuvad naturaalse künka nõlval, lava ümbritseb tihe männimets.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '5.2 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '19.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Hellamaa laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '12m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1972 (2008)', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Taavi Stomma', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Kõlakoda ja tantsupõrand ehitati 1972. a. V.I. Lenini nimelise kolhoosi poolt traditsioonilisele kokkusaamise kohale jaanipeoks esimest korda ja 2008.a. külaselts Hellatempa eestvedamisel teist korda. Mõlemal korral oli arhitekt Taavi Stomma, ehitajad tema alluvad töölised. Tantsupõrand on 10x12 m, kõlakoda tehti teisel korral pisut suurem. Samal platsil on külakiik, nüüd juba neljas ootab uuendamist. Lisaks taidlejate kontsertidele on toimunud Väikesaarte laulupidu, Grillfestid, Tarvitatud Massinate Kokkutulek, telkimisi, piknikke,suguvõsade kokkutulekuid, külapidusid ja neljad pulmad.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '23.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kärdla laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '18m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '13m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '1936', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'Alar Kotli?', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitati ta valmis 1936.a. Hiiumaa III laulupeoks. Kuni 1977.a. ainus pidude toimumise koht. Hiljem lisandus Kärdla rand tantsupidude kohana, kuid laulupeod ikka laululaval. Seega pea 55 aastat kasutati järjest pidude tegemiseks. Siis läksid peod mööda saart rändama. 2008 ehitati uus tantsupõrand. Läks algsest väiksemaks. nov 2008 põles laulukaare osa. Põrand jäi siis puutumata. Kuskilt on läbi käinud, et Alar Kotli ehk arhitekt.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '21.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Haapsalu kõlakoda';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '19.saj lõpus', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_by_id, 'R. Knüpferilt', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitati koos Haapsalu kuursaaliga. Eraldi infot selle kohta ei leia. Pigem kõik seotud kuursaaliga. Haapsalu Tagalahe rannale alustati jalutustee rajamist 1858. a. 1897. a tellis Haapsalu kaunistamise selts arh R. Knüpferilt kuursaali projekti koos kõlakojaga. Puitpitsiga ohtralt kaunistatud hoone ehitati rannapromenaadi veerde nii, et ta oli kolmest küljest ümbritsetud merega, kuursaal valmis 19. saj viimastel aastatel. Kuursaal koos kõlakojaga oli Vene keisrikoja ja Peterburi kõrgklassi lemmikkoht. Lava suund kagu suunas.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '17.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Risti laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '1', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '17.04.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kose laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '22m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '5.5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '11', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2001', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Ehitusregistri andmetel on Kose laululava ehitatud 2001. aastal. 2014ndal aastal hoone rekonstrueeriti.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '3 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.05.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Aruküla laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '11.2m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '4.8m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', NULL, false, NOW(), NOW()),
            (selected_stage_id, built_when_id, '2008', NULL, false, NOW(), NOW()),
            (selected_stage_id, history_id, 'Aruküla lauluväljakule ehitati 1957. aastal laululava, mis mahutas kuni 300 inimest. Külaelu vaibus ja 1970ndatel lava lammutati. 1970ndate keskpaigas ehitati samasse kohta väike laululava, mis leidis kasutust kuni 2006 aasta oktoobrini MTÜ Aruküla Kultuuriseltsi ürituste läbiviimisel. 15. oktoober 2006 lava lammutati, kuna selle seisukord oli väga halb. Ehitusregistri andmetele tuginedes on uus laululava ehitatud 2008. aastal ja seal korraldab MTÜ Aruküla Kultuuriselts iga-aastaselt erinevaid kontserte ja külapidusid.', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '3 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '14.05.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Muhu (Hellemaa) laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '9.5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '6m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '3', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '13.05.2023', NULL, false, NOW(), NOW());

        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Jööri laululaval';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, description, deleted, created, edited)
        VALUES
            (selected_stage_id, width_id, '10.4m', NULL, false, NOW(), NOW()),
            (selected_stage_id, depth_id, '8.5m', NULL, false, NOW(), NOW()),
            (selected_stage_id, step_amount_id, '4+3', NULL, false, NOW(), NOW()),
            (selected_stage_id, weather_id, 'Selge ja kuiv', NULL, false, NOW(), NOW()),
            (selected_stage_id, wind_id, '2 m/s', NULL, false, NOW(), NOW()),
            (selected_stage_id, measure_date_id, '13.05.2023', NULL, false, NOW(), NOW());
    END
$$;
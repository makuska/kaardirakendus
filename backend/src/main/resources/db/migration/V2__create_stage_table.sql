CREATE TABLE IF NOT EXISTS stage (
    id serial  NOT NULL,
    name text  NOT NULL,
    county varchar(255)  NOT NULL,
    address text  NOT NULL,
    longitude float  NOT NULL,
    latitude float NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_pk PRIMARY KEY (id)
);

-- prefill stage data
INSERT INTO akustikaproov.stage (name, county, address, latitude, longitude, created, edited, deleted)
VALUES
    ('Kurepalu laululava', 'Tartu', 'Vallamaja tee, 62113, Tartu maakond (Kastre vallavalitsuse taga)', 58.31616104544094, 26.834524835434525, NOW(), NOW(), false),
    ('Aakre laululava', 'Tartu', 'Mõisa tee 12, Aakre, 67212 Tartu maakond (Rahvamaja kõrval)', 58.09841243301046, 26.201474885946595, NOW(), NOW(), false),
    ('Helme laululava', 'Valga', 'Helme lossipark, Kooli 1, Helme, 68608 Valga maakond (Helme mõisa vastas rohealal)', 58.016026088356924, 25.881146435531548, NOW(), NOW(), false),
    ('Pikasilla vabaõhulava', 'Valga', 'Pikasilla vabaõhulava, 68715, Valga maakond (Pikasilla discgolfi 6. rada)', 58.09185353564032, 26.047895653670224, NOW(), NOW(), false),
    ('Kasepää laululava', 'Jõgevamaa', 'Sõpruse 84, Tiheda, Jõgeva maakond', 58.7961823364319, 26.959971695923656, NOW(), NOW(), false),
    ('Sadala kõlakoda', 'Jõgevamaa', 'Sillasoo 4, Sadala, Jõgevamaa. Asub Sadala Rahvamaja kõrval pargis', 58.867568182225504, 26.60086430884651, NOW(), NOW(), false),
    ('Viljandi laululava', 'Viljandimaa', 'Talli 2, Viljandi, 71011 Viljandi maakond', 58.361469944117424, 25.593785517218013, NOW(), NOW(), false),
    ('Mustla laululava', 'Viljandimaa', 'Liiva tn 1a, Mustla alevik, Viljandi vald', 58.233045630348684, 25.86991560007481, NOW(), NOW(), false),
    ('Ahja laululava', 'Põlvamaa', 'Allika 19, Ahja, 63710 Põlva maakond', 58.209087213251905, 27.069621980735583, NOW(), NOW(), false),
    ('Intsikurmu laululava', 'Põlvamaa', 'Metsa 11, Põlva, 88103 Põlva maakond', 58.04395391531637, 27.054910630814565, NOW(), NOW(), false),
    ('Kehtna laululava', 'Raplamaa', 'Kehtna laululava, park. 79062, Kehtna, Raplamaa', 58.924052442444435, 24.868804000177803, NOW(), NOW(), false),
    ('Hageri laululava', 'Raplamaa', 'Kohila tee 18, Hageri alevik, Kohila vald', 59.158153165145634, 24.65727041498941, NOW(), NOW(), false),
    ('Paide laululava', 'Järva', 'Paide, 72713 Järva maakond', 58.88937927586301, 25.573641190617415, NOW(), NOW(), false),
    ('Türi laululava', 'Järva', 'Andreas Kurrikoffi, Türi, 72210 Järva maakond', 58.8097444145589, 25.438843286095835, NOW(), NOW(), false),
    ('Kadrina laululava', 'Lääne-Virumaa', 'Pargi 1a, Kadrina, 45201 Lääne-Viru maakond', 59.3392629029702, 26.136590346089328, NOW(), NOW(), false),
    ('Ebavere kõlakoda', 'Lääne-Virumaa', 'Ebavere, 46209 Lääne-Viru maakond', 59.10457902528129, 26.229474206207666, NOW(), NOW(), false),
    ('Võru-Kubija laululava', 'Võrumaa', 'Võru, 65526 Võru maakond', 57.81097460425985, 26.99428614196362, NOW(), NOW(), false),
    ('Harjumäe laululava', 'Võrumaa', 'Varese, 66642 Võru maakond', 57.88252900123168, 26.80711520969754, NOW(), NOW(), false),
    ('Hellamaa laululava', 'Hiiumaa', 'Pühalepa, 92334 Hiiu maakond', 58.940543149876625, 22.94462663539029, NOW(), NOW(), false),
    ('Kärdla laululava', 'Hiiumaa', 'Uus 5, Kärdla, 92413 Hiiu maakond', 59.00049576946823, 22.751173697481022, NOW(), NOW(), false),
    ('Haapsalu kõlakoda', 'Läänemaaa', 'Kõlakoja, Haapsalu, 90502 Lääne maakond', 58.95052114187111, 23.53656984867581, NOW(), NOW(), false),
    ('Risti laululava', 'Läänemaa', 'Risti Põhikooli juures pargis', 58.995877173517535, 24.061974272279024, NOW(), NOW(), false),
    ('Kose laululava', 'Harjumaa', 'Spordiväljaku 9, Kose, 75101 Harju maakond', 59.19007379433187, 25.169089440417185, NOW(), NOW(), false),
    ('Aruküla laululava', 'Harjumaa', 'Männiku tee, Aruküla, 75201 Harju maakond', 59.363981922004875, 25.06720632772195, NOW(), NOW(), false),
    ('Muhu (Hellemaa) laululava', 'Saaremaa', 'Jaanitule, Hellamaa, 94741 Saare maakond', 58.61214144526777, 23.294752608195886, NOW(), NOW(), false),
    ('Jööri laululaval', 'Saaremaa', 'Madise, Jööri, 94332', 58.42839820906265, 22.77236716062732, NOW(), NOW(), false);
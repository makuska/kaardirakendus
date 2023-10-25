DO $$
    BEGIN
        -- (name, 3m, 5m, 10m, public, 15m, opening_direction)
        CALL measurement_insert('Kurepalu laululava', '83', '77.2', '73.4', '66', null, 'lääs');
        CALL measurement_insert('Aakre laululava', '80.8', '74.2', '71', '64', null, 'lääs');
        CALL measurement_insert('Helme laululava', '80.2', '74.5', '71', '57', null, 'loe');
        CALL measurement_insert('Pikasilla vabaõhulava', '80', '76.4', '70.7', '61', null, 'kagu');
        CALL measurement_insert('Kasepää laululava', '78.8', '77.3', '69', '59', null, 'lääneloe');
        CALL measurement_insert('Sadala kõlakoda', '81.8', '77.8', '73.8', '66.9', null, 'lääs');
        CALL measurement_insert('Viljandi laululava', '80', '73.7', '67.4', '56.9', null , 'loe');
        CALL measurement_insert('Mustla laululava', '78.8', '74', '70.4', '64', null, 'kagu');
        CALL measurement_insert('Ahja laululava', '77', '75', '68', '64', null, 'lõuna');
        CALL measurement_insert('Intsikurmu laululava', '78', '73', '70', '59', null, 'loe');
        CALL measurement_insert('Kehtna laululava', '78.8', '75.5', '71', '65.6', null, 'põhi');
        CALL measurement_insert('Hageri laululava', '80', '77.5', '70', '64', null, 'edela');
        CALL measurement_insert('Paide laululava', '80.3', '72.5', '67.4', '61.5', null, 'edela');
        CALL measurement_insert('Türi laululava', '79.8', '62', '63.6', '53.7', null, 'lääs');
        CALL measurement_insert('Kadrina laululava', '78.4', '74.1', '68.2', '61.9', null, 'põhi');
        CALL measurement_insert('Ebavere kõlakoda', '74.7', '71.3', '65.4', '51.5', null, 'kirre');
        CALL measurement_insert('Võru-Kubija laululava', '82.3', '74.3', '64.5', '57.6', null, 'põhi');
        CALL measurement_insert('Harjumäe laululava', '77.9', '75.2', '73', '66.8', null, 'lõuna');
        CALL measurement_insert('Hellamaa laululava', '93.6', '90.1', '83.8', '80.8');
        CALL measurement_insert('Kärdla laululava', '91.9', '86.2', '82.2', '72.3');
        CALL measurement_insert('Haapsalu kõlakoda', '90.7', '88.8', '81.4', '82');
        CALL measurement_insert('Risti laululava', '94.8', '92.4', '81.8', '78.5');
        CALL measurement_insert('Kose laululava', '88.1', '82.2', '76.7', '72', null, 'kagu');
        CALL measurement_insert('Aruküla laululava', '88.8', '84.5', '78', '80', '73.2', 'edel');
        CALL measurement_insert('Muhu (Hellemaa) laululava', '85.6', '81.5', '75.5', '68', null, 'lõunakagu');
        CALL measurement_insert('Jööri laululaval', '88.5', '85.5', '79', '71', null, 'lääs');
    END
$$;
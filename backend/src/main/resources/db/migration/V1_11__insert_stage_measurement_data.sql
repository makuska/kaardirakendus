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
        -- (name, 3m, 5m, 10m, public, 15m, opening_direction)
        -- akustikaproov II data
        CALL measurement_insert('Erra laululava', '93.2', '92.5', '86.1', '77.3', '82.2', 'lääs');
        CALL measurement_insert('Oonurme laululava', '96.4', '90', '34.4', '79.7', '79.7', 'lõuna');
        CALL measurement_insert('Jõhvi laululava', '95.5', '92.6', '88.8', '85.6', '86.8', 'lääs');
        CALL measurement_insert('Sonda kõlakoda', '93.3', '90', '86.1', '78.1', '80.1', 'edel');
        CALL measurement_insert('Toila laululava', '97.4', '90.6', '79.4', '74.8', '77.8', 'lääs');
        CALL measurement_insert('Kulja laululava', '96.7', '96.7', '88.9', '86.2', '86.2', 'ida');
        CALL measurement_insert('Lüganuse laululava', '97.2', '94.1', '90.6', '77', '84.1', 'ida');
        CALL measurement_insert('Kohtla-Nõmme laululava', '98', '93.1', '85.8', '81', '81.8', 'lõuna');
        CALL measurement_insert('Saka mõisa suvelava', '95.1', '92.3', '88', '84.4', '84.7', 'edel');
        CALL measurement_insert('Saka laululava', '94.7', '91.6', '86.1', '90.8', '83.5', 'ida');
        CALL measurement_insert('Iisaku laululava', '89.9', '88.7', '86.9', '75.7', '79.7', 'lõuna');
        CALL measurement_insert('Vasknarva kõlakoda (ordulinnuse varemed)', '91', '87', '85.2', '80', '80.1', 'põhi');
        CALL measurement_insert('Lohusuu', '96.2', '91.1', '83', '80.3', '80.3', 'kirre');
        CALL measurement_insert('Keava laululava', '90.8', '88.7', '80.8', '79.4', null, 'lääs');
        CALL measurement_insert('Valtu-Nurme laululava', '86.1', '83.7', '74.8', '73.2', null, 'lõuna');
        CALL measurement_insert('Kumma laululava', '90.4', '88.2', '79.4', '77.8', null, 'ida');
        CALL measurement_insert('Ingliste kõlakoda', '88', '86.6', '79.8', '69.7', null, 'kirre');
        CALL measurement_insert('Käru laululava', '91.3', '89.3', '84.2', '74.6', null, 'lääs');
        CALL measurement_insert('Audru laululava', '94.7', '93.8', '85.6', '80.2', '84.6', 'edel');
        CALL measurement_insert('Tootsi laululava', '93.2', '88', '83', '77.1', '78', 'ida');
        CALL measurement_insert('Mädara laululava', '96.6', '89.7', '83.7', '77', '89.1', 'kagu');
        CALL measurement_insert('Saue laululava', '94.8', '89', '83.7', '79.8', null, 'põhi');
        CALL measurement_insert('Vanamõisa laululava', '94.1', '91.6', '87.3', '95.2', null, 'põhi');
        CALL measurement_insert('Laitse laululava', '93.6', '92.8', '85.8', '89', null, 'põhi');
        CALL measurement_insert('Kalju-Lava', '90.3', '87.4', '80.9', '75.6', null, 'edel');
        CALL measurement_insert('Haeska laululava', '92.9', '91.7', '84.2', '84.2', null, 'lääs');
        CALL measurement_insert('Lihula laululava', '93.5', '89.4', '84.2', '79.1', null, 'lääs');
        CALL measurement_insert('Pürksi kõlakoda', '94.5', '92.2', '84.9', '77.8', null, 'lääs');
        CALL measurement_insert('Haapsalu linnus', '94.8', '89.3', '80.3', '80.8', null, 'lääs');
        CALL measurement_insert('Pajusti laululava', '96.8', '94.6', '89', '82.6', '80.6', 'põhi');
        CALL measurement_insert('Roela laululava', '95.1', '92.3', '86.4', '86.9', '82.2', 'ida');
        CALL measurement_insert('Viru-Jaagupi kõlakoda', '93.4', '91.1', '86.5', '91.6', null, 'põhi');
        CALL measurement_insert('Uhtna laululava', '96.5', '92.1', '84.2', '86.6', '80.4', 'ida');
        CALL measurement_insert('Kantküla kõlakoda', '92.6', '86.3', '78.6', '79.6', null, 'ida');
        CALL measurement_insert('Kunda laululava', '91.5', '85.6', '82.1', '85.6', '77.2', 'lõuna');
    END
$$;
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2125, 'Sokrates', 'C4', 226);
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2126, 'Russel', 'C4', 232);
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2127, 'Kopernikus', 'C3', 310);
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2133, 'Popper', 'C3', 52);
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2134, 'Augustinus', 'C3', 309);
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2136, 'Curie', 'C4', 36);
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2137, 'Kant', 'C4', 7);
INSERT INTO professoren (persnr, name, rang, raum) VALUES (2138, 'Moritz', 'C4', 232);

INSERT INTO assistenten (persnr, name, fachgebiet, boss) VALUES (3002, 'Platon', 'Ideenlehre', 2125);
INSERT INTO assistenten (persnr, name, fachgebiet, boss) VALUES (3003, 'Aristoteles', 'Syllogistik', 2125);
INSERT INTO assistenten (persnr, name, fachgebiet, boss) VALUES (3004, 'Wittgenstein', 'Sprachtheorie', 2126);
INSERT INTO assistenten (persnr, name, fachgebiet, boss) VALUES (3005, 'Rhetikus', 'Planetenbewegung', 2127);
INSERT INTO assistenten (persnr, name, fachgebiet, boss) VALUES (3006, 'Newton', 'Keplersche Gesetze', 2127);
INSERT INTO assistenten (persnr, name, fachgebiet, boss) VALUES (3007, 'Spinoza', 'Gott und Natur', 2134);

INSERT INTO pruefen (matrnr, vorlnr, persnr, note) VALUES (28106, 5001, 2126, 1.0);
INSERT INTO pruefen (matrnr, vorlnr, persnr, note) VALUES (25403, 5041, 2125, 2.0);
INSERT INTO pruefen (matrnr, vorlnr, persnr, note) VALUES (27550, 4630, 2137, 2.0);
INSERT INTO pruefen (matrnr, vorlnr, persnr, note) VALUES (27550, 4630, 2137, 3.0);
INSERT INTO pruefen (matrnr, vorlnr, persnr, note) VALUES (27550, 4630, 2137, 3.0);

INSERT INTO studenten (matrnr, name, semester) VALUES (24002, 'Xenokrates', 18);
INSERT INTO studenten (matrnr, name, semester) VALUES (25403, 'Jonas', 12);
INSERT INTO studenten (matrnr, name, semester) VALUES (26120, 'Fichte', 10);
INSERT INTO studenten (matrnr, name, semester) VALUES (26830, 'Aristoxenos', 8);
INSERT INTO studenten (matrnr, name, semester) VALUES (27550, 'Schopenhauer', 6);
INSERT INTO studenten (matrnr, name, semester) VALUES (28106, 'Carnap', 3);
INSERT INTO studenten (matrnr, name, semester) VALUES (29120, 'Theophrastos', 2);
INSERT INTO studenten (matrnr, name, semester) VALUES (29555, 'Feuerbach', 2);

INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (4052, 'Logik', 4, 2125);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (4630, 'Die 3 Kritiken', 4, 2137);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5001, 'Grundzuege', 4, 2137);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5022, 'Glaube und Wissen', 2, 2134);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5041, 'Ethik', 4, 2125);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5043, 'Erkenntnistheorie', 3, 2126);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5049, 'Maeeutik', 2, 2125);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5052, 'Wissenschaftstheorie', 3, 2126);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5216, 'Bioethik', 2, 2126);
INSERT INTO vorlesungen (vorlnr, titel, sws, gelesenvon) VALUES (5259, 'Der Wiener Kreis', 2, 2133);

INSERT INTO hoeren (matrnr, vorlnr) VALUES (26120, 5001);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (27550, 5001);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (27550, 4052);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (28106, 5041);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (28106, 5052);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (28106, 5216);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (28106, 5259);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (29120, 5001);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (29120, 5041);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (29120, 5049);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (29555, 5022);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (25403, 5022);
INSERT INTO hoeren (matrnr, vorlnr) VALUES (29555, 5001);

INSERT INTO voraussetzen (vorgaenger, nachfolger) VALUES (5001, 5041);
INSERT INTO voraussetzen (vorgaenger, nachfolger) VALUES (5001, 5043);
INSERT INTO voraussetzen (vorgaenger, nachfolger) VALUES (5001, 5049);
INSERT INTO voraussetzen (vorgaenger, nachfolger) VALUES (5041, 5216);
INSERT INTO voraussetzen (vorgaenger, nachfolger) VALUES (5043, 5052);
INSERT INTO voraussetzen (vorgaenger, nachfolger) VALUES (5041, 5052);
INSERT INTO voraussetzen (vorgaenger, nachfolger) VALUES (5052, 5259);
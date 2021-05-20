create table if not exists professoren
(
    persnr int                     not null
        primary key,
    name   varchar(30)             not null,
    rang   enum ('C2', 'C3', 'C4') not null,
    raum   int                     null
);

create table if not exists assistenten
(
    persnr     int         not null
        primary key,
    name       varchar(30) not null,
    fachgebiet varchar(30) null,
    boss       int         null,
    constraint fk_assistenten_boss
        foreign key (boss) references professoren (persnr)
);

create table if not exists pruefen
(
    matrnr int           not null,
    vorlnr int           not null,
    persnr int           null,
    note   decimal(2, 1) null
);

create table if not exists studenten
(
    matrnr   int         not null
        primary key,
    name     varchar(30) not null,
    semester int         null
);

create table if not exists vorlesungen
(
    vorlnr     int         not null
        primary key,
    titel      varchar(30) null,
    sws        int         null,
    gelesenvon int         null,
    constraint fk_vorlesungen_professoren
        foreign key (gelesenvon) references professoren (persnr)
);

create table if not exists hoeren
(
    matrnr int null,
    vorlnr int null,
    constraint fk_hoeren_studenten
        foreign key (matrnr) references studenten (matrnr)
            on update cascade on delete cascade,
    constraint fk_hoeren_vorlesungen
        foreign key (vorlnr) references vorlesungen (vorlnr)
            on update cascade on delete cascade
);

create table if not exists voraussetzen
(
    vorgaenger int null,
    nachfolger int null,
    constraint fk_vorraussetzen_nachfolger
        foreign key (nachfolger) references vorlesungen (vorlnr)
            on update cascade on delete cascade,
    constraint fk_vorraussetzen_vorgaenger
        foreign key (vorgaenger) references vorlesungen (vorlnr)
            on update cascade on delete cascade
);


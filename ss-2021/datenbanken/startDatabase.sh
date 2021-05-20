#!/usr/bin/env bash

if ! command -v docker &> /dev/null
then
    echo -e "\e[31mBitte installiere \e[34mDocker \e[31mund \e[34mDocker-Compose \e[31mum die Datenbank zu starten!"
    echo
    echo -e "\e[37m(Oder benutze meine öffentlich bereitgestellte Datenbank)\e[39m"
    exit 1
fi

if ! command -v docker-compose &> /dev/null
then
    echo -e "\e[31mBitte installiere \e[34mDocker-Compose \e[31mum die Datenbank zu starten!"
    echo
    echo -e "\e[37m(Oder benutze meine öffentlich bereitgestellte Datenbank)\e[39m"
    exit 1
fi

cd ./uebungs-datenbank

echo -e "\e[34mDie Übungs Datenbank wird gestartet/neugestartet...\e[39m"

docker-compose down --volumes

docker-compose up -d

echo -e "\e[32mDie Übungs Datenbank wurde gestartet, es könnte allerdings noch kurz dauern, bis diese verfügbar ist."
echo
echo -e "\e[39m(Mit dem Kommando \e[33mdocker ps \e[39mkann der Status des Docker Containers überprüft werden)\e[39m"
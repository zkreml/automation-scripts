#!/bin/bash

# Nastavení jména hlavní větve, kterou chceš aktualizovat
MAIN_BRANCH="main"

# Přidání upstream repozitáře, pokud ještě není nastaven
git remote add upstream https://github.com/cheeaun/phanpy.git 2>/dev/null

# Stáhnutí změn z upstream repozitáře
git fetch upstream

# Přepnutí na hlavní větev
git checkout $MAIN_BRANCH

# Sloučení změn z upstream hlavní větve do tvé hlavní větve
git merge upstream/$MAIN_BRANCH

# Push změn zpět do tvého GitHub repozitáře
git push origin $MAIN_BRANCH

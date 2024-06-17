#!/bin/bash

# Název archivu
ARCHIVE_NAME="phanpy-cz"

# Vytvoření seznamu souborů k vyloučení
echo "README.md" > .exclude
echo "LICENSE" >> .exclude
echo "create_release.sh" >> .exclude

# Vytvoření .tar.gz archivu
tar --exclude-from=.exclude -czvf $ARCHIVE_NAME.tar.gz .

# Vytvoření .zip archivu
zip -r $ARCHIVE_NAME.zip . -x@.exclude

# Přesun archivu do adresáře releases (pokud neexistuje, vytvoří ho)
mkdir -p ~/stažené
mv $ARCHIVE_NAME.tar.gz ~/Stažené/
mv $ARCHIVE_NAME.zip ~/Stažené/

# Odstranění dočasného souboru .exclude
rm .exclude

echo "Archivy byly vytvořeny a přesunuty do adresáře ~/stažené:"
echo "~/stažené/$ARCHIVE_NAME.tar.gz"
echo "~/stažené/$ARCHIVE_NAME.zip"

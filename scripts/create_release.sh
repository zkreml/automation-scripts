#!/bin/bash

# Název archivu
ARCHIVE_NAME="phanpy-cz"

# Vytvoření seznamu souborů k vyloučení
echo "README.md" > .exclude
echo "LICENSE" >> .exclude
echo "create_release.sh" >> .exclude
echo ".git" >> .exclude
echo "$ARCHIVE_NAME.tar.gz" >> .exclude
echo "$ARCHIVE_NAME.zip" >> .exclude

# Vytvoření .tar.gz archivu
tar --exclude-from=.exclude -czvf $ARCHIVE_NAME.tar.gz .

# Vytvoření .zip archivu
zip -r $ARCHIVE_NAME.zip . -x@.exclude

# Přesun archivu do adresáře Stažené (pokud neexistuje, vytvoří ho)
mkdir -p ~/Stažené
mv $ARCHIVE_NAME.tar.gz ~/Stažené/
mv $ARCHIVE_NAME.zip ~/Stažené/

# Odstranění dočasného souboru .exclude
rm .exclude

echo "Archivy byly vytvořeny a přesunuty do adresáře ~/Stažené:"
echo "~/Stažené/$ARCHIVE_NAME.tar.gz"
echo "~/Stažené/$ARCHIVE_NAME.zip"


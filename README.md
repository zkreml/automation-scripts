# Automatizační skripty

Tento repozitář obsahuje různé automatizační skripty, které slouží ke zjednodušení a automatizaci úloh v rámci našich projektů.

## Skripty

### sync_gitea_to_github.sh

Skript `sync_gitea_to_github.sh` je určen pro synchronizaci změn z repozitáře na Gitea do repozitáře na GitHub. Tento skript zajistí, že veškeré změny provedené v repozitáři na Gitea budou automaticky přeneseny do odpovídajícího repozitáře na GitHubu.

#### Nastavení a použití

1. **Upravte následující proměnné ve skriptu `sync_gitea_to_github.sh` podle svých potřeb:**
- `GITHUB_REPO` - URL GitHub repozitáře.
- `GITEA_REPO` - URL Gitea repozitáře.
- `REPO_DIR` - Cesta k lokálnímu klonu repozitáře.
- `LOG_FILE` - Cesta k log souboru (`/path/to/your/logs/sync_gitea_to_github.log`).

### create_release.sh

Skript `create_release.sh` je určen pro vytváření archívů projektu a jejich přesun do specifikovaného adresáře. Tento skript vytvoří archivy ve formátech `.tar.gz` a `.zip`, vyloučí specifikované soubory a přesune archivy do adresáře `~/stažené`.

#### Použití

1. **Upravte název archivu ve skriptu `create_release.sh` podle svých potřeb:**

```bash
ARCHIVE_NAME="phanpy-cz"
```

2. **Spusťte skript `create_release.sh`:**

```bash
./create_release.sh
```

3. **Výstup skriptu:**

 Skript vytvoří archivy ve formátech `.tar.gz` a `.zip`, které budou přesunuty do adresáře `~/stažené`.

```bash
~/stažené/phanpy-cz.tar.gz
~/stažené/phanpy-cz.zip
```
### update_system.sh

Skript `update_system.sh` je určen pro pravidelnou aktualizaci systémových balíčků. Tento skript aktualizuje balíčky a ukládá výsledky do log souboru.

#### Použití

1. **Spusťte skript `update_system.sh`:**

    ```bash
    ./update_system.sh
    ```

2. **Nastavení Cron Jobu pro automatické aktualizace:**

    ```bash
    crontab -e
    ```

    Přidejte nový cron job, který bude spouštět skript každý den ve 3 hodiny ráno:

    ```bash
    0 3 * * * /path/to/your/scripts/update_system.sh
    ```
    ### clean_logs.sh

Skript `clean_logs.sh` je určen pro pravidelné čištění log souborů starších než zadaný počet dní. Tento skript vymaže všechny log soubory ve specifikovaném adresáři, které jsou starší než zadaný počet dní.

#### Použití

1. **Upravte následující proměnné ve skriptu `clean_logs.sh` podle svých potřeb:**
 - `LOG_DIR` - Cesta k adresáři s log soubory.
 - `LOG_FILE` - Cesta k log souboru (`/path/to/your/logs/clean_logs.log`).
 - `DAYS_TO_KEEP` - Počet dní, po které budou log soubory uchovávány.

2. **Spusťte skript `clean_logs.sh`:**

    ```bash
    ./clean_logs.sh
    ```

3. **Nastavení Cron Jobu pro automatické čištění:**

    Otevřete crontab pro úpravy:

    ```bash
    crontab -e
    ```

    Přidejte nový cron job, který bude spouštět skript první den v měsíci ve 2 hodiny ráno:

    ```bash
    0 2 1 * * /path/to/your/scripts/clean_logs.sh
    ```

## Logy

Logy ze skriptů jsou ukládány do souboru `/path/to/your/logs/nazev_skriptu.log`.

## Spouštění skriptů

Spouštějte skripty přímo ve složce, kde máte nastaveny všechny cesty:

```bash
/path/to/your/script.sh
```

## Nastavení Cron Jobu

1. Pro automatické spouštění skriptů můžete nastavit cron job:

    Otevřete crontab pro úpravy:
```bash
    crontab -e
```

2. Přidejte nový cron job, který bude spouštět skript podle potřeby. Například, pro spouštění skriptu každou hodinu:

```bash
0 * * * * /path/to/your/script.sh
```
### Budoucí rozšíření

Tento repozitář bude v budoucnu rozšiřován o další automatizační skripty, které budou přidány podle potřeb projektu.

## Kontakt

Pro další informace nebo podporu kontaktujte správce projektu.


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
### backup_script.sh

Skript `backup_script.sh` je určen pro zálohování důležitých dat z uživatelského domovského adresáře pomocí `rsync` a `BorgBackup`. Tento skript kombinuje robustnost BorgBackup pro efektivní a bezpečné archivování s datovou deduplikací a rychlost `rsync` pro synchronizaci souborů.

#### Nastavení a použití

1. **Upravte následující proměnné ve skriptu `backup_script.sh` podle svých potřeb:**
  - `EXTERNAL_DRIVE` - Cesta k externímu disku.
  - `MOUNT_POINT` - Bod připojení pro externí disk.
  - `BACKUP_DIR` - Cesta k adresáři pro ukládání záloh na připojeném disku.
  - `BORG_SCRIPT` - Cesta k skriptu BorgBackup, který spravuje zálohy Borg.

2. **Spusťte skript `backup_script.sh`:**

   ```bash
   ./backup_script.sh
   ```
   

### check_backups.sh

Skript `check_backups.sh` slouží k manuální kontrole záloh pomocí nástrojů BorgBackup a Rsync. Umožňuje rychle ověřit, zda byly zálohy úspěšně provedeny a zda počet souborů a složek v zdrojovém a cílovém adresáři odpovídá očekáváním.

#### Použití

1. Spuštění skriptu:
   ```bash
   ./check_backups.sh
  ```
 ### update_fork.sh

Skript `update_fork.sh` slouží k aktualizaci vašeho forku repozitáře Phanpy s nejnovějšími změnami z originálního repozitáře. Tento proces zahrnuje přidání upstream repozitáře (pokud ještě není nastaven), stahování změn z tohoto repozitáře, sloučení těchto změn do vaší hlavní větve a následný push změn zpět do vašeho repozitáře na GitHubu.

#### Použití

1. Uložte skript do souboru, například `update_fork.sh`.
2. Nastavte oprávnění k spuštění pomocí příkazu:

 ```bash
   chmod +x update_fork.sh
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
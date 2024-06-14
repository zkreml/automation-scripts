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


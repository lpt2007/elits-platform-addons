# PostgreSQL System Addon

PostgreSQL 15 relacijska baza podatkov za Elits Platform.

## Opis

PostgreSQL je **sistemski addon** ki zagotavlja centralizirano relacijsko bazo za vse Elits Platform addon-e.

## Uporaba

### AiStoragE
- Shema: `aistorage`
- Uporabnik: `aistorage`
- Tabele: categories, subcategories, components, images, compatibility, search_tags

## Konfiguracija

- **Port:** 5432
- **Network:** elits-net
- **IP:** 31.3.77.31
- **Data:** /data/addons-data/postgresql/

## Povezava

```bash
# Iz kontejnerja
psql -h 31.3.77.31 -U aistorage -d elits_platform

# Iz hosta
psql -h localhost -p 5432 -U aistorage -d elits_platform
```

## Verzija

1.0.0 (Initial release)

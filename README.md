# Elits Platform Addons

Repozitorij za vse Elits Platform addone.

## 📁 Struktura

### `system/` - Sistemski addon-i
Addoni ki jih Elits Platform potrebuje za delovanje:

- **hermes-ai/** - AI agent z vision capabilities
- **minio/** - Object storage (S3 compatible)
- **milvus/** - Vector database za AI
- **etcd/** - Key-value store za Milvus metadata
- **llama-inference/** - AI model inference

### `apps/` - Aplikacije (nesistemski addon-i)
Neodvisne aplikacije ki niso potrebne za delovanje Elits Platform:

- **aistorage/** - AI-powered electronic components storage (v razvoju)

## 🔄 Delovni proces

1. Vsak addon ima svojo mapo z:
   - `config.json` - konfiguracija za Elits Supervisor
   - `Dockerfile` - docker build
   - `requirements.txt` - Python dependencies (če je Python)
   - `README.md` - opis addon-a

2. Verzioniranje:
   - Vsaka sprememba poveča verzijo za 0.01
   - Verzija se beleži v `config.json`

3. Commit sporočila:
   - `feat(addon-name):` - nova funkcionalnost
   - `fix(addon-name):` - popravek napake
   - `docs(addon-name):` - dokumentacija

## 🔗 Povezave

- **GitHub:** https://github.com/lpt2007/elits-platform-addons
- **Glavni repo:** https://github.com/lpt2007/elits-platform
- **STRUCTURE.md:** https://github.com/lpt2007/elits-platform/blob/main/STRUCTURE.md

## 📝 Opombe

- Sistemski addon-i so v `system/` mapi
- Nesistemski addon-i so v `apps/` mapi
- Vsi addon-i morajo biti modularni in razširljivi

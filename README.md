# n8n Automation Brain on Railway

This repository contains the configuration to deploy [n8n](https://n8n.io) on Railway, connected to a Supabase PostgreSQL database.

## 1. Prerequisites

You need your **Supabase Connection Details**.
1. Log in to [Supabase Dashboard](https://supabase.com/dashboard).
2. Go to `Project Settings` > `Database`.
3. Under **Connection parameters**, find:
   - Host
   - User
   - Port (Use 6543 for Transaction Pooler if detailed, otherwise 5432)
   - Database Name

## 2. Setup on Railway

1. **New Project**: In Railway, create a new project from this GitHub Repo.
2. **Variables**: Add the following variables (copy values from your `.env.example` where applicable):

   | Variable | Value / Description |
   |Data|---|
   | `N8N_BASIC_AUTH_USER` | Admin username |
   | `N8N_BASIC_AUTH_PASSWORD` | Admin password |
   | `N8N_ENCRYPTION_KEY` | Generate a random string (e.g. `openssl rand -hex 24`) |
   | `DB_TYPE` | `postgresdb` |
   | `DB_POSTGRESDB_HOST` | Supabase Host |
   | `DB_POSTGRESDB_PORT` | Supabase Port (6543) |
   | `DB_POSTGRESDB_DATABASE` | `postgres` |
   | `DB_POSTGRESDB_USER` | Supabase User |
   | `DB_POSTGRESDB_PASSWORD` | Your Supabase DB Password |

3. **Deploy**: Railway will detect the `docker-compose.yml` and deploy n8n.

## 3. Post-Deployment

- Access your n8n instance at the domain provided by Railway (e.g., `https://n8n-production.up.railway.app`).
- Log in with the credentials you set.

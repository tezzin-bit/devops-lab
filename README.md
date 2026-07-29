# DevOps Lab

Laboratório de estudos práticos de DevOps e Cloud.

## Objetivo

Registrar minha evolução estudando Linux, Git, Docker, Kubernetes, Cloud e ferramentas de DevOps.

## Conteúdo atual

- Scripts Bash
- Automação para criar estrutura de projetos
- Resumos de estudo
- Prática com Git e GitHub

## Comandos praticados

- pwd
- ls
- cd
- mkdir
- touch
- cat
- chmod
- git init
- git add
- git commit
- git status
- git diff
- git branch
- git switch
- git merge
- git push 

## Scripts disponíveis

### monitor-disco.sh

Verifica o uso da partição raiz (`/`) e retorna alerta caso o uso esteja acima do limite configurado.


Uso padrão:

```bash
./monitor-disco.sh
```

Uso com limite personalizado:

```bash
./monitor-disco.sh 70
```

Exemplo de saída:

```text
Uso atual do disco: 1%
Limite configurado: 80%
OK: uso do disco dentro do limite.
```
### backup.sh

Cria um backup compactado `.tar.gz` de uma pasta informada.

Uso padrão:

```bash
./scripts/backup.sh linux
```

Uso com pasta de destino personalizada:

```bash
./scripts/backup.sh linux meus-backups
```

Exemplo de saída:

```text
Backup criado com sucesso:
backups/linux-2026-07-29_04-54-29.tar.gz
```

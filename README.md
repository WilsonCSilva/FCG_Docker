# HACKATON - Fase 5 - AgroSolutions

# Vídeo de apresentação
Link [Google Drive](https://drive.google.com/file/d/1obK1rZlVQMg1Ae3IBzCLjT1LOipDIqRj/view?usp=sharing).

# Diagrama da arquitetura da solução
Link [Miro](https://miro.com/app/board/uXjVG85GX0s=/?share_link_id=873000372835)

# API
> Utilizamos na fase 2 a mesma API apresentada na Fase 1. 

A imagem Docker foi armazenada no repositório Dockerhub rodando em Linux na distribuição Ubuntu e banco de dados SQL 2022 e monitoramento integrado com New Relic.

# PipeLines
A aplicação será atualiza pela Azure Cloud.

## CI
```
pr:
  branches:
    include:
      - '*'
```
pool:
  vmImage: "windows-latest"
 
 Dockerfile
## Estrutura de estágios (Multi-stage Build)
O Dockerfile utiliza uma abordagem de build em múltiplos estágios. O primeiro estágio, chamado build, é responsável por compilar e publicar a aplicação. O segundo estágio, chamado final, é usado para rodar a aplicação em ambiente de produção com apenas os arquivos essenciais.

## Imagem base do build
No estágio build, é utilizada a imagem mcr.microsoft.com/dotnet/sdk:8.0, que contém o SDK do .NET 8. Essa imagem oferece todas as ferramentas necessárias para compilar e publicar a aplicação.

## Restauração e publicação da aplicação
Primeiramente, o arquivo .csproj é copiado e as dependências são restauradas automaticamente. Em seguida, todo o código-fonte é copiado e a aplicação é publicada no modo Release, com os artefatos finais sendo salvos em /app/publish.


```
# Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app



volumes:
  sqlvolume:
```

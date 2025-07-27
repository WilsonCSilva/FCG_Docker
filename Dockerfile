# Etapa 1: build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copia o csproj e restaura dependências
COPY *.csproj ./

# Copia todo o restante e publica em modo Release
COPY . ./
RUN dotnet publish -c Release -o /app/publish

# Etapa 2: runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app

# Copia os arquivos publicados da etapa anterior
COPY --from=build /app/publish .

# Porta exposta (ajuste se necessário)
EXPOSE 80

# Executa a aplicação
ENTRYPOINT ["dotnet", "FCG.dll"]

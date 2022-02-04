FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env
WORKDIR /app

COPY *.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
WORKDIR /app
EXPOSE 80
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "DockerAPI.dll"]

# # dotnet windows example
# dotnet new webapi -n DockerAPI

# docker build -t binaythistle/dockerapi .
# docker run -p 80:80 binaythistle/dockerapi

# [IP]/api/values
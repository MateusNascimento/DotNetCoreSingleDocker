FROM microsoft/dotnet:2.2-aspnetcore-runtime-alpine AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.2-sdk-alpine AS build
WORKDIR /src
COPY ["DotNetCoreSingleDocker.csproj", "./"]
RUN dotnet restore "./DotNetCoreSingleDocker.csproj"
COPY . .
WORKDIR /src/.
RUN dotnet build "DotNetCoreSingleDocker.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "DotNetCoreSingleDocker.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "DotNetCoreSingleDocker.dll"]

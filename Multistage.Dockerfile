FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /app

COPY . .

RUN dotnet restore src/Answer.King.Api/Answer.King.Api.csproj

RUN dotnet publish src/Answer.King.Api/Answer.King.Api.csproj -c Release -o /app/out


FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base

WORKDIR /app

COPY --from=build /app/out /app

CMD [ "dotnet", "Answer.King.Api.dll"]
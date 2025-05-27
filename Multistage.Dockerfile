FROM mcr.microsoft.com/dotnet/runtime:7.0 AS build

WORKDIR /app

COPY . .

RUN dotnet restore src/Answer.King.Api/Answer.King.Api.csproj

RUN dotnet publish src/Answer.King.Api/Answer.King.Api.csproj -c Release -o /app/out

FROM mcr.microsoft.com/dotnet/runtime:7.0 AS base

COPY --from=build /publish /app

WORKDIR /app

CMD [ "dotnet", "out/Answer.King.Api.dll"]
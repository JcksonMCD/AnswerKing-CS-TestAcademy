FROM mcr.microsoft.com/dotnet/sdk:7.0.102

WORKDIR /app

COPY . .

RUN dotnet build

RUN dotnet publish

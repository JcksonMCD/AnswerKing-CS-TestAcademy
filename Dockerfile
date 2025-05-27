FROM mcr.microsoft.com/dotnet/sdk:7.0.102
WORKDIR /app

COPY . .

RUN dotnet restore

RUN dotnet publish

EXPOSE 8080
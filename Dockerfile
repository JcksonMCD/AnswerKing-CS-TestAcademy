FROM mcr.microsoft.com/dotnet/sdk:7.0.102

WORKDIR /app

COPY . .

RUN dotnet restore

RUN dotnet publish src/Answer.King.Api/Answer.King.Api.csproj -c Release -o out

ENTRYPOINT ["dotnet", "Answer.King.Api.dll"]
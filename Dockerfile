FROM mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR /app

COPY . .

RUN dotnet restore src/Answer.King.Api/Answer.King.Api.csproj

RUN dotnet publish src/Answer.King.Api/Answer.King.Api.csproj -c Release -o /app/out

CMD [ "dotnet", "/app/app/out/Answer.King.Api.dll" ]
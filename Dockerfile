FROM mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR /app

COPY . .

RUN dotnet restore ./Answer.King.Api/Answer.King.Api.csproj

RUN dotnet publish ./Answer.King.Api/Answer.King.Api.csproj -c Release -o /app/out

CMD [ "dotnet", "out/Answer.King.Api.dll" ]
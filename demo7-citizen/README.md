# Demo 7 Citizen
W sieci znajdziemy także dużo projektów open source, które zapewnią nam większą elastyczność

## Krok 1
Wyślijmy do prywatnego registry (citizen) wersję modułu bez cors
```bash
docker run -e CITIZEN_ADDR=https://citizen-registry.gubrynowicz.com -e CITIZEN_DATABASE_TYPE=sqlite -v .:/citizen ghcr.io/outsideris/citizen:latest citizen module wdi s3-website aws 1.0.0
```

## Krok 2
Zainicjujmy providera i potencjalne moduły, zwróćmy uwagę, że w zależności od version constraint, pobieramy odpowiedni moduł:
```
terraform init
```

## Krok 3
Przekazujemy przepis dostawcy clouda
```
terraform apply
```

## Krok 4
Zaktualizujmy moduł o wersję cors, wydajmy minor release (1.1.0)
```bash
docker run -e CITIZEN_ADDR=https://citizen-registry.gubrynowicz.com -e CITIZEN_DATABASE_TYPE=sqlite -v .:/citizen ghcr.io/outsideris/citizen:latest citizen module wdi s3-website aws 1.1.0
```

## Krok 5
Zaktualizujmy cache .terraform, zerknijmy na nowe werje
```
terraform init -upgrade
```

## Krok 6
Przekazujemy przepis dostawcy clouda, jeden bucket z CORS, drugi bez
```
terraform apply
```
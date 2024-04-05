# Demo 2 Copy Paste
Strategia copy-paste nie zawsze się sprawdza - wymaga czasem aktualizacji bardzo wielu plików

## Krok 1
Przeklejmy [cors.tf](./cors.tf) do modułów

## Krok 2
Zainicjujmy providera i potencjalne moduły:
```
terraform init
```
## Krok 3
Przekazujemy przepis dostawcy clouda
```
terraform apply
```

## Podsumowanie
Z sukcesem zmodyfikowaliśmy obydwie aplikacje o konfigurację CORS, jednak w praktce takich aplikacji w organizacjach może być o wiele więcej i nie będą one ze sobą w pełni kompatbilne
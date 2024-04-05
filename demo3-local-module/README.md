# Demo 3 Local Modules
Powtarzające elementy się infrastruktury, które muszą mieć wspólną konfigurację można zapakować w moduł i centralnie zarządzać zmianami w wielu projektach na raz

## Krok 1
Zainicjujmy providera i potencjalne moduły:
```
terraform init
```

## Krok 2
Przekazujemy przepis dostawcy clouda
```
terraform apply
```

## Krok 3
Zmodyfikujmy moduł [terraform-aws-wdi2024](../../terraform-aws-wdi2024/cors.tf) by wspierał implementację CORS (odkomentujmy cors.tf)
```
terraform apply
```

# Krok 4
Uruchamiamy apply na obydwu projektach, obserwujemy zmiany
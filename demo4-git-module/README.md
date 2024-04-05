# Demo 4 Git Modules
Repozytorium git jest świetnym miejscem do trzmania i wersjonowania naszego kodu, z terraformem i jego modułami włącznie. Częstą praktyką jest tworzenie scentralizowanego repozytorium, w którym przechowujemy wszystkie moduły organizacji.

## Krok 1
Zainicjujmy providera i potencjalne moduły - terraform zawsze klonuje całe repozytorium:
```
terraform init
```

## Krok 2
Przekazujemy przepis dostawcy clouda
```
terraform apply
```

## Krok 3
Wypchnijmy zmiany do repo [terraform-aws-wdi2024](../../terraform-aws-wdi2024/cors.tf) by moduł wspierał implementację CORS
```
git push origin main
```

## Krok 4
Pozwólmy terraformowi na aktualizację modułu
```
terraform init -upgrade
```

## Krok 5 
Przekazujemy zaktualizowany dostawcy clouda
```
terraform apply
```
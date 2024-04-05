# Demo 6 Git Modules
Natywny terraform cloud pozwala na tworzenie prywatnych, pełnoprawnych private registries, które wspierają version constraint

## Krok 1
Zainicjujmy providera i potencjalne moduły, zwróćmy uwagę, że w zależności od version constraint, pobieramy odpowiedni moduł:
```
terraform init
```

## Krok 2
Przekazujemy przepis dostawcy clouda, jeden bucket z CORS, drugi bez
```
terraform apply
```
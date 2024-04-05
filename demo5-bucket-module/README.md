# Demo 5 S3 Modules
Alternatywnie do repozytoriów git możemy przechowywać moduły w s3, dzięki temu będzie pobierany tylko konkretny zip zamiast całego repo. Upload może zostać skonfigurowany w ci/cd

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
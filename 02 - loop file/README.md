# Bash Training - Loop File

Utilização de loop while para leitura conteúdo de um arquivo.

```bash
#!/bin/bash

while IFS= read -r line
do
    echo "$line"
done <example.txt
```


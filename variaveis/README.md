# Bash Training - Variáveis

### Declarando Variáveis

```MyFirstName=Vitor```

 - O nome pode conter letras [a-Z], números [0-9] e underscores [_]

### Acessando Variáveis

Após declaradas, pode ser acessada usando o cifrão ```$``` seguido do nome da variável, por exemplo ```$MyFirstName```.

```bash
#!/bin/bash

# Declarando
idade=28

# Acessando
echo $idade

idade=30

echo $idade
```

Saída:
```
28
30
```

### Somente Leitura (readonly)

A palavra reservada ```readonly``` ajuda definir uma variável que não pode ser atualizada posteriormente.

```bash
# Declarando como somente leitura
readonly idade=32

# Acessando
echo $idade

# Tentando atualizar
idade=34
```
Saída:
```
idade: readonly variable
```

### Limpando Variável

A palavra reservada ```unset``` ajuda na remoção do valor de uma variável.

```bash
nome="Vitor Aguiar"
echo "Meu nome é: " $nome

# Limpando o valor de uma variável
unset nome

echo "Agora, meu nome é: " $nome
```

Saída:
```
Meu nome é:  Vitor Aguiar
Agora, meu nome é: 
```

### Escopo de Variáveis

Todas as variáveis estão contidas num escopo que determinam onde elas pode ser acessadas.

Em Bash temos o escopo GLOBAL e LOCAL.

**Escopo Global** - Declarada no script, fora de uma função, pode ser acessada em todo script, inclusive no escopo de funções declaradas no script.

```bash
#!/bin/bash

greeting() {
    echo "Olá $MyName!"
}

MyName="Vitor Aguiar"

greeting

```
Saída:
```
Olá Vitor Aguiar!
```

**Escopo Local** - Declarada dentro de uma função, com a ajuda da palavra reservada ```local```, pode ser acessada somente no escopo da função.


```bash
#!/bin/bash

hello() {
    local message="Olá $OtherName!"
    echo "Dentro da função, escopo Local"
    echo "OtherName:" $OtherName
    echo "message: " $message
}

OtherName="Vitor Aguiar"

hello

echo "Fora da função, escopo Global"
echo "OtherName:" $OtherName
echo "message: " $message
```
Saída:
```
Dentro da função, escopo Local
OtherName: Vitor Aguiar
message:  Olá Vitor Aguiar!
Fora da função, escopo Global
OtherName: Vitor Aguiar
message:
```

### Tipos de Variáveis

Bash script não é uma linguagem tipada, mas é possível declarar variáveis com tipos de dados usando a palavra reservada ```declare``` e uma flag indicando o tipo conforme a tabela seguinte.

| Tipo          | Sintaxe               | Descrição                                                         |
|---            |---                    |---                                                                |
| Array         | declare -a varname    | Array indexado                                                    |
| Matriz        | declare -A varname    | Matriz ou array associativo                                       |
| Inteiro       | declare -i varname    | Valores numéricos inteiros                                        |
| Readonly      | declare -r varname    | Mesmo que declarar com ```readonly```                             |
| Export        | declare -x varname    | Exporta a variável para ser usada por todos os processos filhos   |

Os comandos ```printenv``` e ```env``` podem ser usados para imprimir uma lista com todas as variáveis disponiveis no ambiente.

### Convenção de Nomenclatura de Variáveis

 - Para acessar, deve se usar o cifrão ```$``` prefixando o nome da variável.
 - Pode ser composto por letras, números e underscores(sublinhados).
 - São case-sensitive, portanto ```teste``` é diferente de ```Teste```.
 - Não podem conter espaços.
 - Recomenda-se o padrão **camelCase**

 ### Variáveis de Shell

 São variáveis definidas pelo Shell e fundamentais para o seu funcionamento.

| Nome          | Descrição                                 |
|---            |---                                        |
| PWD           | Diretório de trabalho atual               |
| PATH          | Diretórios de comandos                    |
| UID           | Número de identificação do usuário        |
| HOME          | Diretório home do usuário atual           |
| SHELL         | Caminho do interpretador de comandos      |

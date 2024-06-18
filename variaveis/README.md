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
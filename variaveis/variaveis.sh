#!/bin/bash

# Author: Vitor Aguiar
# License: MIT

# Declarando
idade=28

# Acessando
echo $idade

# Atualizando
idade=30

# Acessando novamente
echo $idade

# Declarando como somente leitura
readonly idade=32

echo $idade

# Tentando atualizar a saída é
# idade: readonly variable
# idade=34 # Falha comentada

nome="Vitor Aguiar"

echo "Meu nome é: " $nome

# Limpando o valor de uma variável
unset nome

echo "Agora, meu nome é: " $nome

greeting() {
    echo "Olá $MyName!"
}

MyName="Vitor Aguiar"

greeting

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
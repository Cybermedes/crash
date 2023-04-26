#!/usr/bin/env bash
#Script que cria e imprime uma barra de progresso no console
# Caracter da barra de progresso
bar_char="#"

# Tamanho da barra de progresso em número de caracteres dentro do []
bar_width=50

# Número total de iterações
total_iterations=100

# Número de iterações por caracter, ex: um # representa % do progresso
iterations_per_char=$(($total_iterations / $bar_width))

for ((i=0; i<=$total_iterations; i++))
do
# Número para contar o progresso da barra em x%
  progress=$((($i * 100 / $total_iterations)))
# Calcula o número de caracteres para imprimir
  chars=$(($i / $iterations_per_char))

# Imprimir barra de progresso na mesma linha
  echo -ne "\r["
  for ((j=0; j<$bar_width; j++)); do
    if [ $j -lt $chars ]; then
      echo -ne "$bar_char"
    else
      echo -ne " "
    fi
  done
  echo -ne "] $progress%"
  sleep 0.1
done
echo ""

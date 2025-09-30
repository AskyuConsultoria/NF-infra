#!/bin/bash

# DNS do seu ALB
ALB_DNS="askyu-syntro-alb-147276781.us-east-1.elb.amazonaws.com"

# Número de requisições para testar round-robin
TRIES=20

# Contador associativo
declare -A COUNTER

echo "Testando Load Balancer em $ALB_DNS ..."

for i in $(seq 1 $TRIES); do
    RESPONSE=$(curl -s http://$ALB_DNS)
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

    # Incrementa contador
    COUNTER["$RESPONSE"]=$(( ${COUNTER["$RESPONSE"]} + 1 ))

    echo "[$TIMESTAMP] Tentativa $i: Resposta -> $RESPONSE"

    sleep 1
done

echo -e "\n=== Estatísticas de Resposta ==="
for INSTANCE in "${!COUNTER[@]}"; do
    echo "Instância '$INSTANCE' respondeu ${COUNTER[$INSTANCE]} vezes"
done

#!/bin/bash
TOKEN="8777550389:AAGKjxtDRLGDC1HYcnYh2iVdULS615JTxqU"
CHAT_ID="-5550889055
"

TIPO=$1
HOST=$2
SERVICIO=$3
ESTADO=$4
DETALLE=$5

MENSAJE="⚠️ *ALERTA NAGIOS* ⚠️%0A*Tipo:* $TIPO%0A*Host:* $HOST%0A*Servicio:* $SERVICIO%0A*Estado:* $ESTADO%0A*Detalle:* $DETALLE"

curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$MENSAJE" -d "parse_mode=Markdown"
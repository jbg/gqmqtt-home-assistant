#!/usr/bin/with-contenv bashio

PORT="$(bashio::config 'port')"
BAUD_RATE="$(bashio::config 'baud_rate')"
MODEL="$(bashio::config 'model')"
MQTT_TOPIC="$(bashio::config 'mqtt_topic')"
MQTT_URI="$(bashio::config 'mqtt_uri')"
MQTT_INTERVAL="$(bashio::config 'mqtt_interval')"
MQTT_USERNAME="$(bashio::config 'mqtt_username')"
MQTT_PASSWORD="$(bashio::config 'mqtt_password')"

gqmqtt -s "$PORT" -v -b "$BAUD_RATE" -m "$MODEL" -h "$MQTT_URI" -i "$MQTT_INTERVAL" -u "$MQTT_USERNAME" -p "$MQTT_PASSWORD"


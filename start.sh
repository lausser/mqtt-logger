mosquitto_sub -h $MQTT_LOGGER_MQTT_HOSTNAME -p $MQTT_LOGGER_MQTT_PORT -u $MQTT_LOGGER_MQTT_USERNAME -P $MQTT_LOGGER_MQTT_PASSWORD -F %j -t '+/debug' -t ${MQTT_LOGGER_MQTT_TOPIC:-homeassistant/#} | promtail --stdin --config.expand-env=true --config.file=/mqtt-logger/config.yaml


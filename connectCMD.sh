mosquitto_pub -h mqttbroker.lan -t "final" -m "02" -p 1883 --cafile certificate/final-ca.crt --cert certificate/arslane.crt --key certificate/arslane.key -u minux -P 0407

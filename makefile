F_MAIN=./src/main.c 
F_SERVER=./src/server.c

L_MOSQUITTO=-lmosquitto
L_THREAD=-lpthread

CC=-std=gnu99

COMPILE=gcc $(CC) -I ./include

all: release

release:
	$(COMPILE) $(F_MAIN) $(F_SERVER) $(L_THREAD) $(L_MOSQUITTO) -o build/release

debug:
	$(COMPILE) -g $(F_MAIN) $(F_SERVER) -o build/debug  $(L_MOSQUITTO)
#
# @brief     Python file to listen frames on the serial port
# 
# @author    CAZIN Némo
# @date      2024
# 

import serial
import logging
import os

BAUDRATE = 1200                 # !!! To change for your convenience
SERIALPORT = '/dev/ttyACM0'     # !!! To change for your convenience



#!* Create logs folder if not created
def SetupLogging():
    if not os.path.exists('logs'):
        os.makedirs('logs')
    # Clean log
    with open('logs/frame.log', 'w'):
        pass



#!* Configure logging file
def ConfigureLogging():
    logging.basicConfig(filename='logs/frame.log', level=logging.INFO, format='%(asctime)s - %(message)s')



#!* Open serial port
def OpenSerialPort():
    return serial.Serial(SERIALPORT, BAUDRATE)



#!* Read and save serial print in log
def ReadAndLogSerial(ser):
    while True:
        if ser.in_waiting > 0:
            line = ser.readline().decode('latin-1').strip()
            logging.info(line)



def main():
    SetupLogging()
    ConfigureLogging()
    ser = OpenSerialPort()
    ReadAndLogSerial(ser)



if __name__ == "__main__":
    main()
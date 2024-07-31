# serial-listener

## Table of content

 * [General informations](#general-informations)
 * [Prerequisites](#prerequisites)
 * [Usage](#usage)
 * [logs folder](#logs-folder)
 * [Contact](#contact)

## General informations

This project is a tool for __listening frames on the serial port__. It uses python and some of python libraries.

## Prerequisites

__You need to use the _prerequisites.sh file_ to download all the libraries needed to use this project.__
You can use this script with one of the following two commands:
 - bash prerequisites.sh
 - ./prerequisites.sh

## Usage 

To use the program, __check in the code in the _‘main.py’_ script that the baud rate and port are correct, otherwise change them.__
Then you can use the following command in a terminal to run the script: _python3 main.py_
This script will run continuously until the user intervenes, and all frames passing through the serial port (input or output) will be stored in a _‘frame.log’_ file in the _‘logs’_ directory.

## logs folder

This directory contains logs written after the use of prerequisites.sh and python script.

# Contact 

Created by [@nemocazin]